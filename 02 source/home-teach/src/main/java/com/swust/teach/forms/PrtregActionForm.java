package com.swust.teach.forms;

import org.apache.struts.action.ActionForm;

public class PrtregActionForm extends ActionForm{
	private String username;
	private String pwd;
	private String ch_name;
	private String email;
	private String sex;
	private String address;
	private String telephone;
	private String mobel;
	private String qq;
	private String rote;
	private String registertime;
	
	public String getRote() {
		return rote;
	}
	public void setRote(String rote) {
		this.rote = rote;
	}
	public String getRegistertime() {
		return registertime;
	}
	public void setRegistertime(String registertime) {
		this.registertime = registertime;
	}
	public String getCh_name() {
		return ch_name;
	}
	public void setCh_name(String ch_name) {
		this.ch_name = ch_name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
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
	public String getQq() {
		return qq;
	}
	public void setQq(String qq) {
		this.qq = qq;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
}
