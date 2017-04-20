package org.music.action;

import java.security.Provider.Service;
import java.util.List;

import org.music.factory.ServiceFactory;
import org.music.pojo.Comment;
import org.music.pojo.Reply;
import org.music.pojo.User;
import org.music.util.Tools;

import com.opensymphony.xwork2.ActionSupport;

public class ReplyAction extends ActionSupport {
	private List<Reply> replies;
	private Reply reply;
	private User user;
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}

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
	
	public void insertReply()throws Exception{
		System.out.println(user.getId());
		//设置回复时间
		reply.setReplyDate(Tools.getNewDate());
		ServiceFactory.getIReplyServiceInstance().insert(reply);
	}
}
