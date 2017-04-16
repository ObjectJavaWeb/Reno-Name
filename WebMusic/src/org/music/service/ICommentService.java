package org.music.service;

import java.util.List;
import java.util.Set;

import org.music.pojo.Comment;
import org.music.pojo.Reply;

public interface ICommentService {

	public void insert(Comment comment) throws Exception;

	public void delete(int commentId) throws Exception;

	public Comment findById(int commentId) throws Exception;

	public List findAll(String column) throws Exception;
	
	public Set<Comment> getComments(int musicId) throws Exception;
}
