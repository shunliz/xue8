/**
 * 
 */
package com.zsl.idating.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.annotation.Propagation;

import com.zsl.dao.UserDao;
import com.zsl.idating.entity.User;
import com.zsl.service.UserService;

/**
 * @author zsl
 *
 */
@Service("UserService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class UserServiceImpl implements UserService{
	@Autowired
	private UserDao userDao;
	
	public boolean login(User user){
		User user2 = userDao.getUserByName(user.getUsername());
		if(user2.getPassword().equals(user.getPassword())){
			return true;
		}else{
			return false;
		}
		
	}

	@Override
	public void register(User user) throws Exception {
		if(userDao.getUserByName(user.getUsername()) != null){
			throw new Exception("Email alread used!");
		}
		
		userDao.save(user);
	}

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
	@Override
	public User getUserByName(String name) {
		User user = userDao.getUserByName(name);
		return user;
	}

	@Override
	public List<User> getUserList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteUser(int id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void addUser(User user) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateUser(User user) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public User getUserById(long id) {
		return userDao.getUserById(id);
	}

	@Override
	public User getByEmail(String email) {
		return userDao.getUserByEmail(email);
	}
}
