package com.sylar.general.service.imple;

import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.sylar.general.common.page.PageUtil;
import com.sylar.general.dao.BaseDao;
import com.sylar.general.service.BaseService;

public class BaseServiceImple<T,PK> implements BaseService<T, PK> {

	private BaseDao<T,PK> baseDao;

	protected String getUUID() {
		return UUID.randomUUID().toString().replaceAll("-", "");
	}
	
	public void add(T t) {
		baseDao.add(t);
	}

	public void del(PK id) {
		baseDao.del(id);
	}

	public T getById(PK id) {
		return baseDao.getById(id);
	}

	public void upd(T t) {
		baseDao.upd(t);
	}

	public BaseDao<T, PK> getBaseDao() {
		return baseDao;
	}

	public void setBaseDao(BaseDao<T, PK> baseDao) {
		this.baseDao = baseDao;
	}


	public List<T> getAll() {
		return this.baseDao.getAll();
	}


	@Override
	public PageUtil getPageList(PageUtil page) {
		List<T> list = this.baseDao.getPageList(page);
		page.setRows(list);
		return page;
	}


}
