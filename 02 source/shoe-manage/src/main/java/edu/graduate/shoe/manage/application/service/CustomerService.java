package edu.graduate.shoe.manage.application.service;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.graduate.shoe.manage.basic.database.BaseDao;
import edu.graduate.shoe.manage.basic.io.PageResponse;
import edu.graduate.shoe.manage.basic.io.extjs.ExtPageRequest;
import edu.graduate.shoe.manage.domain.entity.Customer;

@Service
@Transactional
public class CustomerService extends BaseDao {

	@SuppressWarnings("unchecked")
	public PageResponse<Customer> searchCustomer(Customer customer,
			ExtPageRequest pageRequest) {
		Criteria criteria = super.createCriteria(Customer.class);
		if (null != customer.getName() && !"".equals(customer.getName()))
			criteria.add(Restrictions.like("name", "%" + customer.getName()
					+ "%"));
		if (null != customer.getType() && !"".equals(customer.getType()))
			criteria.add(Restrictions.eq("type", customer.getType()));

		return super.pageQuery(criteria, pageRequest);
	}

	public void insertCustomer(Customer customer) {
		super.save(customer);
	}

	public void updateCustomer(Customer customer) {
		super.update(customer);
	}

	public int deleteCustomer(String[] ids) {
		Query query = super
				.createQuery("DELETE FROM Customer WHERE id IN :ids");
		query.setParameterList("ids", ids);
		return query.executeUpdate();
	}

}
