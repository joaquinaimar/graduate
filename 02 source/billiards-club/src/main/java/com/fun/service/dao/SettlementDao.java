package com.fun.service.dao;

import javax.persistence.EntityManager;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;

import com.fun.entity.Settlement;
import com.fun.service.base.UpdateHelper;

@Repository("settlementDao")
@Scope("prototype")
public class SettlementDao extends BaseDao {
	
	public void saveSettlement(final Settlement settlement) {
		daoTemplate.executeUpdate(new UpdateHelper() {
			@Override
			public void execute(EntityManager em) {
				em.persist(settlement);
			}
		});
	}
	
}
