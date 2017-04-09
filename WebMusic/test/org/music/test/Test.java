package org.music.test;

import java.util.Date;

import org.hibernate.Transaction;
import org.music.dbc.HibernateSessionFactory;
import org.music.factory.ServiceFactory;
import org.music.pojo.User;

public class Test {
	public static void main(String[] args) {
		User user=new User();
		user.setEmail("2524499314@qq.com");
		user.setGender(true);
		user.setNickname("憧憬未来");
		user.setPassword("123456");
		user.setRegistDate(new Date());
		user.setUserName("lcy");
		Transaction tx = HibernateSessionFactory.getSession()
				.beginTransaction();
		try {
			ServiceFactory.getIUserServiceInstance().insert(user);
			tx.commit();
		} catch (Exception e) {
			tx.rollback();
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
