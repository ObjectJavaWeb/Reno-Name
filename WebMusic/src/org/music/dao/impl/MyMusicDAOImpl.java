package org.music.dao.impl;

import java.util.Iterator;
import java.util.List;
import java.util.Set;

import org.hibernate.Query;
import org.music.dao.IMymusicDAO;
import org.music.dbc.HibernateSessionFactory;
import org.music.pojo.Music;
import org.music.pojo.Mymusic;
import org.music.pojo.User;

public class MyMusicDAOImpl implements IMymusicDAO {

	@Override
	public Set<Mymusic> getMymusic(int userId) throws Exception {
		Set<Mymusic> mymusicset = null;
		String hql = "FROM User";
		Query query = HibernateSessionFactory.getSession().createQuery(hql);
		List<User> userlist = query.list();
		Iterator<User> iterator = userlist.iterator();
		while (iterator.hasNext()) {
			User user = iterator.next();
			System.out.println(user.getMymusics());
			if (user.getId().equals(userId)) {
				mymusicset = user.getMymusics();
			}
		}
		System.out.println(query.list());
		return mymusicset;
	}

	@Override
	public Set<Music> getMymusicList(int myMusicId) throws Exception {
		Set<Mymusic> mSet = null;
		String hql = "FROM Mymusic";
		Query query = HibernateSessionFactory.getSession().createQuery(hql);
		List<Mymusic> mList = query.list();
		Iterator<Mymusic> iterator = mList.iterator();
		while (iterator.hasNext()) {
			Mymusic mymusic = iterator.next();
			
			if (mymusic.getId().equals(myMusicId)) {
				mSet = mymusic.getMymusicMusics();
			}

		}
		System.out.println(query.list());
		return null;
	}

	@Override
	public void doCreate(Mymusic vo) throws Exception {
		HibernateSessionFactory.getSession().save(vo);

	}

	@Override
	public void doUpdate(Mymusic mymusic) throws Exception {
		String hql = "UPDATE Mymusic AS m SET m.name=?  WHERE m.id=?";
		Query query = HibernateSessionFactory.getSession().createQuery(hql);
		query.setString(0, mymusic.getName());
		query.setInteger(1, mymusic.getId());
		query.executeUpdate();

	}

	@Override
	public void doRemove(Integer id) throws Exception {
		HibernateSessionFactory.getSession().delete(findById(id));

	}

	@Override
	public List findAll(String column) throws Exception {
		String hql = "FROM Mymusic AS m WHERE m.name LIKE ? ";
		Query query = HibernateSessionFactory.getSession().createQuery(hql);
		query.setString(0, '%'+column+'%');
		return query.list();
	}

	@Override
	public Mymusic findById(Integer id) throws Exception {
		return (Mymusic) HibernateSessionFactory.getSession().get(Mymusic.class, id);
		
	}
	

}
