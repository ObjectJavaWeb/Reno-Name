package org.music.action;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.music.factory.MusicServiceFactory;
import org.music.factory.ServiceFactory;
import org.music.pojo.Comment;
import org.music.pojo.Music;
import org.music.pojo.Reply;
import org.music.pojo.User;
import org.music.util.Tools;

import com.opensymphony.xwork2.ActionSupport;

public class CommentAction extends ActionSupport {

	private Comment comment;
	private Set<Comment> commentSet;
	private Reply reply;
	private Set<Reply> replySet;
	private Music music;
	private List<Comment> comments;

	public List<Comment> getComments() {
		return comments;
	}

	public void setComments(List<Comment> comments) {
		this.comments = comments;
	}

	public Music getMusic() {
		return music;
	}

	public void setMusic(Music music) {
		this.music = music;
	}

	public Comment getComment() {
		return comment;
	}

	public void setComment(Comment comment) {
		this.comment = comment;
	}

	public Set<Comment> getCommentSet() {
		return commentSet;
	}

	public void setCommentSet(Set<Comment> commentSet) {
		this.commentSet = commentSet;
	}

	public Reply getReply() {
		return reply;
	}

	public void setReply(Reply reply) {
		this.reply = reply;
	}

	public Set<Reply> getReplySet() {
		return replySet;
	}

	public void setReplySet(Set<Reply> replySet) {
		this.replySet = replySet;
	}
	
/*	//通过传入的音乐Id获取评论
	public String getComments() throws Exception {
		commentSet = ServiceFactory.getICommentDAOInstance().getComments(
				music.getId());
		return "comment";

	}*/

	//通过传入的评论Id获取相应回复
	public String getReplys() throws Exception {
		replySet = ServiceFactory.getICommentDAOInstance().getReplies(
				comment.getId());
		return "reply";
	}
	
	//添加评论
	public String  insertComment() throws Exception{
		Map<String, Object> session = Tools.getSession();
		User user = (User) session.get("user");
		comment.setUser(user);
		comment.setMusic(music);
		//设置评论时间 
		music=MusicServiceFactory.getMusicServiceInstace().findById(music.getId());
		
		comment.setCdate(Tools.getNewDate());
		//插入评论
		ServiceFactory.getICommentDAOInstance().insert(comment);
		//根据歌曲ID查询所有评论
		 comments =ServiceFactory.getICommentDAOInstance().getComments(music.getId());
		return "musicmessage";
	}

	
	
	//删除评论
	public void removeComment() throws Exception{
		ServiceFactory.getICommentDAOInstance().delete(comment.getId());
	}
}
