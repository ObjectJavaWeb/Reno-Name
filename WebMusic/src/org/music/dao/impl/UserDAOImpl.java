 package org.music.dao.impl;

import java.util.List;

import org.apache.struts2.ServletActionContext;
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
	/**
	 * 修改信息
	 */
	public void doUpdate(User user) throws Exception {

		String hql = "UPDATE User AS u SET u.nickname=? "
				+ ", u.gender=?  , u.birthday=? , u.email=?"
				+ " WHERE u.userName=?";
		Query query = HibernateSessionFactory.getSession().createQuery(hql);
		query.setString(0, user.getNickname());
		query.setString(1, user.getGender());
		query.setDate(2, user.getBirthday());
		query.setString(3, user.getEmail());
		query.setString(4, user.getUserName());
		query.executeUpdate();
		
	}

	/**
	 * 通过回答问题进行修改密码
	 * @param user
	 * @throws Exception
	 */
	public void psUpdate (User user ) throws Exception{
		String hql = " UPDATE User AS p SET p.password=? WHERE p.id=?";
		Query query =HibernateSessionFactory.getSession().createQuery(hql);
		query.setString(0, user.getPassword());
		query.setInteger(1, user.getId());
		query.executeUpdate();
	}
	@Override
	public void doRemove(Integer id) throws Exception {
		// TODO Auto-generated method stub

	}


	public User findById(Integer id) throws Exception {
		// 根据主键完成查询功能,需要传入类型,以及主键值
		return (User) HibernateSessionFactory.getSession().get(User.class, id);

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

			ServletActionContext.getRequest().getSession()
					.setAttribute("user", result);
			return true;
		}
		return false;
	}

	//找回密码中，对用户名的查询
		public Integer isInput(User user) throws Exception {
			String hql = "SELECT u.id FROM User AS u WHERE u.userName = ? ";
			Query query = HibernateSessionFactory.getSession().createQuery(hql);

			query.setString(0, user.getUserName());
			return (Integer)query.list().get(0);
		}
	@Override
	public boolean loginDuplicate(String userName) {
		String hql = "FROM User AS u where u.userName=?";
		Query query = HibernateSessionFactory.getSession().createQuery(hql);
		query.setString(0, userName);
		if (query.list().size() > 0) {
			return true;
		}
		return false;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<String> getUserName() {
		String hql = "SELECT u.userName FROM User AS u";
		Query query = HibernateSessionFactory.getSession().createQuery(hql);
		List<String> userNames = query.list();
		return userNames;
	}
	@Override
	public void doRemove(User user) throws Exception {
		// TODO Auto-generated method stub

	}
}
