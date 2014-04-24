package com.fun.service.base;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;

@Repository
@Scope("prototype")
public class DaoTemplate {

	private static final EntityManagerFactory factory = Persistence
			.createEntityManagerFactory("persistence-mysql");

	public void executeUpdate(UpdateHelper helper) {
		EntityManager em = factory.createEntityManager();
		EntityTransaction trx = em.getTransaction();
		trx.begin();
		helper.execute(em);
		trx.commit();
		em.close();
	}

	public <T> T executeQuery(QueryHelper<T> helper) {
		EntityManager em = factory.createEntityManager();
		T result = helper.execute(em);
		em.close();
		return result;
	}
	
	public <T> List<T> executeQueryForList(QueryListHelper<T> queryListHelper) {
		EntityManager em = factory.createEntityManager();
		List<T> list = queryListHelper.executeQuery(em);
		em.close();
		return list;
	}

}
