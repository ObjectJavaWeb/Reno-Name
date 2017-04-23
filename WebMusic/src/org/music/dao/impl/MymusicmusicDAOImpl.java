package org.music.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.music.dao.IMymusicmusicDAO;
import org.music.dbc.HibernateSessionFactory;
import org.music.pojo.Music;
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

	@Override
	public List<Music> findByMyMusicIdByUserId(Integer MyMusicId, Integer UserId) {
		System.out.println(MyMusicId+"_____"+UserId);
		String hql="SELECT mm.music "
				+ "FROM MymusicMusic AS mm "
				+ "WHERE mm.mymusic.id=? AND mm.mymusic.user.id=?";
		Query query= HibernateSessionFactory.getSession().createQuery(hql);
		query.setInteger(0, MyMusicId);
		query.setInteger(1, UserId);
		List<Music> list=query.list();
		return list;
	}

}
