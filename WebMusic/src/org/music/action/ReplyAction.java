package org.music.action;

import java.security.Provider.Service;
import java.util.List;

import org.music.factory.ServiceFactory;
import org.music.pojo.Comment;
import org.music.pojo.Reply;

import com.opensymphony.xwork2.ActionSupport;

public class ReplyAction extends ActionSupport {
	private List<Reply> replies;
	private Reply reply;
	private Comment comment;
	
	public Comment getComment() {
		return comment;
	}
	public void setComment(Comment comment) {
		this.comment = comment;
	}
	public List<Reply> getReplies() {
		return replies;
	}
	public void setReplies(List<Reply> replies) {
		this.replies = replies;
	}
	public Reply getReply() {
		return reply;
	}
	public void setReply(Reply reply) {
		this.reply = reply;
	}
	public String list() throws Exception{
		replies = ServiceFactory.getIReplyServiceInstance().getReply(comment.getId());
		return "reply_list";  
	}
}
