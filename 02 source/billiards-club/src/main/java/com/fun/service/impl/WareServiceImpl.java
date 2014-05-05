package com.fun.service.impl;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.fun.entity.Market;
import com.fun.entity.Ware;
import com.fun.entity.Warehouse;
import com.fun.service.WareService;
import com.fun.service.dao.WareDao;
import com.fun.service.dao.WarehouseDao;

@Service("wareService")
@Scope("prototype")
public class WareServiceImpl implements WareService {
	
	@Resource(name="wareDao")
	private WareDao wareDao;
	
	@Resource(name="warehouseDao")
	private WarehouseDao warehouseDao;
	
	public void saveWare(Ware ware) {
		wareDao.saveWare(ware);
	}
	
	public void updateWare(Ware ware) {
		wareDao.updateWare(ware);
	}
	
	public List<Ware> findAllWare() {
		return wareDao.findAllWare();
	}
	
	public void saveWarehouse(Warehouse warehouse) {
		warehouseDao.saveWarehouse(warehouse);
	}
	
	public List<Warehouse> findAllWarehouse() {
		return warehouseDao.findAllWarehouse();
	}

	public WareDao getWareDao() {
		return wareDao;
	}

	public void setWareDao(WareDao wareDao) {
		this.wareDao = wareDao;
	}

	public WarehouseDao getWarehouseDao() {
		return warehouseDao;
	}

	public void setWarehouseDao(WarehouseDao warehouseDao) {
		this.warehouseDao = warehouseDao;
	}

	@Override
	public void purchase(int wareId, int count) {
		Ware oldWare = wareDao.findWare(wareId);
		int preBalance = oldWare.getWareBalance();
		int postBalance = preBalance - count;
		oldWare.setWareBalance(postBalance);
		wareDao.updateWare(oldWare);
		Market market = new Market();
		market.setWare(oldWare);
		market.setCount(count);
		market.setAmount(count * oldWare.getWarePrice());
		market.setSettlementDatetime(new Date());
		wareDao.recordMarket(market);
	}
	
}
