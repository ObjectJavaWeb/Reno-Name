package org.music.test;

import org.hibernate.Query;
import org.hibernate.Transaction;
import org.music.dbc.HibernateSessionFactory;
//<<<<<<< HEAD

//>>> branch 'master' of https://github.com/ObjectJavaWeb/Reno-Name.git

public class Test {

	public static void main(String[] args) throws Exception {
		//String hql="SELECT m.hit FROM Music m WHERE m.id=?";
		Transaction tx=HibernateSessionFactory.getSession().beginTransaction();
		try {
			String hql="UPDATE Music AS m SET m.hit=m.hit+1 WHERE m.id=?";
			Query query=HibernateSessionFactory.getSession().createQuery(hql);
			query.setInteger(0,2);
			query.executeUpdate();
			tx.commit();
		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
		}finally{
			HibernateSessionFactory.closeSession();
		}
		
	}
}
