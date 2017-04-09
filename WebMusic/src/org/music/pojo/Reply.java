package org.music.pojo;

import java.sql.Timestamp;

/**
 * Reply entity. @author MyEclipse Persistence Tools
 */

public class Reply implements java.io.Serializable {

	// Fields

	private Integer id;
	private Comment comment;
	private String content;
	private Timestamp replylDate;

	// Constructors

	/** default constructor */
	public Reply() {
	}

	/** minimal constructor */
	public Reply(Comment comment) {
		this.comment = comment;
	}

	/** full constructor */
	public Reply(Comment comment, String content, Timestamp replylDate) {
		this.comment = comment;
		this.content = content;
		this.replylDate = replylDate;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Comment getComment() {
		return this.comment;
	}

	public void setComment(Comment comment) {
		this.comment = comment;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Timestamp getReplylDate() {
		return this.replylDate;
	}

	public void setReplylDate(Timestamp replylDate) {
		this.replylDate = replylDate;
	}

}