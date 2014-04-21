package com.swust.teach.forms;

import org.apache.struts.action.ActionForm;

public class LoginActionForm extends ActionForm{
	private String username;
	private String pwd;
	private String oldpwd;
	private String rote;
	private String expwd;
	
	public String getExpwd() {
		return expwd;
	}
	public void setExpwd(String expwd) {
		this.expwd = expwd;
	}
	public String getRote() {
		return rote;
	}
	public void setRote(String rote) {
		this.rote = rote;
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
	public String getOldpwd() {
		return oldpwd;
	}
	public void setOldpwd(String oldpwd) {
		this.oldpwd = oldpwd;
	}

}
