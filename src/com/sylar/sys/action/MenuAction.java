package com.sylar.sys.action;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sylar.sys.model.Menu;
import com.sylar.sys.service.MenuService;


@RequestMapping("/menu")
@Controller
@Scope("prototype")
public class MenuAction {
	
	@Autowired
	private MenuService menuService;
	
	
	@RequestMapping("getList")
	public String getList(ModelMap map){
		return "menu/menu_list";
	}
	
	@RequestMapping("getList1")
	public String getList1(ModelMap map){
		return "menu/menu_list_js";
	}
	
	@ResponseBody
	@RequestMapping("getPage")
	public Object getPage(){
		List<Menu> menuList = menuService.getAll();
		return menuList;
	}
}
