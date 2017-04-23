package org.music.service;

import java.util.List;
import java.util.Set;

import org.music.pojo.Comment;
import org.music.pojo.Reply;

public interface ICommentService {

	//添加评论
	public void insert(Comment comment) throws Exception;

	//删除评论
	public void delete(int commentId) throws Exception;

	//public Reply findById(int commentId) throws Exception;

	//public List findAll(String column) throws Exception;
	
	public List<Comment> getComments(int musicId) throws Exception;
	
	public Set<Reply> getReplies(int musicId) throws Exception;
}
