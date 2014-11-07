package com.iisquare.jees.cms.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iisquare.jees.cms.dao.MemberDao;
import com.iisquare.jees.cms.dao.ArticleDao;
import com.iisquare.jees.cms.dao.ColumnDao;
import com.iisquare.jees.cms.dao.RoleColumnRelDao;
import com.iisquare.jees.cms.dao.RoleDao;
import com.iisquare.jees.cms.domain.Column;
import com.iisquare.jees.cms.domain.RoleColumnRel;
import com.iisquare.jees.framework.model.ServiceBase;
import com.iisquare.jees.framework.util.DPUtil;
import com.iisquare.jees.framework.util.ReflectUtil;
import com.iisquare.jees.framework.util.ServiceUtil;
import com.iisquare.jees.framework.util.SqlUtil;

@Service
public class ColumnService extends ServiceBase {
	
	@Autowired
	public MemberDao memberDao;
	@Autowired
	public ColumnDao columnDao;
	@Autowired
	public ArticleDao articleDao;
	@Autowired
	public RoleColumnRelDao roleColumnRelDao;
	@Autowired
	public RoleDao roleDao;
	
	public Map<String, String> getStatusMap() {
		Map<String, String> map = new LinkedHashMap<String, String>();
		map.put("0", "禁用");
		map.put("1", "正常");
		return map;
	}
	
	public ColumnService() {}
	
	/**
	 * 填充栏目权限
	 * @param roleId 栏目主键值
	 * 		null - 全部角色权限取或运算结果
	 * 		Number - 对应角色的权限记录
	 * @param columnList 栏目记录列表
	 * @return
	 */
	public List<Map<String, Object>> fillRoleColumnRel(Object roleId, List<Map<String, Object>> columnList) {
		Map<Object, List<Map<String, Object>>> indexMap;
		if(null == roleId) {
			indexMap = new HashMap<Object, List<Map<String, Object>>>();
			List<Map<String, Object>> relList = roleColumnRelDao.getList("*", null, null, null, null, 0, 0);
			for (Map<String, Object> map : relList) {
				Object index = map.get("column_id");
				List<Map<String, Object>> subList = indexMap.get(index);
				if(null == subList) {
					subList = new ArrayList<Map<String, Object>>();
					RoleColumnRel info = new RoleColumnRel();
					info.setId(0);
					info.setRoleId(0);
					info.setColumnId(DPUtil.parseInt(index));
					info.setListEnable(0);
					info.setPublishEnable(0);
					subList.add(ReflectUtil.convertEntityToMap(info, true, null));
					indexMap.put(index, subList); // 对象间传址调用
				}
				Map<String, Object> subMap = subList.get(0);
				if(1 == DPUtil.parseInt(map.get("list_enable"))) subMap.put("list_enable", 1);
				if(1 == DPUtil.parseInt(map.get("publish_enable"))) subMap.put("publish_enable", 1);
			}
		} else {
			List<Map<String, Object>> relList = roleColumnRelDao.getList("*",
					new String[]{"role_id"}, new Object[]{roleId}, null, null, 0, 0);
			indexMap = ServiceUtil.indexesMapList(relList, "column_id");
		}
		String primaryKey = columnDao.getPrimaryKey();
		for (Map<String, Object> map : columnList) {
			map.put("role_column_power", DPUtil.getByIndex(indexMap.get(map.get(primaryKey)), 0));
		}
		return columnList;
	}
	
	/**
	 * 获取列表
	 * @param roleIdArray 角色主键值数组
	 * 		null - 获取全部记录
	 * 		not null - 获取对应角色中拥有列表展示权限的记录
	 * @param columns 筛选字段
	 * @param orderBy 排序方式
	 * @param page 当前页数
	 * @param pageSize 分页大小
	 * @return
	 */
	public List<Map<String, Object>> getList(Object[] roleIdArray, String columns, String orderBy, int page, int pageSize) {
		String append = null;
		if(!DPUtil.empty(orderBy)) append = DPUtil.stringConcat(" order by ", orderBy);
		List<Map<String, Object>> list;
		if(null == roleIdArray) {
			list = columnDao.getList(columns, null, new Object[]{}, append, page, pageSize);
		} else {
			String roleIdStr = SqlUtil.buildSafeWhere(",", roleIdArray);
			if(DPUtil.empty(roleIdStr)) {
				list = new ArrayList<Map<String, Object>>(0);
			} else {
				String where = DPUtil.stringConcat(columnDao.getPrimaryKey(),
						" in (select column_id from ", roleColumnRelDao.tableName(),
						" where role_id in (", roleIdStr, ") and list_enable = 1)");
				list = columnDao.getList(columns, where, new Object[]{}, append, page, pageSize);
			}
		}
		list = ServiceUtil.fillFields(list, new String[]{"status"}, new Map<?, ?>[]{getStatusMap()}, null);
		list = ServiceUtil.fillRelations(list, memberDao, new String[]{"create_id", "update_id"}, new String[]{"serial", "name"}, null);
		return list;
	}
	
	/**
	 * 根据角色主键值获取对应的栏目主键值数组
	 * @param roleIdArray 角色主键值
	 * @param withListEnable 获取具备列表显示权限的栏目
	 * @param withPublishEnable 获取具备发布文章权限的栏目
	 * @return
	 */
	public List<Object> getIdArrayByRoleId(Object[] roleIdArray, boolean withListEnable, boolean withPublishEnable) {
		String roleIdStr = SqlUtil.buildSafeWhere(",", roleIdArray);
		if(DPUtil.empty(roleIdStr)) return new ArrayList<Object>(0);
		StringBuilder sb = new StringBuilder("select column_id from ").append(roleColumnRelDao.tableName())
				.append(" where role_id in (").append(roleIdStr).append(")");
		if(withListEnable) sb.append(" and list_enable = 1");
		if(withPublishEnable) sb.append(" and publish_enable = 1");
		List<Map<String, Object>> list = roleColumnRelDao.queryForList(sb.toString());
		return ServiceUtil.getFieldValues(list, "column_id");
	}
	
	public Column getById(Object id) {
		return columnDao.getById(id);
	}
	
	public Map<String, Object> getById(Object id, boolean bFill) {
		Map<String, Object> map = columnDao.getById("*", id);
		if(null != map && bFill) {
			map = ServiceUtil.fillFields(map, new String[]{"status"}, new Map<?, ?>[]{getStatusMap()}, null);
			map = ServiceUtil.fillRelations(map, memberDao, new String[]{"create_id", "update_id"}, new String[]{"serial", "name"}, null);
		}
		return map;
	}
	
	public int insert(Column persist) {
		return columnDao.insert(persist);
	}
	
	public int update(Column persist) {
		return columnDao.update(persist);
	}
	
	public int delete(Object... ids) {
		String idStr = SqlUtil.buildSafeWhere(",", ids);
		if(DPUtil.empty(idStr)) return 0;
		int count = columnDao.getCount(DPUtil.stringConcat("parent_id in (", idStr, " )"), new Object[]{}, null);
		if(count > 0) return -1;
		count = articleDao.getCount(DPUtil.stringConcat("column_id in (", idStr, " )"), new Object[]{}, null);
		if(count > 0) return -2;
		return columnDao.deleteByIds(ids);
	}
}
