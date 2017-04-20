package org.music.service.impl;

import java.util.List;
import java.util.Set;

import javax.transaction.Transaction;

import org.music.dbc.HibernateSessionFactory;
import org.music.factory.DAOFactory;
import org.music.pojo.Mymusic;
import org.music.pojo.Reply;
import org.music.service.IReplyService;

public class ReplyServiceImpl implements IReplyService {

		 

	@Override
	public void DeleteReply(int ReplyId) throws Exception {
		Transaction tx = (Transaction) HibernateSessionFactory.getSession()
				.beginTransaction();
		try {
			DAOFactory.getIReplyInstance().DeleteReply(ReplyId);
			tx.commit();
		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
		}
		finally{
			HibernateSessionFactory.closeSession();
		}
	}

	@Override
	public Reply findById(Integer id) throws Exception {
		Reply reply = null;
		try {
			reply = DAOFactory.getIReplyInstance().findById(id);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		return reply;
	}

	@Override
	public List<Reply> getReply(int commentId) throws Exception {
		List<Reply> reply = null;
		try {
			reply = DAOFactory.getIReplyInstance().getReply(commentId);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 finally{
			// HibernateSessionFactory.closeSession();
		 }
		return reply;
	}

	@Override
	public void insert(Reply reply) throws Exception {
		// 加入事务处理功能
				org.hibernate.Transaction tx = HibernateSessionFactory.getSession()
						.beginTransaction();
		try {
			DAOFactory.getIReplyInstance().insert(reply);
			tx.commit();
		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
		}
		finally{
			HibernateSessionFactory.closeSession();
		}
	}

}
