package com.fun.service.dao;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.Query;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;

import com.fun.entity.User;
import com.fun.service.base.QueryHelper;
import com.fun.service.base.UpdateHelper;

@Repository("userDao")
@Scope("prototype")
public class UserDao extends BaseDao {

	public void save(final User user) {

		daoTemplate.executeUpdate(new UpdateHelper() {
			@Override
			public void execute(EntityManager em) {
				em.persist(user);

			}
		});
	}

	public User query(final String userName) {
		return daoTemplate.executeQuery(new QueryHelper<User>() {
			@Override
			public User execute(EntityManager em) {
				Query query = em.createNativeQuery(
						"select * from user where user_name = :username",
						User.class);
				query.setParameter("username", userName);
				User user = null;
				try {
					user = (User) query.getSingleResult();
				} catch (NoResultException e) {
					return null;
				}
				return user;
			}

		});
	}
	
	public User login(final String userName, final String password) {
		return daoTemplate.executeQuery(new QueryHelper<User>() {

			@Override
			public User execute(EntityManager em) {
				Query query = em.createNativeQuery(
						"select * from user where user_name = :username and password = :password",
						User.class);
				query.setParameter("username", userName);
				query.setParameter("password", password);
				User user = null;
				try {
					user = (User) query.getSingleResult();
				} catch (NoResultException e) {
					return null;
				}
				return user;
			}
		});
	}

}
