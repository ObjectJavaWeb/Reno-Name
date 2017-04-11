package org.music.service.impl;

import java.util.Date;
import java.util.List;

import org.hibernate.Transaction;
import org.music.dbc.HibernateSessionFactory;
import org.music.factory.DAOFactory;
import org.music.pojo.User;
import org.music.service.IUserService;

public  class UserServiceImpl implements IUserService {

	@Override
	public void insert(User user) throws Exception {
		// 加入事务处理功能
				Transaction tx = HibernateSessionFactory.getSession()
						.beginTransaction();
				try {
					DAOFactory.getIUserDAOInstance().doCreate(user);
					tx.commit();
				} catch (Exception e) {
					e.printStackTrace();
					tx.rollback();
					throw e;
				} finally {
					HibernateSessionFactory.closeSession();
				}

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

	@Override
	public boolean loginDuplicate(String userName) {
		boolean flag=false;
		try {
			flag=DAOFactory.getIUserDAOInstance().loginDuplicate(userName);
		} catch (Exception e) {
			e.printStackTrace();
			return flag;
		}finally{
			HibernateSessionFactory.closeSession();
		}
		return flag;
	}

	@Override
	public List<String> getUserName() {
		List<String> userNameList=null;
		try {
			userNameList=DAOFactory.getIUserDAOInstance().getUserName();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			HibernateSessionFactory.closeSession();
		}
		return userNameList;
	}

}
