package org.music.service;

import java.util.List;

import org.music.pojo.User;

public interface IUserService {

	public void insert(User user) throws Exception;

	public void delete(int id) throws Exception;
	public void update(User user) throws Exception;
	public void update1(User user) throws Exception;

	public User findById(int id) throws Exception;

	public boolean login(User user) throws Exception;
	public Integer userInput(User user) throws Exception;

	/**
	 * 验证用户名是否重复
	 * 
	 * @param userName
	 *            已经输入用户名
	 * @return 是否重复
	 */
	public boolean loginDuplicate(String userName);
	/**
	 * 获取用户名列表
	 * @return 用户名列表
	 */
	public List<String> getUserName();
}
