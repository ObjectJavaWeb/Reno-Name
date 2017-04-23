package org.music.factory;

import org.music.dao.ICommentDAO;
import org.music.dao.IMymusicDAO;
import org.music.dao.IMymusicmusicDAO;
import org.music.dao.IQuestion;
import org.music.dao.IReplyDAO;
import org.music.dao.IUserDAO;
import org.music.dao.impl.CommentDAOImpl;
import org.music.dao.impl.MyMusicDAOImpl;
import org.music.dao.impl.MymusicmusicDAOImpl;
import org.music.dao.impl.QuestionDAOImpl;
import org.music.dao.impl.ReplyDAOImpl;
import org.music.dao.impl.UserDAOImpl;

public class DAOFactory {
	public static IUserDAO getIUserDAOInstance() {
		return new UserDAOImpl();
	}
	public static IMymusicDAO getIMymusicDAOInstance() {
		
		return new MyMusicDAOImpl();
	}


    public static ICommentDAO getICommentDAOInstance() {
		return new CommentDAOImpl();
		
	}

	public static IQuestion getIQuestionInstance(){
		return new QuestionDAOImpl();
	}
	public static IReplyDAO getIReplyInstance(){
		return new ReplyDAOImpl();
	}
	public  static IMymusicmusicDAO getIMymusicmusicDAOInstance(){
		return new MymusicmusicDAOImpl();
	}

}
