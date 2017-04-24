package org.music.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.jms.Session;

import org.hibernate.Transaction;
import org.music.dao.MusicDAO;
import org.music.dbc.HibernateSessionFactory;
import org.music.factory.DAOFactory;
import org.music.factory.MusicFactory;
import org.music.factory.MusicServiceFactory;
import org.music.pojo.Music;
import org.music.pojo.User;
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

	@Override
	public List<Music> getType(String type) throws Exception {
		List<Music> musiclist = null;
		try {
			musiclist = MusicFactory.getMusicDAO().getType(type);
		} catch (Exception e) {
			throw e;
		}finally{
			HibernateSessionFactory.closeSession();
		}
		return musiclist;
	}

	@Override
	public void addHit(Integer musicId) throws Exception {
		Transaction tx=HibernateSessionFactory.getSession().beginTransaction();
		try {
			MusicFactory.getMusicDAO().addHit(musicId);
			tx.commit();
		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
			// TODO: handle exception
		}finally{
			HibernateSessionFactory.closeSession();
		}
		
	}

	@Override
	public List<Music> parade() throws Exception {
		List<Music> list=null;
		try {
			list=MusicFactory.getMusicDAO().parade();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			HibernateSessionFactory.closeSession();
		}
		return list;
	}

	@Override
	public Map<String, Object> getMusicType(int pageNo, int pageSize, String Key,
			String type) throws Exception {
		List<Music> musics=null;
		Map<String, Object> map=new HashMap<String, Object>();
		try {
			musics=MusicFactory.getMusicDAO().getMusicType(pageNo, pageSize, Key, type);
			map.put("musicList", musics);
			int n=MusicFactory.getMusicDAO().getMusicTypeCount(Key, type);
			map.put("count", n);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			HibernateSessionFactory.closeSession();
		}
		return map;
	}


}
