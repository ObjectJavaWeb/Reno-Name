package org.music.factory;

import org.music.service.ICommentService;
import org.music.service.IMymusicService;
import org.music.service.IQuestionService;
import org.music.service.IUserService;
import org.music.service.impl.CommentServiceImpl;
import org.music.service.impl.MymusicServiceImpl;
import org.music.service.impl.QuestionServiceImpl;
import org.music.service.impl.UserServiceImpl;

public class ServiceFactory {
	public static IUserService getIUserServiceInstance() {
		return new UserServiceImpl();

	}
	public static IMymusicService getIMymusicServiceInstance(){
		return new MymusicServiceImpl();
	}

	public static ICommentService getICommentDAOInstance() {
		return new CommentServiceImpl();
	}
	public static IQuestionService getIQuestionServiceInstance(){
		return new QuestionServiceImpl();
	}
}
