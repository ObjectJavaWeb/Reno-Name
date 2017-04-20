package org.music.dao;

import java.util.List;
import java.util.Set;

import org.music.pojo.Comment;
import org.music.pojo.Reply;


public interface ICommentDAO {

	//添加评论
	public void doCreate(Comment comment) throws Exception;
	
	//删除评论
	public void doRemove(int commentId) throws Exception;
	
	//通过音乐Id获取相应的评论
	public List<Comment> getComments(int musicId) throws Exception;
	
	//通过评论Id获取相应回复
	public Set<Reply> getReplies(int commentId) throws Exception;
	
	//public Reply findById(int commentId) throws Exception;
	
	//public List findAll(String column) throws Exception;
}
