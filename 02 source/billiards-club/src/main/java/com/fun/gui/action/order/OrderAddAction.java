package com.fun.gui.action.order;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.fun.gui.action.base.BaseAction;
import com.fun.service.OrderService;

@Controller("orderAddAction")
@Scope("prototype")
public class OrderAddAction extends BaseAction {

	private static final long serialVersionUID = 1L;
	
	private String pan;
	
	private int placeId;
	
	@Resource(name="orderService")
	private OrderService orderService;
	
	@Override
	public String execute() throws Exception {
		orderService.addOrder(pan, placeId);
		return SUCCESS;
	}

	public String getPan() {
		return pan;
	}

	public void setPan(String pan) {
		this.pan = pan;
	}

	public int getPlaceId() {
		return placeId;
	}

	public void setPlaceId(int placeId) {
		this.placeId = placeId;
	}

	public OrderService getOrderService() {
		return orderService;
	}

	public void setOrderService(OrderService orderService) {
		this.orderService = orderService;
	}
	
}
