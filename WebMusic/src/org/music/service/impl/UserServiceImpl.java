package org.music.service.impl;

import org.music.dbc.HibernateSessionFactory;
import org.music.factory.DAOFactory;
import org.music.pojo.User;
import org.music.service.IUserService;

public abstract class UserServiceImpl implements IUserService {

	@Override
	public void insert(User user) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(int id) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public User findById(int id) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public boolean login(User user) throws Exception {
		boolean flag = false;

		try {
			flag = DAOFactory.getIUserDAOInstance().isLogin(user);

		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		} finally {
				HibernateSessionFactory.closeSession();
		}
		return flag;
	}

}
