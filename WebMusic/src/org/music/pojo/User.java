package org.music.pojo;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class User implements java.io.Serializable {

	// Fields

	private Integer id;
	private String userName;
	private String password;
	private String nickname;
	private String gender;
	private String email;
	private Date registDate;
	private Date birthday;
	private Set questions = new HashSet(0);
	private Set mymusics = new HashSet(0);
	private Set comments = new HashSet(0);
	private Set	replys=new HashSet(0);

	// Constructors

	/** default constructor */
	public User() {
	}

	/** full constructor */
	public User(String userName, String password, String nickname,
			String gender, String email, Date registDate, Date birthday,
			Set questions, Set mymusics, Set comments,Set replys) {
		this.userName = userName;
		this.password = password;
		this.nickname = nickname;
		this.gender = gender;
		this.email = email;
		this.registDate = registDate;
		this.birthday = birthday;
		this.questions = questions;
		this.mymusics = mymusics;
		this.comments = comments;
		this.replys=replys;
	}

	// Property accessors

	public Set getReplys() {
		return replys;
	}

	public void setReplys(Set replys) {
		this.replys = replys;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getNickname() {
		return this.nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getGender() {
		return this.gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getRegistDate() {
		return this.registDate;
	}

	public void setRegistDate(Date registDate) {
		this.registDate = registDate;
	}

	public Date getBirthday() {
		return this.birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public Set getQuestions() {
		return this.questions;
	}

	public void setQuestions(Set questions) {
		this.questions = questions;
	}

	public Set getMymusics() {
		return this.mymusics;
	}

	public void setMymusics(Set mymusics) {
		this.mymusics = mymusics;
	}

	public Set getComments() {
		return this.comments;
	}

	public void setComments(Set comments) {
		this.comments = comments;
	}

}