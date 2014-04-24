package com.fun.service.dao;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.fun.entity.Price;
import com.fun.service.base.QueryHelper;

@Repository("priceDao")
public class PriceDao extends BaseDao {

	public Price findPriceByPlaceType(final int placeTypeId) {
		return daoTemplate.executeQuery(new QueryHelper<Price>() {

			@Override
			public Price execute(EntityManager em) {
				Query query = em.createQuery("select p from Price p where p.placeTypeId = :placeTypeId");
				query.setParameter("placeTypeId", placeTypeId);
				return (Price) query.getSingleResult();
			}
		});
	}
	
}
