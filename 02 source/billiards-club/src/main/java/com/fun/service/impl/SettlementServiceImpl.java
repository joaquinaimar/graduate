package com.fun.service.impl;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.Date;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.fun.common.RuntimePolicy;
import com.fun.entity.Member;
import com.fun.entity.OrderStatus;
import com.fun.entity.Orders;
import com.fun.entity.Place;
import com.fun.entity.PlaceStatus;
import com.fun.entity.Price;
import com.fun.entity.Settlement;
import com.fun.entity.SettlementStatus;
import com.fun.entity.SettlementType;
import com.fun.service.SettlementService;
import com.fun.service.dao.MemberDao;
import com.fun.service.dao.OrderDao;
import com.fun.service.dao.PlaceDao;
import com.fun.service.dao.PriceDao;
import com.fun.service.dao.SettlementDao;

@Service("settlementService")
@Scope("prototype")
public class SettlementServiceImpl implements SettlementService {

	@Resource(name = "settlementDao")
	private SettlementDao settlementDao;

	@Resource(name = "orderDao")
	private OrderDao orderDao;

	@Resource(name = "placeDao")
	private PlaceDao placeDao;

	@Resource(name = "priceDao")
	private PriceDao priceDao;

	@Resource(name = "memberDao")
	private MemberDao memberDao;

	@Override
	public void settlement(int orderId) {
		Orders order = orderDao.findOrder(orderId);
		Member member = order.getMember();
		Place place = order.getPlace();
		Price price = priceDao.findPriceByPlaceType(place.getPlaceType()
				.getPlaceTypeId());
		Date startDatetime = order.getStartDatetime();
		Date currentDatetime = new Date();
		long duration = currentDatetime.getTime() - startDatetime.getTime();
		long quart = 1000 * 60 * 15;
		int quarter = Math.round(duration / quart);
		double quartPrice = price.getUnitPrice() / 4;
		double amount = quarter
				* quartPrice
				* RuntimePolicy.getMemberDiscount(member.getMemberType()
						.getMemberLevel())
				* RuntimePolicy.getTimeDiscount(quarter);
		BigDecimal decimal = new BigDecimal(amount);
		amount = decimal.setScale(2, RoundingMode.HALF_UP).doubleValue();
		double perBalance = member.getBalance();
		double postBalance;
		if (perBalance < amount) {
			postBalance = 0;
		} else {
			postBalance = perBalance - amount;
		}
		member.setBalance(postBalance);
		memberDao.updateMember(member);
		place.setCurrentOrder(null);
		PlaceStatus placeStatus = new PlaceStatus();
		placeStatus.setPlaceStatusId(4);
		place.setPlaceStatus(placeStatus);
		placeDao.updatePlace(place);
		OrderStatus orderStatus = new OrderStatus();
		orderStatus.setOrderStatusId(2);
		order.setOrderStatus(orderStatus);
		order.setEndDatetime(currentDatetime);
		orderDao.updateOrder(order);

		Settlement settlement = new Settlement();
		settlement.setOrder(order);
		settlement.setSettlementDatetime(currentDatetime);
		SettlementStatus settlementStatus = new SettlementStatus();
		settlementStatus.setSettlementStatusId(1);
		settlement.setSettlementStatus(settlementStatus);
		SettlementType type = new SettlementType();
		type.setSettlementTypeId(1);
		settlement.setSettlementType(type);
		settlement.setAmount(amount);
		settlementDao.saveSettlement(settlement);
	}

	public SettlementDao getSettlementDao() {
		return settlementDao;
	}

	public void setSettlementDao(SettlementDao settlementDao) {
		this.settlementDao = settlementDao;
	}

	public OrderDao getOrderDao() {
		return orderDao;
	}

	public void setOrderDao(OrderDao orderDao) {
		this.orderDao = orderDao;
	}

	public PlaceDao getPlaceDao() {
		return placeDao;
	}

	public void setPlaceDao(PlaceDao placeDao) {
		this.placeDao = placeDao;
	}

	public PriceDao getPriceDao() {
		return priceDao;
	}

	public void setPriceDao(PriceDao priceDao) {
		this.priceDao = priceDao;
	}

	public MemberDao getMemberDao() {
		return memberDao;
	}

	public void setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
	}

}
