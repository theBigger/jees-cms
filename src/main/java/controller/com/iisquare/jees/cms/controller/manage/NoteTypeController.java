package com.iisquare.jees.cms.controller.manage;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.iisquare.jees.cms.domain.NoteType;
import com.iisquare.jees.cms.service.NoteTypeService;
import com.iisquare.jees.core.component.PermitController;
import com.iisquare.jees.framework.util.DPUtil;
import com.iisquare.jees.framework.util.ServiceUtil;
import com.iisquare.jees.framework.util.ValidateUtil;

/**
 * 留言类型管理
 * @author Ouyang <iisquare@163.com>
 *
 */
@Controller
@Scope("prototype")
public class NoteTypeController extends PermitController {
	
	@Autowired
	public NoteTypeService noteTypeService;
	
	public String layoutAction() throws Exception {
		return displayTemplate();
	}
	
	public String listAction () throws Exception {
		List<Map<String, Object>> list = noteTypeService.getList("*", "sort desc", 1, 0);
		list = ServiceUtil.formatRelation(list, 0);
		assign("total", list.size());
		assign("rows", DPUtil.collectionToArray(list));
		return displayJSON();
	}
	
	public String showAction() throws Exception {
		Integer id = ValidateUtil.filterInteger(get("id"), true, 0, null, null);
		Map<String, Object> info = noteTypeService.getById(id, true);
		if(null == info) {
			return displayInfo("信息不存在，请刷新后再试", null);
		}
		assign("info", info);
		return displayTemplate();
	}
	
	public String editAction() throws Exception {
		Integer id = ValidateUtil.filterInteger(get("id"), true, 0, null, null);
		NoteType info;
		if(DPUtil.empty(id)) {
			info = new NoteType();
			info.setParentId(ValidateUtil.filterInteger(get("parentId"), true, 0, null, null));
		} else {
			info = noteTypeService.getById(id);
			if(DPUtil.empty(info)) return displayInfo("信息不存在，请刷新后再试", null);
		}
		assign("info", info);
		assign("statusMap", noteTypeService.getStatusMap());
		return displayTemplate();
	}
	
	public String saveAction() throws Exception {
		Integer id = ValidateUtil.filterInteger(get("id"), true, 0, null, null);
		NoteType persist;
		if(DPUtil.empty(id)) {
			persist = new NoteType();
		} else {
			persist = noteTypeService.getById(id);
			if(DPUtil.empty(persist)) return displayMessage(3001, "信息不存在，请刷新后再试", null);
		}
		persist.setParentId(ValidateUtil.filterInteger(get("parentId"), true, 0, null, null));
		String name = ValidateUtil.filterSimpleString(get("name"), true, 1, 64, null);
		if(DPUtil.empty(name)) return displayMessage(3002, "名称参数错误", null);
		persist.setName(name);
		persist.setSort(ValidateUtil.filterInteger(get("sort"), true, null, null, null));
		String status = get("status");
		if(ValidateUtil.isNull(status, true)) return displayMessage(3003, "请选择记录状态", null);
		persist.setStatus(ValidateUtil.filterInteger(status, true, null, null, null));
		long time = System.currentTimeMillis();
		persist.setUpdateId(currentMember.getId());
		persist.setUpdateTime(time);
		int result;
		if(DPUtil.empty(persist.getId())) {
			persist.setCreateId(currentMember.getId());
			persist.setCreateTime(time);
			result = noteTypeService.insert(persist);
		} else {
			result = noteTypeService.update(persist);
		}
		if(result > 0) {
			return displayMessage(0, "操作成功", url("layout"));
		} else {
			return displayMessage(500, "操作失败", null);
		}
	}
	
	public String deleteAction() throws Exception {
		Object[] idArray = getArray("ids");
		int result = noteTypeService.delete(idArray);
		if(-1 == result) return displayInfo("该节点拥有下级节点，不允许删除", null);
		if(-2 == result) return displayInfo("该节点拥有从属通知公告，不允许删除", null);
		if(result > 0) {
			return displayInfo("操作成功", url("layout"));
		} else {
			return displayInfo("操作失败，请刷新后再试", null);
		}
	}
}
