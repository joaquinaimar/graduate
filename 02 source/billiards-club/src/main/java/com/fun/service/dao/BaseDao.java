package com.fun.service.dao;

import javax.annotation.Resource;

import com.fun.service.base.DaoTemplate;

public class BaseDao {

	@Resource(name = "daoTemplate")
	protected DaoTemplate daoTemplate;
	
	public DaoTemplate getDaoTemplate() {
		return daoTemplate;
	}

	public void setDaoTemplate(DaoTemplate daoTemplate) {
		this.daoTemplate = daoTemplate;
	}
	
}
