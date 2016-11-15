package com.sylar.sys.model;

import java.util.Set;

public class Menu {
	 /** menu_id */
    private Integer menuId;

    /** menu_cncode */
    private String menuCncode;

    /** menu_code */
    private String menuCode;

    /** menu_name */
    private String menuName;

    /** parent_id */
    private Integer parentId;

    /** action_url */
    private String actionUrl;
    
    /** parent_id */
    private Menu parentMenu;
   
    private Set<Menu> childrenMenu;
    

	public Set<Menu> getChildrenMenu() {
		return childrenMenu;
	}

	public void setChildrenMenu(Set<Menu> childrenMenu) {
		this.childrenMenu = childrenMenu;
	}

	public Integer getMenuId() {
		return menuId;
	}

	public void setMenuId(Integer menuId) {
		this.menuId = menuId;
	}

	public String getMenuCncode() {
		return menuCncode;
	}

	public void setMenuCncode(String menuCncode) {
		this.menuCncode = menuCncode;
	}

	public String getMenuCode() {
		return menuCode;
	}

	public void setMenuCode(String menuCode) {
		this.menuCode = menuCode;
	}

	public String getMenuName() {
		return menuName;
	}

	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}

	public Integer getParentId() {
		return parentId;
	}

	public void setParentId(Integer parentId) {
		this.parentId = parentId;
	}

	public String getActionUrl() {
		return actionUrl;
	}

	public void setActionUrl(String actionUrl) {
		this.actionUrl = actionUrl;
	}

	public Menu getParentMenu() {
		return parentMenu;
	}

	public void setParentMenu(Menu parentMenu) {
		this.parentMenu = parentMenu;
	}
}
