package org.music.service;

import org.music.pojo.User;

public interface IUserService {

	public void insert(User user) throws Exception;

	public void delete(int id) throws Exception;

	public User findById(int id) throws Exception;

	public boolean login(User user) throws Exception;

	/**
	 * 验证用户名是否重复
	 * 
	 * @param userName
	 *            已经输入用户名
	 * @return 是否重复
	 */
	public boolean loginDuplicate(String userName);
}
