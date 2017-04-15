package org.music.dao.impl;

import java.util.List;




import org.hibernate.Query;
import org.music.dao.MusicDAO;
import org.music.dbc.HibernateSessionFactory;
import org.music.pojo.Music;

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
	//根据字段查询所有的信息
	public List findAll(String coulmn) throws Exception {
		String hql="FROM music AS m WHERE m.name LIKE ? ";
		Query query=HibernateSessionFactory.getSession().createQuery(hql);
		query.setString(0, "%"+coulmn+"%");
		return query.list();
	}

}
