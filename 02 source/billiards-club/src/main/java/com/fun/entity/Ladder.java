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
@Table(name="ladder")
public class Ladder {

	@Id
	@Column(name="ladder_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int ladderId;
	
	@OneToOne(optional=false, cascade=CascadeType.ALL)
	@JoinColumn(name="person_id", referencedColumnName="person_id")
	private Person person;
	
	@Column(name="ladder_price")
	private double ladderPrice;
	
	@ManyToOne(optional=false, cascade=CascadeType.REFRESH)
	@JoinColumn(name="ladder_status_id", referencedColumnName="ladder_status_id")
	private LadderStatus ladderStatus;
	
	@Column(name="comment")
	private String comment;

	public int getLadderId() {
		return ladderId;
	}

	public void setLadderId(int ladderId) {
		this.ladderId = ladderId;
	}

	public double getLadderPrice() {
		return ladderPrice;
	}

	public void setLadderPrice(double ladderPrice) {
		this.ladderPrice = ladderPrice;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public Person getPerson() {
		return person;
	}

	public void setPerson(Person person) {
		this.person = person;
	}

	public LadderStatus getLadderStatus() {
		return ladderStatus;
	}

	public void setLadderStatus(LadderStatus ladderStatus) {
		this.ladderStatus = ladderStatus;
	}
	
}
