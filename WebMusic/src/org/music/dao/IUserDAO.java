package org.music.dao;

import org.music.pojo.User;

public interface IUserDAO extends IDAO<Integer, User> {
	public boolean isLogin(User user) throws Exception;
}
