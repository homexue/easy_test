package com.sylar.sys.service.imple;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sylar.general.service.imple.BaseServiceImple;
import com.sylar.sys.dao.MenuDao;
import com.sylar.sys.model.Menu;
import com.sylar.sys.service.MenuService;

@Service
public class MenuServiceImple extends BaseServiceImple<Menu, Integer> implements MenuService {

	
	public MenuDao menuDao;

	@Autowired
	public void setMenuDao(MenuDao menuDao) {
		this.menuDao = menuDao;
		super.setBaseDao(menuDao);
	}
	
}
