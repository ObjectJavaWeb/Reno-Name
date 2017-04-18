package org.music.dao.impl;

import java.util.Iterator;
import java.util.List;
import java.util.Set;

import org.hibernate.Hibernate;
import org.hibernate.Query;
import org.music.dao.IReplyDAO;
import org.music.dbc.HibernateSessionFactory;
import org.music.pojo.Mymusic;
import org.music.pojo.Reply;
import org.music.pojo.User;

public class ReplyDAOImpl implements IReplyDAO {

	@Override
	public List<Reply> getReply(int commentId) throws Exception {
		List<Reply> reply = null;
		String hql = "FROM Reply AS r WHERE r.comment.id=?";
		Query query = HibernateSessionFactory.getSession().createQuery(hql);
		query.setInteger(0, commentId);
		List<Reply> lReplies = query.list();
		// List<User> userlist = query.list();
		// Iterator<User> iterator = userlist.iterator();
		// while (iterator.hasNext()) {
		// User user = iterator.next();
		// System.out.println(user.getMymusics());
		// if (user.getId().equals(commentId)) {
		// reply = user.getReply();
		// }
		// }
		// System.out.println(query.list());
		return lReplies;
	}

	@Override
	public void DeleteReply(int ReplyId) throws Exception { 
		HibernateSessionFactory.getSession().delete(findById(ReplyId));

	}

	@Override
	public Reply findById(Integer id) throws Exception {
		return (Reply) HibernateSessionFactory.getSession()
				.get(Reply.class, id);
	}

	@Override
	public void insert(Reply reply) throws Exception {
		HibernateSessionFactory.getSession().save(reply);

	}
}
