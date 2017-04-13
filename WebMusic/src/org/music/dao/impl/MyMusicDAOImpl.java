package org.music.dao.impl;

import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.jws.soap.SOAPBinding.Use;

import org.hibernate.Hibernate;
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
			if (user.getId().equals(userId)){
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
		Query query =HibernateSessionFactory.getSession().createQuery(hql);
		List<Mymusic> mList =query.list();
	    Iterator<Mymusic> iterator = mList.iterator();
	    while (iterator.hasNext()) {	
			Mymusic mymusic = iterator.next();
			System.out.println(mymusic.getMusicMymusics());
			if(mymusic.getId().equals(myMusicId)){
				mSet = mymusic.getMusicMymusics();
			}
			
		}
	    System.out.println(query.list());
		return null;
	}

	@Override
	public void doCreate(Mymusic vo) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void doUpdate(Mymusic vo) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void doRemove(Integer id) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Mymusic> findAll() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Mymusic findById(Integer id) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
}
