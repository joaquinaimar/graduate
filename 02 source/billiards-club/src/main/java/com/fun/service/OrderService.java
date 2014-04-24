package com.fun.service;

public interface OrderService {
	
	public void addOrder(String pan, int placeId);
	
	public void settleOrder(int orderId);
	
}
