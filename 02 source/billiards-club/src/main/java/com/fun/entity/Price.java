package com.fun.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="price")
public class Price {

	@Id
	@Column(name="price_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int priceId;
	
	@Column(name="place_type_id")
	private int placeTypeId;
	
	@Column(name="unit_price")
	private double unitPrice;

	public int getPriceId() {
		return priceId;
	}

	public void setPriceId(int priceId) {
		this.priceId = priceId;
	}

	public int getPlaceTypeId() {
		return placeTypeId;
	}

	public void setPlaceTypeId(int placeTypeId) {
		this.placeTypeId = placeTypeId;
	}

	public double getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(double unitPrice) {
		this.unitPrice = unitPrice;
	}
	
}
