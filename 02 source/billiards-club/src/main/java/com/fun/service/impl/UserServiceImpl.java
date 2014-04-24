package com.fun.service.impl;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.fun.entity.User;
import com.fun.exception.BusinessException;
import com.fun.exception.Errors;
import com.fun.service.UserService;
import com.fun.service.dao.UserDao;

@Service("userService")
@Scope("prototype")
public class UserServiceImpl implements UserService {

	@Resource(name="userDao")
	private UserDao userDao;

	@Override
	public void registerUser(User user) throws BusinessException {
		User oldUser = userDao.query(user.getUserName());
		if (oldUser == null) {
			userDao.save(user);
		} else {
			throw new BusinessException(Errors.ERROR_CODE_USER_EXIST,
					Errors.ERROR_MSG_USER_EXIST);
		}
	}

	@Override
	public User login(String userName, String password) {
		return userDao.login(userName, password);
	}

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	

}
