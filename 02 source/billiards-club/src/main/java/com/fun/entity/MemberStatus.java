package com.fun.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="member_status")
public class MemberStatus {
	
	public MemberStatus() {
		
	}
	
	public MemberStatus(int memberStatusId) {
		this.memberStatusId = memberStatusId;
	}
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="member_status_id")
	private int memberStatusId;
	
	@Column(name="descr")
	private String descr;

	public int getMemberStatusId() {
		return memberStatusId;
	}

	public void setMemberStatusId(int memberStatusId) {
		this.memberStatusId = memberStatusId;
	}

	public String getDescr() {
		return descr;
	}

	public void setDescr(String descr) {
		this.descr = descr;
	}
	
}
