package com.fun.gui.action.ware;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.fun.entity.Warehouse;
import com.fun.gui.action.base.BaseAction;
import com.fun.service.WareService;

@Controller("warehouseAddAction")
@Scope("prototype")
public class WarehouseAddAction extends BaseAction {

	private static final long serialVersionUID = 1L;
	
	private Warehouse warehouse;
	
	@Resource(name="wareService")
	private WareService wareService;
	
	public String view() {
		return SUCCESS;
	}
	
	@Override
	public String execute() throws Exception {
		wareService.saveWarehouse(warehouse);
		return SUCCESS;
	}

	public Warehouse getWarehouse() {
		return warehouse;
	}

	public void setWarehouse(Warehouse warehouse) {
		this.warehouse = warehouse;
	}

	public WareService getWareService() {
		return wareService;
	}

	public void setWareService(WareService wareService) {
		this.wareService = wareService;
	}

}
