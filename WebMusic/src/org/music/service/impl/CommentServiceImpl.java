package org.music.service.impl;

import java.util.Iterator;
import java.util.List;
import java.util.Set;

import org.hibernate.Query;
import org.hibernate.Transaction;
import org.music.dbc.HibernateSessionFactory;
import org.music.factory.DAOFactory;
import org.music.pojo.Comment;
import org.music.pojo.Music;
import org.music.pojo.Mymusic;
import org.music.pojo.Reply;
import org.music.pojo.User;
import org.music.service.ICommentService;

public class CommentServiceImpl implements ICommentService {

	public void insert(Comment comment) throws Exception {
		// 加入事务处理功能
		Transaction tx = HibernateSessionFactory.getSession()
				.beginTransaction();
		try {
			DAOFactory.getICommentDAOInstance().doCreate(comment);
			tx.commit();
		} catch (Exception e) {
			e.printStackTrace();
			tx.rollback();
			throw e;
		} finally {
			HibernateSessionFactory.closeSession();
		}

	}

	public void delete(int commentId) throws Exception {
		// 加入事务处理功能
		Transaction tx = HibernateSessionFactory.getSession()
				.beginTransaction();
		try {
			DAOFactory.getICommentDAOInstance().doRemove(commentId);
			tx.commit();
		} catch (Exception e) {
			e.printStackTrace();
			tx.rollback();
			throw e;
		} finally {
			HibernateSessionFactory.closeSession();
		}

	}

//	public Reply findById(int commentId) throws Exception {
//		Reply reply = null;
//		try {
//			reply = DAOFactory.getICommentDAOInstance().findById(commentId);
//		} catch (Exception e) {
//			e.printStackTrace();
//			throw e;
//		}
//  	return reply;
//
//	}

//	public List findAll(String column) throws Exception {
//		List cSet = null;
//		try {
//			cSet = DAOFactory.getICommentDAOInstance().findAll(column);
//		} catch (Exception e) {
//			e.printStackTrace();
//			throw e;
//		}
//		return cSet;
//	}

	
	public Set<Comment> getComments(int musicId) throws Exception {
		Set<Comment> commentSet = null;
		try {
			commentSet = DAOFactory.getICommentDAOInstance().getComments(musicId);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}finally{
			HibernateSessionFactory.closeSession();
		}
		return commentSet;

	}

	
	public Set<Reply> getReplies(int commentId) throws Exception {
		Set<Reply> replySet = null;
		try {
			replySet = DAOFactory.getICommentDAOInstance().getReplies(commentId);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}finally{
			HibernateSessionFactory.closeSession();
		}
		return replySet;
	}

}