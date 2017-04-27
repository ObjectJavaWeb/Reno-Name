package org.music.zrk;

import static org.junit.Assert.*;

import java.security.Provider.Service;
import java.util.Map;

import org.junit.Test;
import org.music.factory.DAOFactory;
import org.music.factory.ServiceFactory;
import org.music.pojo.Mymusic;
import org.music.pojo.User;
import org.music.util.Tools;

public class MymusicServiceImplTest {

	@Test
	//插入歌单测试
	public void testInsert() throws Exception {
		User user =new User();
		user.setId(1);
		Mymusic mymusic = new Mymusic();
		mymusic.setName("我爱你");
		mymusic.setUser(user);
		ServiceFactory.getIMymusicServiceInstance().insert(mymusic);
	}

	@Test
	//删除歌单测试
	public void testDelete() throws Exception {
		ServiceFactory.getIMymusicServiceInstance().delete(1);
	}

	@Test
	//查询歌单测试
	public void testFindById() throws Exception {
		DAOFactory.getIMymusicDAOInstance().findById(5);
		
	}

	@Test
	//修改歌单查询
	public void testUpdate() throws Exception {
	
		Mymusic mymusic = new Mymusic();

		mymusic.setId(1);
		mymusic.setName("我不爱你");
		DAOFactory.getIMymusicDAOInstance().doUpdate(mymusic);
	}

	@Test
	public void testFindAll() {
		fail("Not yet implemented");
	}

	@Test
	//
	public void testGetMymusics() throws Exception {
		
		DAOFactory.getIMymusicDAOInstance().getMymusic(1);
	}

	@Test
	//得到歌单测试
	public void testGetMymusicList() throws Exception {
		DAOFactory.getIMymusicDAOInstance().getMymusicList(5);
	}

}
