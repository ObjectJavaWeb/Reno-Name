package org.music.dao.impl;

import java.util.List;

import javax.persistence.criteria.From;

import org.hibernate.Query;
import org.music.dao.IMusicDAO;
import org.music.dbc.HibernateSessionFactory;
import org.music.pojo.Music;

public class MusicDAOImpl implements IMusicDAO {

public void doCreate(Music vo) throws Exception {
		//通过获取连接池并把vo存放在连接池中		
	HibernateSessionFactory.getSession().save(vo);
		
	}

	public void doUpdate(Music vo) throws Exception {
		HibernateSessionFactory.getSession().update(vo);
	}

	public void doRemove(Integer id) throws Exception {
		HibernateSessionFactory.getSession().delete(findById(id));		
	}

	public Music findById(Integer id) throws Exception {
	return (Music)HibernateSessionFactory.getSession().get(Music.class, id);
		
}

	public List<Music> findAll(int pageNo, int pageSize, String keyword,
			String column) throws Exception {
		String hql="FROM Music AS n WHERE n."+column+" LIKE ?";
		Query query=HibernateSessionFactory.getSession().createQuery(hql);
		query.setString(0, "%"+keyword+"%");
		//分页处理
		query.setFirstResult((pageNo-1)*pageSize);
		query.setMaxResults(pageSize);
		return query.list();
	}

	public List<Music> findAll() throws Exception {
		String hql="FROM Music";
		Query query=HibernateSessionFactory.getSession().createQuery(hql);
		return query.list();
	}

	public int getAllcount(String keyword, String column) throws Exception {
		String hql="SELECT COUNT(n) FROM Music AS n WHERE n."+column+" LIKE ?";
		Query query=HibernateSessionFactory.getSession().createQuery(hql);
		query.setString(0, "%"+keyword+"%");
		return ((Long)query.uniqueResult()).intValue();
	}

	@Override
	public void addHit(Integer musicId) throws Exception {
		String hql="UPDATE Music AS m SET m.hit=m.hit+1 WHERE m.id=?";
		Query query=HibernateSessionFactory.getSession().createQuery(hql);
		query.setInteger(0,musicId);
		query.executeUpdate();
	}

	@Override
	public List<Music> parade() throws Exception {
		String hql="FROM Music AS m ORDER BY m.hit DESC";
		Query query=HibernateSessionFactory.getSession().createQuery(hql);
		query.setFirstResult(0);
		query.setMaxResults(15);
		return query.list();
	}


}
