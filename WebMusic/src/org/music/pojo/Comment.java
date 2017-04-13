package org.music.pojo;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * Comment entity. @author MyEclipse Persistence Tools
 * 评论
 */

public class Comment implements java.io.Serializable {

	// Fields

	private Integer id;
	private User user;
	private Music music;
	private String content;
	private Timestamp cdate;
	private Set replies = new HashSet(0);

	// Constructors

	/** default constructor */
	public Comment() {
	}

	/** full constructor */
	public Comment(User user, Music music, String content, Timestamp cdate,
			Set replies) {
		this.user = user;
		this.music = music;
		this.content = content;
		this.cdate = cdate;
		this.replies = replies;
	}

	// Property accessors
	/**
	 * 获取唯一标识
	 * @return 唯一标识
	 */
	public Integer getId() {
		return this.id;
	}
	/**
	 * 设置唯一标识
	 * @param id 唯一标识
	 */
	public void setId(Integer id) {
		this.id = id;
	}
	/**
	 * 获取所属用户
	 * @return 所属用户
	 */
	public User getUser() {
		return this.user;
	}
	/**
	 * 设置当前用户
	 * @param user 当前用户
	 */
	public void setUser(User user) {
		this.user = user;
	}
	/**
	 * 获取所属歌曲
	 * @return 所属歌曲
	 */
	public Music getMusic() {
		return this.music;
	}
	
	public void setMusic(Music music) {
		this.music = music;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Timestamp getCdate() {
		return this.cdate;
	}

	public void setCdate(Timestamp cdate) {
		this.cdate = cdate;
	}

	public Set getReplies() {
		return this.replies;
	}

	public void setReplies(Set replies) {
		this.replies = replies;
	}

}