package com.fun.service.base;

import java.util.List;

import javax.persistence.EntityManager;

public interface QueryListHelper<T> {
	public List<T> executeQuery(EntityManager em);
}
