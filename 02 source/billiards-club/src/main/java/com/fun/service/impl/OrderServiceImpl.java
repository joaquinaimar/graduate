package com.fun.service.impl;

import java.util.Date;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.fun.entity.Member;
import com.fun.entity.OrderStatus;
import com.fun.entity.Orders;
import com.fun.entity.Place;
import com.fun.entity.PlaceStatus;
import com.fun.service.OrderService;
import com.fun.service.dao.MemberDao;
import com.fun.service.dao.OrderDao;
import com.fun.service.dao.PlaceDao;

@Service("orderService")
@Scope("prototype")
public class OrderServiceImpl implements OrderService {

	@Resource(name="memberDao")
	private MemberDao memberDao;
	
	@Resource(name="placeDao")
	private PlaceDao placeDao;
	
	@Resource(name="orderDao")
	private OrderDao orderDao;
	
	@Override
	public void addOrder(String pan, int placeId) {
		Member member = memberDao.findMemberByPan(pan);
		Place place = placeDao.findPlaceById(placeId);
		Orders order = new Orders();
		order.setMember(member);
		order.setPlace(place);
		order.setStartDatetime(new Date());
		OrderStatus status = new OrderStatus();
		status.setOrderStatusId(1);
		order.setOrderStatus(status);
		order = orderDao.saveOrder(order);
		place.setCurrentOrder(order);
		PlaceStatus placeStatus = new PlaceStatus();
		placeStatus.setPlaceStatusId(5);
		place.setPlaceStatus(placeStatus);
		placeDao.updatePlace(place);
	}

	public void settleOrder(int orderId) {
		
	}
	
	public MemberDao getMemberDao() {
		return memberDao;
	}

	public void setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
	}

	public PlaceDao getPlaceDao() {
		return placeDao;
	}

	public void setPlaceDao(PlaceDao placeDao) {
		this.placeDao = placeDao;
	}

	public OrderDao getOrderDao() {
		return orderDao;
	}

	public void setOrderDao(OrderDao orderDao) {
		this.orderDao = orderDao;
	}

}
