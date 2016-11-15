package com.sylar.sys.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

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
		List<Menu> menuList = menuService.getAll();
		map.put("menuList", menuList);
		return "menu/menu_list";
	}
}
