package com.fun.entity;

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
@Table(name="ware")
public class Ware {

	@Id
	@Column(name="ware_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int wareId;
	
	@Column(name="ware_name")
	private String wareName;
	
	@Column(name="ware_balance")
	private int wareBalance;
	
	@Column(name="ware_price")
	private double warePrice;
	
	@ManyToOne(optional=false, cascade=CascadeType.REFRESH)
	@JoinColumn(name="warehouse_id", referencedColumnName="warehouse_id")
	private Warehouse warehouse;

	public int getWareId() {
		return wareId;
	}

	public void setWareId(int wareId) {
		this.wareId = wareId;
	}

	public String getWareName() {
		return wareName;
	}

	public void setWareName(String wareName) {
		this.wareName = wareName;
	}

	public int getWareBalance() {
		return wareBalance;
	}

	public void setWareBalance(int wareBalance) {
		this.wareBalance = wareBalance;
	}

	public double getWarePrice() {
		return warePrice;
	}

	public void setWarePrice(double warePrice) {
		this.warePrice = warePrice;
	}

	public Warehouse getWarehouse() {
		return warehouse;
	}

	public void setWarehouse(Warehouse warehouse) {
		this.warehouse = warehouse;
	}

}
