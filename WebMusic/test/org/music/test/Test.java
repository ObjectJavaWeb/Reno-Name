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
		user.setGender("男");
		user.setNickname("憧憬未来");
		user.setPassword("123456");
		user.setRegistDate(new Date());
		user.setUserName("lcy");
		HibernateSessionFactory.getSession().save(user);
	}
}
