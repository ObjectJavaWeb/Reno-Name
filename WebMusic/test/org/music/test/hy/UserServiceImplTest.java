package org.music.test.hy;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.music.factory.ServiceFactory;
import org.music.pojo.User;
import org.music.service.impl.UserServiceImpl;

public class UserServiceImplTest extends UserServiceImpl {

	@Before
	public void setUp() throws Exception {
	}

	@Test
	public void testInsert() throws Exception {
		User user=new User();
		user.setUserName("测试");
		user.setPassword("123456");
		user.setGender("女");
		ServiceFactory.getIUserServiceInstance().insert(user);
	}

	@Test
	public void testFindById() throws Exception {
		User user=ServiceFactory.getIUserServiceInstance().findById(1);
		System.out.println(user.getNickname());
	}

	@Test
	public void testLogin() throws Exception {
		User user=new User();
		user.setUserName("hy");
		user.setPassword("123");
		System.out.println(ServiceFactory.getIUserServiceInstance().login(user));
	}

	@Test
	public void testGetUserName() {
		List<String> list=ServiceFactory.getIUserServiceInstance().getUserName();
		for (String string : list) {
			System.out.println(string);
		}
	}

	@Test
	public void testUpdate() throws Exception {
		User user=new User();
		user.setUserName("hy");
		user.setNickname("黄易");
		ServiceFactory.getIUserServiceInstance().update(user);
	}

}
