package com.fun.service;

import java.util.List;

import com.fun.entity.Ware;
import com.fun.entity.Warehouse;

public interface WareService {

	public void saveWare(Ware ware);
	
	public void updateWare(Ware ware);
	
	public void purchase(int wareId, int count);
	
	public List<Ware> findAllWare();
	
	public void saveWarehouse(Warehouse warehouse);
	
	public List<Warehouse> findAllWarehouse();
	
}
