package edu.graduate.law.platform.application.service;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.graduate.basic.database.BaseDao;
import edu.graduate.law.platform.domain.entity.User;

@Service
@Transactional
public class LoginService extends BaseDao {

	public User login(String username, String password) {
		Criteria criteria = super.createCriteria(User.class);
		criteria.add(Restrictions.eq("username", username));
		criteria.add(Restrictions.eq("password", password));
		return (User) criteria.uniqueResult();
	}

}
