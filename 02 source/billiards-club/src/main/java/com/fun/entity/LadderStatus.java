package com.fun.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ladder_status")
public class LadderStatus {

	@Id
	@Column(name="ladder_status_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int ladderStatusId;
	
	@Column(name="descr")
	private String descr;

	public int getLadderStatusId() {
		return ladderStatusId;
	}

	public void setLadderStatusId(int ladderStatusId) {
		this.ladderStatusId = ladderStatusId;
	}

	public String getDescr() {
		return descr;
	}

	public void setDescr(String descr) {
		this.descr = descr;
	}
	
}
