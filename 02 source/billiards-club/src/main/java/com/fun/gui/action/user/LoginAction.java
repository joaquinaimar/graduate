package com.fun.gui.action.user;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.fun.common.Constant;
import com.fun.entity.User;
import com.fun.gui.action.base.BaseAction;
import com.fun.service.UserService;
import com.fun.common.CheckUtils;

@Controller("loginAction")
@Scope("prototype")
public class LoginAction extends BaseAction {

	private static final long serialVersionUID = 1L;

	@Resource(name = "userService")
	private UserService userService;

	private String userName;

	private String password;

	public String view() {
		return VIEW;
	}
	
	@Override
	public void validate() {
		if (!CheckUtils.requirdTrim(userName)) {
			this.addFieldError(Constant.ERROR_NAME, "请输入用户名!");
		} else if (!CheckUtils.checkStringLength(userName, 6)) {
			this.addFieldError(Constant.ERROR_NAME, "用户名不能超过6位!");
		}
		if (!CheckUtils.requirdTrim(password)) {
			this.addFieldError(Constant.ERROR_PASSWORD, "请输入密码!");
		} else if (!CheckUtils.checkStringLength(password, 6)) {
			this.addFieldError(Constant.ERROR_PASSWORD, "密码不能超过6位!");
		}
	}
	
	@Override
	public String execute() throws Exception {

		User user = userService.login(userName, password);

		if (user == null) {
			this.addFieldError(Constant.ERROR_PASSWORD_FAIL, "该用户不存在或者密码不正确!");
			return Constant.INPUT;
		}
		request.getSession().setAttribute(Constant.USER_INFO, user);
		return SUCCESS;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
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

	
	
}
