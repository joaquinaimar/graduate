package com.fun.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="settlement_status")
public class SettlementStatus {

	@Id
	@Column(name="settlement_status_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int settlementStatusId;
	
	@Column(name="descr")
	private String descr;

	public int getSettlementStatusId() {
		return settlementStatusId;
	}

	public void setSettlementStatusId(int settlementStatusId) {
		this.settlementStatusId = settlementStatusId;
	}

	public String getDescr() {
		return descr;
	}

	public void setDescr(String descr) {
		this.descr = descr;
	}
	
}
