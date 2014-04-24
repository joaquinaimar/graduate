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
@Table(name="settlement")
public class Settlement {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="settlement_id")
	private int settlementId;
	
	@ManyToOne(optional=false, cascade=CascadeType.REFRESH)
	@JoinColumn(name="settlement_type_id", referencedColumnName="settlement_type_id")
	private SettlementType settlementType;
	
	@ManyToOne(optional=false, cascade=CascadeType.REFRESH)
	@JoinColumn(name="settlement_status_id", referencedColumnName="settlement_status_id")
	private SettlementStatus settlementStatus;
	
	@ManyToOne(optional=false, cascade=CascadeType.REFRESH)
	@JoinColumn(name="order_id", referencedColumnName="order_id")
	private Orders order;
	
	@Column(name="amount")
	private double amount;
	
	@Column(name="settlement_datetime")
	private Date settlementDatetime;

	public int getSettlementId() {
		return settlementId;
	}

	public void setSettlementId(int settlementId) {
		this.settlementId = settlementId;
	}

	public SettlementType getSettlementType() {
		return settlementType;
	}

	public void setSettlementType(SettlementType settlementType) {
		this.settlementType = settlementType;
	}

	public SettlementStatus getSettlementStatus() {
		return settlementStatus;
	}

	public void setSettlementStatus(SettlementStatus settlementStatus) {
		this.settlementStatus = settlementStatus;
	}

	public Orders getOrder() {
		return order;
	}

	public void setOrder(Orders order) {
		this.order = order;
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
