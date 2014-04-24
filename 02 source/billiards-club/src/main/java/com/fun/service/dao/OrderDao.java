package com.fun.service.dao;

import javax.persistence.EntityManager;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;

import com.fun.entity.Orders;
import com.fun.service.base.QueryHelper;
import com.fun.service.base.UpdateHelper;

@Repository("orderDao")
@Scope("prototype")
public class OrderDao extends BaseDao {

	public Orders saveOrder(final Orders order) {
		daoTemplate.executeUpdate(new UpdateHelper() {
			
			@Override
			public void execute(EntityManager em) {
				em.persist(order);
				em.refresh(order);
			}
		});
		return order;
	}
	
	public Orders findOrder(final int orderId) {
		return daoTemplate.executeQuery(new QueryHelper<Orders>() {

			@Override
			public Orders execute(EntityManager em) {
				return em.find(Orders.class, orderId);
			}
		});
	}
	
	public void updateOrder(final Orders order) {
		daoTemplate.executeUpdate(new UpdateHelper() {
			
			@Override
			public void execute(EntityManager em) {
				em.merge(order);
			}
		});
	}
	
}
