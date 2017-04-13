package org.music.pojo;

/**
 * Question entity. @author MyEclipse Persistence Tools
 */

public class Question implements java.io.Serializable {

	// Fields

	private QuestionId id;
	private User user;

	// Constructors

	/** default constructor */
	public Question() {
	}

	/** minimal constructor */
	public Question(QuestionId id) {
		this.id = id;
	}

	/** full constructor */
	public Question(QuestionId id, User user) {
		this.id = id;
		this.user = user;
	}

	// Property accessors

	public QuestionId getId() {
		return this.id;
	}

	public void setId(QuestionId id) {
		this.id = id;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

}