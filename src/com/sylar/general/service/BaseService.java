package com.sylar.general.service;

import java.util.List;

import com.sylar.general.common.page.PageUtil;

public interface BaseService<T,PK> {

	public void add(T t);
	public void del(PK id);
	public void upd(T t);
	public PageUtil getPageList(PageUtil page);
	public List<T> getAll();
	public T getById(PK id);
}
