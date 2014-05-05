package com.fun.gui.action.ware;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.fun.entity.Ware;
import com.fun.entity.Warehouse;
import com.fun.gui.action.base.BaseAction;
import com.fun.service.WareService;

@Controller("wareAddAction")
@Scope("prototype")
public class WareAddAction extends BaseAction {

	private static final long serialVersionUID = 1L;
	
	@Resource(name="wareService")
	private WareService wareService;
	
	private Ware ware;
	
	private List<Warehouse> warehouseList;
	
	public String view() {
		warehouseList = wareService.findAllWarehouse();
		return VIEW;
	}
	
	@Override
	public String execute() throws Exception {
		wareService.saveWare(ware);
		return super.execute();
	}

	public WareService getWareService() {
		return wareService;
	}

	public void setWareService(WareService wareService) {
		this.wareService = wareService;
	}

	public Ware getWare() {
		return ware;
	}

	public void setWare(Ware ware) {
		this.ware = ware;
	}

	public List<Warehouse> getWarehouseList() {
		return warehouseList;
	}

	public void setWarehouseList(List<Warehouse> warehouseList) {
		this.warehouseList = warehouseList;
	}

}
