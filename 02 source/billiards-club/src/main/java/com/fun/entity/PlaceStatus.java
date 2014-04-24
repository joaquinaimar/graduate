package com.fun.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "place_status")
public class PlaceStatus {

	public PlaceStatus() {
		
	}
	
	public PlaceStatus(int placeStatusId) {
		this.placeStatusId = placeStatusId;
	}
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "place_status_id")
	private int placeStatusId;
	
	@Column(name = "descr")
	private String descr;

	public int getPlaceStatusId() {
		return placeStatusId;
	}

	public void setPlaceStatusId(int placeStatusId) {
		this.placeStatusId = placeStatusId;
	}

	public String getDescr() {
		return descr;
	}

	public void setDescr(String descr) {
		this.descr = descr;
	}
	
}
