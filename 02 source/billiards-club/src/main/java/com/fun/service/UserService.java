package com.fun.service;

import com.fun.entity.User;
import com.fun.exception.BusinessException;

public interface UserService {

	public void registerUser(User user) throws BusinessException;
	
	public User login(String userName, String password);
	
}
