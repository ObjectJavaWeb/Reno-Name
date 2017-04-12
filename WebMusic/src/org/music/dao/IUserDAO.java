package org.music.dao;

import java.util.List;

import org.music.pojo.User;

public interface IUserDAO extends IDAO<Integer, User> {
	public boolean isLogin(User user) throws Exception;

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
