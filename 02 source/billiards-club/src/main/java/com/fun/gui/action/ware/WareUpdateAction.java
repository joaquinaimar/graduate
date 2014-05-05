package com.fun.gui.action.ware;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.fun.entity.Ware;
import com.fun.gui.action.base.BaseAction;
import com.fun.service.WareService;

@Controller("wareUpdateAction")
@Scope("prototype")
public class WareUpdateAction extends BaseAction {

	private static final long serialVersionUID = 1L;
	
	@Resource(name="wareService")
	private WareService wareService;
	
	private int wareId;
	
	private int purchaseCount;
	
	private List<Ware> wares;
	
	public String view() {
		wares = wareService.findAllWare();
		return VIEW;
	}
	
	@Override
	public String execute() throws Exception {
		System.out.println(purchaseCount);
		System.out.println(wareId);
		wareService.purchase(wareId, purchaseCount);
		return SUCCESS;
	}

	public WareService getWareService() {
		return wareService;
	}

	public void setWareService(WareService wareService) {
		this.wareService = wareService;
	}

	public int getWareId() {
		return wareId;
	}

	public void setWareId(int wareId) {
		this.wareId = wareId;
	}

	public List<Ware> getWares() {
		return wares;
	}

	public void setWares(List<Ware> wares) {
		this.wares = wares;
	}

	public int getPurchaseCount() {
		return purchaseCount;
	}

	public void setPurchaseCount(int purchaseCount) {
		this.purchaseCount = purchaseCount;
	}

}
