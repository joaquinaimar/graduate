package com.fun.service.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;

import com.fun.entity.Market;
import com.fun.entity.Ware;
import com.fun.service.base.QueryHelper;
import com.fun.service.base.QueryListHelper;
import com.fun.service.base.UpdateHelper;

@Repository("wareDao")
@Scope("prototype")
public class WareDao extends BaseDao {
	
	public void saveWare(final Ware ware) {
		daoTemplate.executeUpdate(new UpdateHelper() {
			
			@Override
			public void execute(EntityManager em) {
				em.persist(ware);
			}
		});
	}
	
	public void updateWare(final Ware ware) {
		daoTemplate.executeUpdate(new UpdateHelper() {
			
			@Override
			public void execute(EntityManager em) {
				em.merge(ware);
				
			}
		});
	}
	
	public List<Ware> findAllWare() {
		return daoTemplate.executeQueryForList(new QueryListHelper<Ware>() {

			@Override
			public List<Ware> executeQuery(EntityManager em) {
				Query query = em.createQuery("select ware from Ware ware");
				return query.getResultList();
			}
		});
	}
	
	public Ware findWare(final int wareId) {
		return daoTemplate.executeQuery(new QueryHelper<Ware>() {

			@Override
			public Ware execute(EntityManager em) {
				return em.find(Ware.class, wareId);
			}
		});
	}
	
	public void recordMarket(final Market market) {
		daoTemplate.executeUpdate(new UpdateHelper() {
			
			@Override
			public void execute(EntityManager em) {
				em.persist(market);
			}
		});
	}
	
}
