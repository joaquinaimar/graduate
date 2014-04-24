package com.fun.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="place")
public class Place {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name = "place_id")
	private int placeId;
	
	@Column(name="place_nbr")
	private String placeNbr;
	
	@ManyToOne(optional = false, cascade = CascadeType.REFRESH)
	@JoinColumn(name = "place_status_id", referencedColumnName = "place_status_id")
	private PlaceStatus placeStatus;
	
	@ManyToOne(optional = false, cascade = CascadeType.REFRESH)
	@JoinColumn(name = "place_type_id", referencedColumnName = "place_type_id")
	private PlaceType placeType;
	
	@OneToOne(optional=true, cascade = CascadeType.REFRESH)
	@JoinColumn(name = "current_order_id", referencedColumnName = "order_id")
	private Orders currentOrder;
	
	public int getPlaceId() {
		return placeId;
	}

	public void setPlaceId(int placeId) {
		this.placeId = placeId;
	}

	public String getPlaceNbr() {
		return placeNbr;
	}

	public void setPlaceNbr(String placeNbr) {
		this.placeNbr = placeNbr;
	}

	public PlaceType getPlaceType() {
		return placeType;
	}

	public void setPlaceType(PlaceType placeType) {
		this.placeType = placeType;
	}

	public PlaceStatus getPlaceStatus() {
		return placeStatus;
	}

	public void setPlaceStatus(PlaceStatus placeStatus) {
		this.placeStatus = placeStatus;
	}

	public Orders getCurrentOrder() {
		return currentOrder;
	}

	public void setCurrentOrder(Orders currentOrder) {
		this.currentOrder = currentOrder;
	}

}
