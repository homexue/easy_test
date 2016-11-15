package com.sylar.general.service;

import java.util.List;

public interface BaseService<T,PK> {

	public void add(T t);
	public void del(PK id);
	public void upd(T t);
//	public List<T> getPageList(DataGridModel dgm, T t);
	public int getPageCount(T t);
	public List<T> getAll();
	public T getById(PK id);
}
