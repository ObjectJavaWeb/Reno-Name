package org.music.pojo;

import java.util.HashSet;
import java.util.Set;

/**
 * Music entity. @author MyEclipse Persistence Tools
 */

public class Music implements java.io.Serializable {

	// Fields

	private Integer id;
	private String type;
	private String name;
	private String songer;
	private String abum;
	private String image;
	private Integer hit;
	private Set mymusicMusics = new HashSet(0);
	private Set comments = new HashSet(0);

	// Constructors

	/** default constructor */
	public Music() {
	}

	/** full constructor */
	public Music(String type, String name, String songer, String abum,
			String image, Integer hit, Set mymusicMusics, Set comments) {
		this.type = type;
		this.name = name;
		this.songer = songer;
		this.abum = abum;
		this.image = image;
		this.hit = hit;
		this.mymusicMusics = mymusicMusics;
		this.comments = comments;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSonger() {
		return this.songer;
	}

	public void setSonger(String songer) {
		this.songer = songer;
	}

	public String getAbum() {
		return this.abum;
	}

	public void setAbum(String abum) {
		this.abum = abum;
	}

	public String getImage() {
		return this.image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Integer getHit() {
		return this.hit;
	}

	public void setHit(Integer hit) {
		this.hit = hit;
	}

	public Set getMymusicMusics() {
		return this.mymusicMusics;
	}

	public void setMymusicMusics(Set mymusicMusics) {
		this.mymusicMusics = mymusicMusics;
	}

	public Set getComments() {
		return this.comments;
	}

	public void setComments(Set comments) {
		this.comments = comments;
	}

}