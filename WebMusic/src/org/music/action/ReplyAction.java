package org.music.action;

import java.security.Provider.Service;
import java.util.List;
import java.util.Map;

import org.music.factory.MusicServiceFactory;
import org.music.factory.ServiceFactory;
import org.music.pojo.Comment;
import org.music.pojo.Music;
import org.music.pojo.Reply;
import org.music.pojo.User;
import org.music.util.Tools;

import com.opensymphony.xwork2.ActionSupport;

public class ReplyAction extends ActionSupport {
	private List<Reply> replys;
	
	public List<Reply> getReplys() {
		return replys;
	}

	public void setReplys(List<Reply> replys) {
		this.replys = replys;
	}

	private Music music;
	private List<Comment> comments;

	public Music getMusic() {
		return music;
	}

	public void setMusic(Music music) {
		this.music = music;
	}

	public List<Comment> getComments() {
		return comments;
	}

	public void setComments(List<Comment> comments) {
		this.comments = comments;
	}

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

	public String list() throws Exception {
		replies = ServiceFactory.getIReplyServiceInstance().getReply(
				comment.getId());
		return "reply_list";
	}

	public String insertReply() throws Exception {
	/*	Map<String, Object> session = Tools.getSession();
		User user = (User) session.get("user");*/
		comment.setUser(user);
		comment.setMusic(music);
		// 传入被评论的内容ID
		reply.setComment(comment);
		reply.setUser(user);
		music=MusicServiceFactory.getMusicServiceInstace().findById(music.getId());
		// 设置回复时间
		reply.setReplyDate(Tools.getNewDate());
		ServiceFactory.getIReplyServiceInstance().insert(reply);
		//根据传入被评论的内容ID查询回复
		replys = ServiceFactory.getIReplyServiceInstance().getReply(comment.getId());
		// 根据歌曲ID查询所有评论
		comments = ServiceFactory.getICommentDAOInstance().getComments(
				music.getId());
		return "musicmessage";
	}
}
