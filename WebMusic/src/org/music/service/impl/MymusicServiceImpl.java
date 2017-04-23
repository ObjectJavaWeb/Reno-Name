package org.music.service.impl;

import java.util.List;
import java.util.Set;

import org.hibernate.Transaction;
import org.music.dbc.HibernateSessionFactory;
import org.music.factory.DAOFactory;
import org.music.pojo.Music;
import org.music.pojo.Mymusic;
import org.music.service.IMymusicService;

public class MymusicServiceImpl implements IMymusicService {

	public void insert(Mymusic mymusic) throws Exception {
		// 加入事务处理功能
		Transaction tx = HibernateSessionFactory.getSession()
				.beginTransaction();
		try {
			DAOFactory.getIMymusicDAOInstance().doCreate(mymusic);
			tx.commit();
		} catch (Exception e) {
			e.printStackTrace();
			tx.rollback();
			throw e;
		} finally {
			HibernateSessionFactory.closeSession();
		}

	}

	public void delete(int id) throws Exception {
		Transaction tx = (Transaction) HibernateSessionFactory.getSession()
				.beginTransaction();
		try {
			DAOFactory.getIMymusicDAOInstance().doRemove(id);
			tx.commit();
		} catch (Exception e) {
			e.printStackTrace();
			tx.rollback();
			throw e;
		} finally {
			HibernateSessionFactory.closeSession();
		}

	}

	public Mymusic findById(int id) throws Exception {
		Mymusic mymusic = null;
		try {
			mymusic = DAOFactory.getIMymusicDAOInstance().findById(id);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		return mymusic;

	}

	public void update(Mymusic mymusic) throws Exception {
		Transaction tx = HibernateSessionFactory.getSession()
				.beginTransaction();
		try {
			DAOFactory.getIMymusicDAOInstance().doUpdate(mymusic);
			tx.commit();
		} catch (Exception e) {
			e.printStackTrace();
			tx.rollback();
			throw e;
		} finally {
			HibernateSessionFactory.closeSession();
		}

	}

	public List<Mymusic> findAll(String column) throws Exception {
		List mSet = null;
		try {
			mSet = DAOFactory.getIMymusicDAOInstance().findAll(column);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		return mSet;
	}

	@Override
	public Set<Mymusic> getMymusics(int userId) throws Exception {
		Set<Mymusic> mymusics = null;
		try {
			mymusics = DAOFactory.getIMymusicDAOInstance().getMymusic(userId);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}finally{
			HibernateSessionFactory.closeSession();
		}
		return mymusics;
	}

	@Override
	public Set<Music> getMymusicList(int myMusicId) throws Exception {
		Set<Music> musics = null;
		try {
			musics = DAOFactory.getIMymusicDAOInstance().getMymusicList(myMusicId);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}finally{
			HibernateSessionFactory.closeSession();
		}
		return musics;
	}

}
