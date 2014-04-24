package com.fun.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="settlement_type")
public class SettlementType {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="settlement_type_id")
	private int settlementTypeId;
	
	@Column(name="descr")
	private String descr;

	public int getSettlementTypeId() {
		return settlementTypeId;
	}

	public void setSettlementTypeId(int settlementTypeId) {
		this.settlementTypeId = settlementTypeId;
	}

	public String getDescr() {
		return descr;
	}

	public void setDescr(String descr) {
		this.descr = descr;
	}
	
}
