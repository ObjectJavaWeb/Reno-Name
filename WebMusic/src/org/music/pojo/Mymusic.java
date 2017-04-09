package org.music.pojo;

import java.util.HashSet;
import java.util.Set;

/**
 * Mymusic entity. @author MyEclipse Persistence Tools
 */

public class Mymusic implements java.io.Serializable {

	// Fields

	private Integer id;
	private User user;
	private String name;
	private Set musicMymusics = new HashSet(0);

	// Constructors

	/** default constructor */
	public Mymusic() {
	}

	/** full constructor */
	public Mymusic(User user, String name, Set musicMymusics) {
		this.user = user;
		this.name = name;
		this.musicMymusics = musicMymusics;
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

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Set getMusicMymusics() {
		return this.musicMymusics;
	}

	public void setMusicMymusics(Set musicMymusics) {
		this.musicMymusics = musicMymusics;
	}

}