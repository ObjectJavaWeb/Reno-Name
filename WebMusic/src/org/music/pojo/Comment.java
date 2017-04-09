package org.music.pojo;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * Comment entity. @author MyEclipse Persistence Tools
 */

public class Comment implements java.io.Serializable {

	// Fields

	private Integer id;
	private User user;
	private Music music;
	private String content;
	private Timestamp cdate;
	private Integer favor;
	private Set replies = new HashSet(0);

	// Constructors

	/** default constructor */
	public Comment() {
	}

	/** minimal constructor */
	public Comment(User user) {
		this.user = user;
	}

	/** full constructor */
	public Comment(User user, Music music, String content, Timestamp cdate,
			Integer favor, Set replies) {
		this.user = user;
		this.music = music;
		this.content = content;
		this.cdate = cdate;
		this.favor = favor;
		this.replies = replies;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

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

	public Integer getFavor() {
		return this.favor;
	}

	public void setFavor(Integer favor) {
		this.favor = favor;
	}

	public Set getReplies() {
		return this.replies;
	}

	public void setReplies(Set replies) {
		this.replies = replies;
	}

}