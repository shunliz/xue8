/**
 * �û�ҵ���߼��ӿ�
 */
package com.zsl.service;

import java.util.List;

import com.zsl.idating.entity.User;


/**
 * @author zsl
 *
 */
public interface UserService {

	public boolean login(User user);

	public void register(User user) throws Exception;

	public User getUserByName(String name);

	public List<User> getUserList();

	public void deleteUser(int id);

	public void addUser(User user);

	public void updateUser(User user);

	public User getUserById(long parseLong);

	public User getByEmail(String email);
}
