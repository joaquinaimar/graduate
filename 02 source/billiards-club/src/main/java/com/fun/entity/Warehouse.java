package com.fun.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="warehouse")
public class Warehouse {
	
	@Id
	@Column(name="warehouse_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int warehouseId;
	
	@Column(name="warehouse_nbr")
	private String warehouseNbr;
	
	@Column(name="warehouse_name")
	private String warehouseName;

	public int getWarehouseId() {
		return warehouseId;
	}

	public void setWarehouseId(int warehouseId) {
		this.warehouseId = warehouseId;
	}

	public String getWarehouseNbr() {
		return warehouseNbr;
	}

	public void setWarehouseNbr(String warehouseNbr) {
		this.warehouseNbr = warehouseNbr;
	}

	public String getWarehouseName() {
		return warehouseName;
	}

	public void setWarehouseName(String warehouseName) {
		this.warehouseName = warehouseName;
	}
	
}
