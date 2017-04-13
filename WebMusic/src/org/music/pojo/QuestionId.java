package org.music.pojo;

/**
 * QuestionId entity. @author MyEclipse Persistence Tools
 */

public class QuestionId implements java.io.Serializable {

	// Fields

	private Integer id;
	private User user;
	private String question;
	private String answer;

	// Constructors

	/** default constructor */
	public QuestionId() {
	}

	/** minimal constructor */
	public QuestionId(Integer id) {
		this.id = id;
	}

	/** full constructor */
	public QuestionId(Integer id, User user, String question, String answer) {
		this.id = id;
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

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof QuestionId))
			return false;
		QuestionId castOther = (QuestionId) other;

		return ((this.getId() == castOther.getId()) || (this.getId() != null
				&& castOther.getId() != null && this.getId().equals(
				castOther.getId())))
				&& ((this.getUser() == castOther.getUser()) || (this.getUser() != null
						&& castOther.getUser() != null && this.getUser()
						.equals(castOther.getUser())))
				&& ((this.getQuestion() == castOther.getQuestion()) || (this
						.getQuestion() != null
						&& castOther.getQuestion() != null && this
						.getQuestion().equals(castOther.getQuestion())))
				&& ((this.getAnswer() == castOther.getAnswer()) || (this
						.getAnswer() != null && castOther.getAnswer() != null && this
						.getAnswer().equals(castOther.getAnswer())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + (getId() == null ? 0 : this.getId().hashCode());
		result = 37 * result
				+ (getUser() == null ? 0 : this.getUser().hashCode());
		result = 37 * result
				+ (getQuestion() == null ? 0 : this.getQuestion().hashCode());
		result = 37 * result
				+ (getAnswer() == null ? 0 : this.getAnswer().hashCode());
		return result;
	}

}