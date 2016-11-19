package com.sylar.sys.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sylar.general.action.GeneralAction;
import com.sylar.general.common.page.PageUtil;
import com.sylar.sys.model.Menu;
import com.sylar.sys.service.MenuService;


@RequestMapping("/menu")
@Controller
@Scope("prototype")
public class MenuAction extends GeneralAction {
	
	@Autowired
	private MenuService menuService;
	
	
	@RequestMapping("getList")
	public String getList(){
		return "menu/menu_list";
	}
	
	@RequestMapping("getList1")
	public String getList1(){
		return "menu/menu_list_js";
	}
	
	@ResponseBody
	@RequestMapping("getPage")
	public Object getPage(PageUtil page){
		page = menuService.getPageList(page);
		return page;
	}
}
