package com.fun.service.base;

import javax.persistence.EntityManager;

public interface QueryHelper<T> {

	public T execute(EntityManager em);
	
}
