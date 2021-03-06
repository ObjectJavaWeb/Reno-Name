package org.music.service.impl;

import java.util.Date;
import java.util.List;

import org.hibernate.Transaction;
import org.music.dbc.HibernateSessionFactory;
import org.music.factory.DAOFactory;
import org.music.pojo.User;
import org.music.service.IUserService;

import com.opensymphony.xwork2.Result;

public class UserServiceImpl implements IUserService {

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
			// HibernateSessionFactory.closeSession();
		}

	}

	@Override
	public void delete(int id) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public User findById(int id) throws Exception {

		return DAOFactory.getIUserDAOInstance().findById(id);
	}

	public boolean login(User user) throws Exception {
		boolean flag = false;

		try {
			flag = DAOFactory.getIUserDAOInstance().isLogin(user);

		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		} finally {
			// HibernateSessionFactory.closeSession();
		}
		return flag;
	}

	@Override
	/**7
	 * 注册是检验用户名是否存在
	 */
	public boolean loginDuplicate(String userName) {
		boolean flag = false;
		try {
			flag = DAOFactory.getIUserDAOInstance().loginDuplicate(userName);
		} catch (Exception e) {
			e.printStackTrace();
			return flag;
		} finally {
			HibernateSessionFactory.closeSession();
		}
		return flag;
	}

	/**
	 * 调用dao里面的isIput方法，判断输入用户名能不能查出用户
	 */
	public Integer userInput(User user) throws Exception {

		return DAOFactory.getIUserDAOInstance().isInput(user);
	}

	@Override
	public List<String> getUserName() {
		List<String> userNameList = null;
		try {
			userNameList = DAOFactory.getIUserDAOInstance().getUserName();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			HibernateSessionFactory.closeSession();
		}
		return userNameList;
	}

	@Override
	/**
	 * 修改个人信息
	 * 
	 */
	public void update(User user) throws Exception {
		// 加入事务处理功能
		Transaction tx = HibernateSessionFactory.getSession()
				.beginTransaction();
		try {
			DAOFactory.getIUserDAOInstance().doUpdate(user);
			tx.commit();
		} catch (Exception e) {
			e.printStackTrace();
			tx.rollback();
			// TODO: handle exception
		} finally {
			HibernateSessionFactory.closeSession();
		}
	}
	public void update1(User user) throws Exception {
		// 加入事务处理功能
		Transaction tx = HibernateSessionFactory.getSession()
				.beginTransaction();
		try {
			DAOFactory.getIUserDAOInstance().psUpdate(user);
			tx.commit();
		} catch (Exception e) {
			e.printStackTrace();
			tx.rollback();
			// TODO: handle exception
		} finally {
			HibernateSessionFactory.closeSession();
		}
	}
}
