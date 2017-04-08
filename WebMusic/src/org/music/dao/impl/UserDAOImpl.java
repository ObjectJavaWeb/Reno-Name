package org.music.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.music.dao.IUserDAO;
import org.music.dbc.HibernateSessionFactory;
import org.music.pojo.User;

public class UserDAOImpl implements IUserDAO {

	@Override
	public void doCreate(User vo) throws Exception {
		HibernateSessionFactory.getSession().save(vo);

	}

	@Override
	public void doUpdate(User vo) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void doRemove(Integer id) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public List<User> findAll() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User findById(Integer id) throws Exception {
		// 根据主键完成查询功能,需要传入类型,以及主键值
		return  (User)HibernateSessionFactory.getSession().get(User.class, id);

	}
	@Override
	public boolean isLogin(User user) throws Exception {
		String hql = "FROM User AS u WHERE u.userName = ? AND u.password = ?";
		Query query = HibernateSessionFactory.getSession().createQuery(hql);

		query.setString(0, user.getUserName());
		query.setString(1, user.getPassword());

		List<User> allUser = query.list();

		if (allUser != null && allUser.size() > 0) {
			User result = (User) allUser.get(0);

			// 将结果设置到user中,根据按引用传递,外面的对象也自动设置好了属性.
			user.setRegistDate(result.getRegistDate());

			return true;
		}

		return false;
	}

}


