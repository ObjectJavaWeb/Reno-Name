package org.music.test.lcy;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.music.factory.ServiceFactory;
import org.music.pojo.Comment;
import org.music.pojo.Reply;

public class ReplyServiceImplTest {

	@Before
	public void setUp() throws Exception {
	}

	@Test
	public void testFindById() throws Exception {
		Reply reply=ServiceFactory.getIReplyServiceInstance().findById(1);
		System.out.println(reply.getContent());
	}

	@Test
	public void testGetReply() throws Exception {
		List<Reply> replies=ServiceFactory.getIReplyServiceInstance().getReply(1);
		for (Reply reply : replies) {
			System.out.println(reply.getContent());
		}
	}

	@Test
	public void testInsert() throws Exception {
		Reply reply=new Reply();
		reply.setUser(ServiceFactory.getIUserServiceInstance().findById(1));
		ServiceFactory.getIReplyServiceInstance().insert(reply);
	}

}
