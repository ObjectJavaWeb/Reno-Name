package org.music.pojo;

/**
 * MymusicMusic entity. @author MyEclipse Persistence Tools
 */

public class MymusicMusic implements java.io.Serializable {

	// Fields

	private Integer id;
	private Mymusic mymusic;
	private Music music;

	// Constructors

	/** default constructor */
	public MymusicMusic() {
	}

	/** full constructor */
	public MymusicMusic(Mymusic mymusic, Music music) {
		this.mymusic = mymusic;
		this.music = music;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Mymusic getMymusic() {
		return this.mymusic;
	}

	public void setMymusic(Mymusic mymusic) {
		this.mymusic = mymusic;
	}

	public Music getMusic() {
		return this.music;
	}

	public void setMusic(Music music) {
		this.music = music;
	}

}