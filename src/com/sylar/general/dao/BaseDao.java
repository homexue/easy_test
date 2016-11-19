package com.sylar.general.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.sylar.general.common.page.PageUtil;

public interface BaseDao<T,PK> {

	public void add(T t);
	public void del(PK id);
	public void upd(T t);
	public T getById(PK id);
	public List<T> getAll();
	public List<T> getPageList(PageUtil page);
}
