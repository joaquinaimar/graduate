package com.fun.gui.action.user;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.fun.entity.User;
import com.fun.gui.action.base.BaseAction;
import com.fun.service.UserService;

@Controller("registerAction")
@Scope("prototype")
public class RegisterAction extends BaseAction{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Resource(name="userService")
	private UserService userService;

	public String userName;
		
	public String password;
	
	public String confirmPassword;
	
	@Override
	public String execute() throws Exception {
		User user = new User();
		user.setUserName(userName);
		user.setPassword(password);
		userService.registerUser(user);
		return SUCCESS;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
}
