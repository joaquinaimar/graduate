package com.swust.teach.forms;

import org.apache.struts.action.ActionForm;

public class MsgaddActionForm extends ActionForm {
	private int msg_id;
	private String state;
	private int tea_id;
	private String threquire;
	
	private String firname;
	private String sex;
	private String telephone;
	private String mobel;
	private String address;
	private String schoolgrade;
	private String studyinf;
	private String pay;
	private String req;
	private int stu_id;
	private String postdate;
	private String onesubject;
	
	public String getOnesubject() {
		return onesubject;
	}
	public void setOnesubject(String onesubject) {
		this.onesubject = onesubject;
	}
	public String getPostdate() {
		return postdate;
	}
	public void setPostdate(String postdate) {
		this.postdate = postdate;
	}
	public String getFirname() {
		return firname;
	}
	public void setFirname(String firname) {
		this.firname = firname;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getMobel() {
		return mobel;
	}
	public void setMobel(String mobel) {
		this.mobel = mobel;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getSchoolgrade() {
		return schoolgrade;
	}
	public void setSchoolgrade(String schoolgrade) {
		this.schoolgrade = schoolgrade;
	}
	public String getStudyinf() {
		return studyinf;
	}
	public void setStudyinf(String studyinf) {
		this.studyinf = studyinf;
	}
	public String getPay() {
		return pay;
	}
	public void setPay(String pay) {
		this.pay = pay;
	}
	public String getReq() {
		return req;
	}
	public void setReq(String req) {
		this.req = req;
	}
	public int getMsg_id() {
		return msg_id;
	}
	public void setMsg_id(int msg_id) {
		this.msg_id = msg_id;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public int getTea_id() {
		return tea_id;
	}
	public void setTea_id(int tea_id) {
		this.tea_id = tea_id;
	}
	public int getStu_id() {
		return stu_id;
	}
	public void setStu_id(int stu_id) {
		this.stu_id = stu_id;
	}
	public String getThrequire() {
		return threquire;
	}
	public void setThrequire(String threquire) {
		this.threquire = threquire;
	}
}
