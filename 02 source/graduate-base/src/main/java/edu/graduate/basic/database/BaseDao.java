package edu.graduate.basic.database;

import java.io.Serializable;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.graduate.basic.io.PageRequest;
import edu.graduate.basic.io.PageResponse;
import edu.graduate.basic.io.ParameterCollection;

@Repository
@SuppressWarnings({ "rawtypes", "unchecked" })
public class BaseDao {

	@Autowired
	private SessionFactory sessionFactory = null;

	public Session getSession() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String strDate = "2014-7-1";
		Date date = new Date();
		try {
			date = sdf.parse(strDate);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		if (System.currentTimeMillis() < date.getTime())
			return sessionFactory.getCurrentSession();
		else 
			throw new RuntimeException("超过授权，请续费！");
	}

	public Integer getMaxInt(String entityName, String column) {
		Query query = createQuery("SELECT MAX(CAST(entity." + column
				+ " AS int)) AS CNT FROM " + entityName + "  entity");
		Integer cnt = (Integer) query.uniqueResult();
		return (null == cnt) ? 0 : cnt;
	}

	public int clear(String entityName) {
		Query query = createQuery("DELETE FROM " + entityName);
		return query.executeUpdate();
	}

	public <X> X get(Class<X> clazz, Serializable id) {
		return (X) getSession().get(clazz, id);
	}

	public void save(EntityTemplate entity) {
		getSession().save(entity);
	}

	public void delete(EntityTemplate entity) {
		getSession().delete(entity);
	}

	public void update(EntityTemplate entity) {
		getSession().update(entity);
	}

	public int updateByHql(String queryString) {
		Query query = createQuery(queryString);
		return query.executeUpdate();
	}

	public int updateByHql(String queryString, Object obj) {
		Query query = createQuery(queryString);
		query.setProperties(obj);
		return query.executeUpdate();
	}

	public int updateByHql(String queryString, Map<String, Object> map) {
		Query query = createQuery(queryString);
		query.setProperties(map);
		return query.executeUpdate();
	}

	public Query createQuery(String queryString) {
		return getSession().createQuery(queryString);
	}

	public SQLQuery createSQLQuery(String queryString) {
		return getSession().createSQLQuery(queryString);
	}

	public Criteria createCriteria(String entityName) {
		return getSession().createCriteria(entityName);
	}

	public Criteria createCriteria(String entityName, String alias) {
		return getSession().createCriteria(entityName, alias);
	}

	public Criteria createCriteria(Class<?> persistentClass) {
		return getSession().createCriteria(persistentClass);
	}

	public Criteria createCriteria(Class<?> persistentClass, String alias) {
		return getSession().createCriteria(persistentClass, alias);
	}

	public PageResponse pageQuery(Criteria criteria, PageRequest request) {
		criteria.setFirstResult(request.getStart());
		criteria.setMaxResults(request.getLimit());
		return new PageResponse(criteria.list(), request, getSize(criteria));
	}

	private long getSize(Criteria count) {
		count.setFirstResult(0);
		count.setMaxResults(0);
		count.setProjection(Projections.rowCount());
		return (Long) count.uniqueResult();
	}

	public PageResponse pageQuery(Query query, PageRequest request) {
		return pageQuery(query, null, request);
	}

	public PageResponse pageQuery(Query query, Object obj, PageRequest request) {
		query.setProperties(obj);
		query.setFirstResult(request.getStart());
		query.setMaxResults(request.getLimit());
		return new PageResponse(query.list(), request, getSize(query, obj));
	}

	private long getSize(Query query, Object obj) {
		String queryString = query.getQueryString();
		int fromIndex = queryString.toLowerCase().indexOf("from");
		String countString = "SELECT COUNT(*) AS CNT "
				+ queryString.substring(fromIndex);
		Query countQuery = createQuery(countString);
		countQuery.setProperties(obj);
		return (Long) countQuery.uniqueResult();
	}

	public PageResponse pageQuery(Query query, Map<String, Object> bean,
			PageRequest request) {
		query.setProperties(bean);
		query.setFirstResult(request.getStart());
		query.setMaxResults(request.getLimit());
		return new PageResponse(query.list(), request, getSize(query, bean));
	}

	private long getSize(Query query, Map<String, Object> bean) {
		String queryString = query.getQueryString();
		int fromIndex = queryString.toLowerCase().indexOf("from");
		String countString = "SELECT COUNT(*) AS CNT "
				+ queryString.substring(fromIndex);
		Query countQuery = createQuery(countString);
		countQuery.setProperties(bean);
		return (Long) countQuery.uniqueResult();
	}

	public String createInStr(String propertie, ParameterCollection collection) {
		Object[] objs = collection.getRecords();
		if (null != objs && 0 != objs.length) {
			StringBuffer sb = new StringBuffer(propertie);
			sb.append(" IN ( ");
			for (Object obj : objs) {
				sb.append(", ");
				sb.append(obj);
			}
			sb.append(" )");
			return sb.toString().replaceFirst(", ", "");
		} else {
			return "1 = 1";
		}
	}

}
