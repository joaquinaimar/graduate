package com.fun.service.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;

import com.fun.entity.Warehouse;
import com.fun.service.base.QueryListHelper;
import com.fun.service.base.UpdateHelper;

@Repository("warehouseDao")
@Scope("prototype")
public class WarehouseDao extends BaseDao {
	
	public void saveWarehouse(final Warehouse warehouse) {
		daoTemplate.executeUpdate(new UpdateHelper() {
			
			@Override
			public void execute(EntityManager em) {
				em.persist(warehouse);
			}
		});
	}
	
	public List<Warehouse> findAllWarehouse() {
		return daoTemplate.executeQueryForList(new QueryListHelper<Warehouse>() {

			@Override
			public List<Warehouse> executeQuery(EntityManager em) {
				Query query = em.createQuery("select wh from Warehouse wh");
				return query.getResultList();
			}
		});
	}
	
}
