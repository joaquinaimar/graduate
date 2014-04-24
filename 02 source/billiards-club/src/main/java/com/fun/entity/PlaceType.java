package com.fun.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "place_type")
public class PlaceType {

	@Id
	@Column(name = "place_type_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int placeTypeId;
	
	@Column(name = "descr")
	private String descr;

	public int getPlaceTypeId() {
		return placeTypeId;
	}

	public void setPlaceTypeId(int placeTypeId) {
		this.placeTypeId = placeTypeId;
	}

	public String getDescr() {
		return descr;
	}

	public void setDescr(String descr) {
		this.descr = descr;
	}
	
	
	
}
