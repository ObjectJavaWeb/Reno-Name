package org.music.service.impl;

import java.util.List;

import org.hibernate.Transaction;
import org.music.dao.MusicDAO;
import org.music.dbc.HibernateSessionFactory;
import org.music.factory.MusicFactory;
import org.music.factory.MusicServiceFactory;
import org.music.pojo.Music;
import org.music.service.MusicService;

public class MusicServiceImpl implements MusicService{

	@Override
	public void insert(Music music) throws Exception {
		//加入事物处功能
		Transaction tx=HibernateSessionFactory.getSession().beginTransaction();
		try {
			MusicFactory.getMusicDAO().doCreate(music);
			tx.commit();
		} catch (Exception e) {
			
			e.printStackTrace();
			tx.rollback();
			throw e;
		}finally{
			HibernateSessionFactory.closeSession();
		}
	}

	@Override
	public void delete(int id) throws Exception {
		Transaction tx=HibernateSessionFactory.getSession().beginTransaction();
		try {
			MusicFactory.getMusicDAO().doRemove(id);
			tx.commit();
		} catch (Exception e) {
			e.printStackTrace();
			tx.rollback();
			throw e;
		}finally{
			HibernateSessionFactory.closeSession();
		}
		
	}

	@Override
	public void update(Music music) throws Exception {
		Transaction tx=HibernateSessionFactory.getSession().beginTransaction();
		try {
			MusicFactory.getMusicDAO().doUpdate(music);
			tx.commit();
		} catch (Exception e) {
			e.printStackTrace();
			tx.rollback();;
			throw e;
		}finally{
			HibernateSessionFactory.closeSession();
		}
		
	}

	@Override
	public Music findById(int id) throws Exception {
		
		Music music=null;
		try {
			music = MusicFactory.getMusicDAO().findById(id);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			HibernateSessionFactory.closeSession();
		}
		return music;
		
	}

	@Override
	public List<Music> findAll(String coulmn) throws Exception {
		List mList=null;
		try {
			mList=MusicServiceFactory.getMusicServiceInstace().findAll(coulmn);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw e;
		}
		
		return mList;
	}


}
