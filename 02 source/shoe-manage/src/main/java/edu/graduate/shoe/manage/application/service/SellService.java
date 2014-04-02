package edu.graduate.shoe.manage.application.service;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.graduate.shoe.manage.basic.database.BaseDao;
import edu.graduate.shoe.manage.basic.io.PageResponse;
import edu.graduate.shoe.manage.basic.io.extjs.ExtPageRequest;
import edu.graduate.shoe.manage.domain.entity.Sell;

@Service
@Transactional
public class SellService extends BaseDao {

	@SuppressWarnings("unchecked")
	public PageResponse<Sell> searchSell(Sell sell, ExtPageRequest pageRequest) {
		Criteria criteria = super.createCriteria(Sell.class);
		if (null != sell.getCustomer() && !"".equals(sell.getCustomer()))
			criteria.add(Restrictions.like("customer", "%" + sell.getCustomer()
					+ "%"));
		if (null != sell.getType() && !"".equals(sell.getType()))
			criteria.add(Restrictions.eq("type", sell.getType()));

		return super.pageQuery(criteria, pageRequest);
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

}
