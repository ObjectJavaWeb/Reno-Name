package org.music.dao;

import java.util.List;
import java.util.Set;

import org.music.pojo.Comment;
import org.music.pojo.Reply;


public interface ICommentDAO {

	public void doCreate(Comment comment) throws Exception;
	
	public void doRemove(int commentId) throws Exception;
	
	public Set<Comment> getComments(int musicId) throws Exception;
	
	public Set<Reply> getReplies(int commentId) throws Exception;
	
	public Comment findById(int commentId) throws Exception;
	
	public List findAll(String column) throws Exception;
}
