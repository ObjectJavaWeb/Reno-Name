package org.music.dao.impl;

import java.util.Iterator;
import java.util.List;
import java.util.Set;

import org.hibernate.Query;
import org.music.dao.ICommentDAO;
import org.music.dbc.HibernateSessionFactory;
import org.music.pojo.Comment;
import org.music.pojo.Music;
import org.music.pojo.Mymusic;
import org.music.pojo.Reply;
import org.music.pojo.User;



public class CommentDAOImpl implements ICommentDAO {

	public void doCreate(Comment comment) throws Exception {
		HibernateSessionFactory.getSession().save(comment);

	}

	public void doRemove(int commentId) throws Exception {
		HibernateSessionFactory.getSession().delete(commentId);

	}

	public Set<Comment> getComments(int musicId)
			throws Exception {
		Set<Comment> comments = null;
		String hql = "FROM Music";
		Query query = HibernateSessionFactory.getSession().createQuery(hql);
		List<Music> musiclist = query.list();
		Iterator<Music> iterator = musiclist.iterator();
		while (iterator.hasNext()) {
			Music music = iterator.next();
			System.out.println(music.getComments());
			if (music.getId().equals(musicId)) {
				comments = music.getComments();
			}
		}
		System.out.println(query.list());
		return comments;
	}

	public Set<Reply> getReplies(int commentId) throws Exception {
		Set<Reply> replySet = null;
		String hql = "FROM Comment";
		Query query = HibernateSessionFactory.getSession().createQuery(hql);
		List<Comment> commentlist = query.list();
		Iterator<Comment> iterator = commentlist.iterator();
		while (iterator.hasNext()) {
			Comment comment = iterator.next();
			System.out.println(comment.getReplies());
			if (comment.getId().equals(commentId)) {
				replySet = comment.getReplies();
			}
		}
		System.out.println(query.list());
		return replySet;
		
		
	}

//	public Reply findById(int commentId) throws Exception {
//		return (Reply) HibernateSessionFactory.getSession().get(Comment.class, commentId);
//	}

//	public List findAll(String column) throws Exception {
//		String hql = "FROM Comment AS n WHERE n.music LIKE ?  ";
//		Query query = HibernateSessionFactory.getSession().createQuery(hql);
//		query.setString(0, "%" +column + "%");
//		return query.list();
//	}

}
