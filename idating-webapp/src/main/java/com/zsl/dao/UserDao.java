/**
 * 
 */
package com.zsl.dao;

import com.zsl.idating.entity.User;


/**
 * @author zsl
 *
 */
public interface UserDao {
	public User getUserByName(String userName);

	public User getUserByEmail(String email);

	public void save(User user);

	public User getUserById(long id);
}
