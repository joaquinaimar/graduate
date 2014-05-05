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
@Table(name="market")
public class Market {

	@Id
	@Column(name="market_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int marketId;
	
	@ManyToOne(optional=false, cascade=CascadeType.REFRESH)
	@JoinColumn(name="ware_id", referencedColumnName="ware_id")
	private Ware ware;
	
	@Column(name="count")
	private int count;
	
	@Column(name="amount")
	private double amount;
	
	@Column(name="settlement_datetime")
	private Date settlementDatetime;

	public int getMarketId() {
		return marketId;
	}

	public void setMarketId(int marketId) {
		this.marketId = marketId;
	}

	public Ware getWare() {
		return ware;
	}

	public void setWare(Ware ware) {
		this.ware = ware;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	public Date getSettlementDatetime() {
		return settlementDatetime;
	}

	public void setSettlementDatetime(Date settlementDatetime) {
		this.settlementDatetime = settlementDatetime;
	}
	
}
