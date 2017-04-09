package org.music.pojo;

/**
 * Question entity. @author MyEclipse Persistence Tools
 */

public class Question implements java.io.Serializable {

	// Fields

	private Integer id;
	private User user;
	private String question;
	private String answer;

	// Constructors

	/** default constructor */
	public Question() {
	}

	/** minimal constructor */
	public Question(User user) {
		this.user = user;
	}

	/** full constructor */
	public Question(User user, String question, String answer) {
		this.user = user;
		this.question = question;
		this.answer = answer;
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

	public String getQuestion() {
		return this.question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getAnswer() {
		return this.answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

}