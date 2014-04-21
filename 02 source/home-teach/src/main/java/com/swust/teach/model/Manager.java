package com.swust.teach.model;

public class Manager {
	private int user_id;
	private String username;
	private String pwd;
	private String rote;

	
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
	public String getRote() {
		return rote;
	}
	public void setRote(String rote) {
		this.rote = rote;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
}
