package edu.graduate.law.platform.application.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.graduate.basic.database.BaseDao;
import edu.graduate.law.platform.domain.entity.User;

@Service
@Transactional
public class UserInfoService extends BaseDao {

	public User getUser(String id) {
		return get(User.class, id);
	}

	public void saveUser(User user) {
		if (null == user.getId() || "".equals(user.getId()))
			super.save(user);
		else
			super.update(user);
	}
}
