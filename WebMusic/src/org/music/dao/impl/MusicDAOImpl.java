package org.music.dao.impl;

import java.util.ArrayList;
import java.util.List;

















import org.hibernate.Query;
import org.music.dao.MusicDAO;
import org.music.dbc.HibernateSessionFactory;
import org.music.pojo.Music;
import org.music.pojo.SongerMusic;

public class MusicDAOImpl implements MusicDAO {

@Override
	public void doCreate(Music vo) throws Exception {
		//通过获取连接池并把vo存放在连接池中		
	HibernateSessionFactory.getSession().save(vo);
		
	}

	@Override
	public void doUpdate(Music vo) throws Exception {
		HibernateSessionFactory.getSession().update(vo);
	}

	@Override
	public void doRemove(Integer id) throws Exception {
		HibernateSessionFactory.getSession().delete(findById(id));		
	}

	@Override
	public Music findById(Integer id) throws Exception {
	return (Music)HibernateSessionFactory.getSession().get(Music.class, id);
		
}

	@Override
	public List<Music> findAll(int pageNo, int pageSize, String keyword,
			String column) throws Exception {
		String hql="FROM Music AS n WHERE n.name LIKE ? OR n.songer LIKE ? OR n.abum LIKE ?";
		Query query=HibernateSessionFactory.getSession().createQuery(hql);
		query.setString(0, "%"+keyword+"%");
		query.setString(1, "%"+keyword+"%");
		query.setString(2, "%"+keyword+"%");
		//分页处理
		query.setFirstResult((pageNo-1)*pageSize);
		query.setMaxResults(pageSize);
		return query.list();
	}

	@Override
	public List<Music> findAll() throws Exception {
		String hql="FROM Music";
		Query query=HibernateSessionFactory.getSession().createQuery(hql);
		return query.list();
	}

	@Override
	public int getAllcount(String keyword, String column) throws Exception {
		String hql="SELECT COUNT(n) FROM Music AS n WHERE n."+column+" LIKE ?";
		Query query=HibernateSessionFactory.getSession().createQuery(hql);
		query.setString(0, "%"+keyword+"%");
		return ((Long)query.uniqueResult()).intValue();
	}

	@Override
	public List<Music> getType(String type) throws Exception {
		String hql = "FROM Music AS m WHERE m.type = ? ";
		Query query = HibernateSessionFactory.getSession().createQuery(hql);
		query.setString(0, type);
		return query.list();
	}

	@Override
	public void addHit(Integer musicID) throws Exception {
		String hql="UPDATE Music AS m SET m.hit=m.hit+1 WhERE id=?";
		Query query=HibernateSessionFactory.getSession().createQuery(hql);
		query.setInteger(0, musicID);
		query.executeUpdate();
	}

	@Override
	public List<Music> parade() throws Exception {
		String hql="FROM Music AS m ORDER BY m.hit desc";
		Query query=HibernateSessionFactory.getSession().createQuery(hql);
		query.setFirstResult(0);
		query.setMaxResults(10);
		return query.list();
	}

	@Override
	public List<SongerMusic> getSonger(int pageNo, int pageSize, String Key)
			throws Exception {
		String hql="SELECT m.songer as name, COUNT(m) as num FROM Music AS m WHERE m.songer LIKE ? ORDER BY m.songer ";
		Query query=HibernateSessionFactory.getSession().createQuery(hql);
		query.setString(0, "%"+Key+"%");
		query.setFirstResult(pageNo);
		query.setMaxResults(pageSize);
		List<Object> objects=query.list();
		List<SongerMusic> songerMusics=new ArrayList<SongerMusic>();
		System.out.println(((SongerMusic)objects.get(0)).getName());
		return songerMusics;
	}

	@Override
	public List<Music> getMusicType(int pageNo, int pageSize, String Key,
			String type) throws Exception {
		String hql="FROM Music AS m WhERE m.type=? AND m.name LIKE ?";
		Query query=HibernateSessionFactory.getSession().createQuery(hql);
		query.setString(0, type);
		query.setString(1, "%"+Key+"%");

		query.setFirstResult(pageNo);
		query.setMaxResults(pageSize);
		return query.list();
	}

	@Override
	public int getMusicTypeCount(String keyword, String type) throws Exception {
		String hql="SELECT COUNT(m) FROM Music AS m WHERE m.type=? AND m.name LIKE ?";
		Query query=HibernateSessionFactory.getSession().createQuery(hql);
		query.setString(0, type);
		query.setString(1, "%"+keyword+"%");
		return ((Long)query.uniqueResult()).intValue();
	}


}
