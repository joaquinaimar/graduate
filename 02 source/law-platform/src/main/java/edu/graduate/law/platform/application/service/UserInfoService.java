package edu.graduate.law.platform.application.service;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.graduate.basic.database.BaseDao;
import edu.graduate.basic.io.PageResponse;
import edu.graduate.basic.io.extjs.ExtPageRequest;
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

	@SuppressWarnings("unchecked")
	public PageResponse<User> searchUserInfo(User user,
			ExtPageRequest pageRequest) {
		Criteria criteria = super.createCriteria(User.class);
		if (null != user.getUsername() && !"".equals(user.getUsername()))
			criteria.add(Restrictions.like("username", "%" + user.getUsername()
					+ "%"));
		return super.pageQuery(criteria, pageRequest);
	}
}
