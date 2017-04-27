package org.music.test.lcy;

import static org.junit.Assert.*;

import java.util.List;
import java.util.Set;

import org.junit.Before;
import org.junit.Test;
import org.music.factory.DAOFactory;
import org.music.factory.MusicServiceFactory;
import org.music.factory.ServiceFactory;
import org.music.pojo.Comment;
import org.music.pojo.Reply;

public class CommentServiceImplTest {

	@Before
	public void setUp() throws Exception {
	}

	@Test
	public void testInsert() throws Exception {
		Comment comment=new Comment();
		comment.setUser(ServiceFactory.getIUserServiceInstance().findById(1));
		comment.setMusic(MusicServiceFactory.getMusicServiceInstace().findById(1));
		ServiceFactory.getICommentDAOInstance().insert(comment);
	}

	@Test
	public void testGetComments() throws Exception {
		List<Comment> comments=ServiceFactory.getICommentDAOInstance().getComments(1);
		for (Comment comment : comments) {
			System.out.println(comment.getContent());
		}
	}

	@Test
	public void testGetReplies() throws Exception {
		Set<Reply> replies=ServiceFactory.getICommentDAOInstance().getReplies(1);
		for (Reply reply : replies) {
			System.out.println(reply.getContent());
		}
	}

}
