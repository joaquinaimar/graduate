package com.fun.entity;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="orders")
public class Orders {

	@Id
	@Column(name="order_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int orderId;
	
	@ManyToOne(optional = false, cascade = CascadeType.REFRESH)
	@JoinColumn(name = "member_id", referencedColumnName = "member_id")
	private Member member;
	
	@ManyToOne(optional = false, cascade = CascadeType.REFRESH)
	@JoinColumn(name = "place_id", referencedColumnName = "place_id")
	private Place place;
	
	@ManyToOne(optional = false, cascade = CascadeType.REFRESH)
	@JoinColumn(name = "order_status_id", referencedColumnName = "order_status_id")
	private OrderStatus orderStatus;
	
	@Column(name="start_datetime")
	private Date startDatetime;
	
	@Column(name="end_datetime")
	private Date endDatetime;

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

	public Place getPlace() {
		return place;
	}

	public void setPlace(Place place) {
		this.place = place;
	}

	public OrderStatus getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(OrderStatus orderStatus) {
		this.orderStatus = orderStatus;
	}

	public Date getStartDatetime() {
		return startDatetime;
	}

	public void setStartDatetime(Date startDatetime) {
		this.startDatetime = startDatetime;
	}

	public Date getEndDatetime() {
		return endDatetime;
	}

	public void setEndDatetime(Date endDatetime) {
		this.endDatetime = endDatetime;
	}
	
}
