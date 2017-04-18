package org.music.service;

import java.util.List;
import org.music.pojo.Reply;

public interface IReplyService {

	public List<Reply> getReply(int commentId) throws Exception;
	
	public void DeleteReply(int ReplyId) throws Exception;
	
	public Reply findById(Integer id) throws Exception;
	
	public void insert(Reply reply) throws Exception;
}
