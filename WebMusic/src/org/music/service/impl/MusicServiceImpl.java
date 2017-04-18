package org.music.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.Transaction;
import org.music.dbc.HibernateSessionFactory;
import org.music.factory.MusicFactory;
import org.music.pojo.Music;
import org.music.service.IMusicService;

public class MusicServiceImpl implements IMusicService{

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
		//加入事物处理功能
		Transaction tx=HibernateSessionFactory.getSession().beginTransaction();
		try {
			MusicFactory.getMusicDAO().doRemove(id);
			//当执行完没错的时候提交
			tx.commit();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			//当执行异常时回滚
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
	public Map<String, Object> list(int pageNo, int pageSize, String keyword,
			String column) throws Exception {
		Map<String, Object> map=new HashMap<String, Object>();
		try {
			//allNews当前页的查询数据
			map.put("allMusic", MusicFactory.getMusicDAO().findAll(pageNo,
					pageSize, keyword, column));
			//allCount当前的分页数
			map.put("allCount", MusicFactory.getMusicDAO().getAllcount(keyword, column));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw e;
		}finally{
			HibernateSessionFactory.closeSession();
		}
		
		return map;
	
	}


}
