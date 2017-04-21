package org.music.service.impl;

import org.hibernate.Transaction;
import org.music.dbc.HibernateSessionFactory;
import org.music.factory.DAOFactory;
import org.music.pojo.Mymusic;
import org.music.pojo.MymusicMusic;
import org.music.service.IMymusicmusicService;

public class MymusicmusicServiceImpl implements IMymusicmusicService {

	@Override
	public void insert(MymusicMusic mymusicMusic) throws Exception {
		Transaction tx = HibernateSessionFactory.getSession()
				.beginTransaction();
		try {
			DAOFactory.getIMymusicmusicDAOInstance().doCreate(mymusicMusic);
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
		// TODO Auto-generated method stub

	}

	@Override
	public Mymusic findById(int id) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(Mymusic mymusic) throws Exception {
		// TODO Auto-generated method stub

	}

}
