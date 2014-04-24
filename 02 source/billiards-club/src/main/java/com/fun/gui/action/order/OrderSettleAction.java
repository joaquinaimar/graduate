package com.fun.gui.action.order;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.fun.gui.action.base.BaseAction;
import com.fun.service.SettlementService;

@Controller("orderSettleAction")
@Scope("prototype")
public class OrderSettleAction extends BaseAction {

	private static final long serialVersionUID = 1L;
	
	private int orderId;
	
	@Resource(name="settlementService")
	private SettlementService settlementService;
	
	@Override
	public String execute() throws Exception {
		settlementService.settlement(orderId);
		return SUCCESS;
	}

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public SettlementService getSettlementService() {
		return settlementService;
	}

	public void setSettlementService(SettlementService settlementService) {
		this.settlementService = settlementService;
	}
	
}
