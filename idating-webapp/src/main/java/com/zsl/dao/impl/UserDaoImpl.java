/**
 * 
 */
package com.zsl.dao.impl;


import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.zsl.dao.UserDao;
import com.zsl.idating.entity.User;


/**
 * @author zsl
 *
 */
public class UserDaoImpl extends HibernateDaoSupport implements UserDao {

	/* (non-Javadoc)
	 * @see com.zsl.user.dao.UserDao#getUserByName(java.lang.String)
	 */
	@Override
	public User getUserByName(String userName) {
		User user2 = null;
		List list = getHibernateTemplate().find("from User where userName=?",userName);
		if(list.size() != 0)
			user2 = (User)list.get(0);
		return user2;
	}

	@Override
	public User getUserByEmail(String email) {
		User user2 = null;
		List list = getHibernateTemplate().find("from User where email=?",email);
		if(list.size() != 0)
			user2 = (User)list.get(0);
		return user2;
	}

	@Override
	public void save(User user) {
		Session se = getHibernateTemplate().getSessionFactory().openSession();
	    Transaction tx=se.beginTransaction();
		se.save(user);
		tx.commit();
		se.close();
	}

	@Override
	public User getUserById(long id) {
		User user2 = null;
		List list = getHibernateTemplate().find("from User where id=?",id);
		if(list.size() != 0)
			user2 = (User)list.get(0);
		return user2;
	}

}
