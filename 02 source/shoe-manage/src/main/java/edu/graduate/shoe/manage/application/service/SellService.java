package edu.graduate.shoe.manage.application.service;

import java.util.Date;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.graduate.basic.database.BaseDao;
import edu.graduate.basic.io.PageResponse;
import edu.graduate.basic.io.extjs.ExtPageRequest;
import edu.graduate.shoe.manage.domain.entity.Customer;
import edu.graduate.shoe.manage.domain.entity.Sell;

@Service
@Transactional
public class SellService extends BaseDao {

	@SuppressWarnings("unchecked")
	public PageResponse<Sell> searchSell(Sell sell, Date fromDate, Date toDate,
			ExtPageRequest pageRequest) {
		Criteria criteria = super.createCriteria(Sell.class);
		if (null != sell.getCustomer() && !"".equals(sell.getCustomer()))
			criteria.add(Restrictions.like("customer", "%" + sell.getCustomer()
					+ "%"));
		if (null != sell.getType() && !"".equals(sell.getType()))
			criteria.add(Restrictions.eq("type", sell.getType()));
		if (null != fromDate)
			criteria.add(Restrictions.ge("time", fromDate));
		if (null != toDate)
			criteria.add(Restrictions.le("time", toDate));

		return super.pageQuery(criteria, pageRequest);
	}

	public Long gatherInFo(int type) {
		Criteria criteria = super.createCriteria(Sell.class);
		criteria.setProjection(Projections.sum("quantity"));
		criteria.add(Restrictions.eq("type", type));
		return (Long) criteria.uniqueResult();
	}

	public void insertSell(Sell sell) {
		super.save(sell);
	}

	public void updateSell(Sell sell) {
		super.update(sell);
	}

	public int deleteSell(String[] ids) {
		Query query = super.createQuery("DELETE FROM Sell WHERE id IN :ids");
		query.setParameterList("ids", ids);
		return query.executeUpdate();
	}

	@SuppressWarnings("unchecked")
	public List<Customer> getCustomer() {
		Criteria criteria = super.createCriteria(Customer.class);
		return criteria.list();
	}

}
