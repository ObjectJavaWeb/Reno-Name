package org.music.dao.impl;

import org.music.dao.IMymusicmusicDAO;
import org.music.dbc.HibernateSessionFactory;
import org.music.pojo.MymusicMusic;

public class MymusicmusicDAOImpl implements IMymusicmusicDAO {

	@Override
	
	public void doUpdate(MymusicMusic vo) throws Exception {
		

	}

	@Override
	public void doRemove(Integer id) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public MymusicMusic findById(Integer id) throws Exception {
		return null;
	}
	/**
	 * 将歌曲加入歌单 
	 */
	@Override
	public void doCreate(MymusicMusic vo) throws Exception {
		HibernateSessionFactory.getSession().save(vo);

	}

}
