package org.music.test;

import java.util.Date;
import java.util.List;
import java.util.Set;

import org.music.factory.ServiceFactory;
import org.music.pojo.Comment;
import org.music.pojo.Mymusic;

public class Test {
	private static int musicId;

	public static void main(String[] args) {
		try {
	List<Comment> comment=ServiceFactory.getICommentDAOInstance().findAll("3");
	for (Comment comment2 : comment) {
		System.out.println(comment2.getContent());
	}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//System.out.println(ServiceFactory.getIUserServiceInstance().loginDuplicate("吴文鑫"));
	}
}
