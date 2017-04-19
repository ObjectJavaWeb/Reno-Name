package org.music.action;

import java.util.List;

import org.music.factory.MusicFactory;
import org.music.pojo.Music;

import com.opensymphony.xwork2.ActionSupport;

public class MusicAction extends ActionSupport {
	private List<Music> musics;
	private Music music;
	private List<Music> parade;
	
	public List<Music> getParade() {
		return parade;
	}

	public void setParade(List<Music> parade) {
		this.parade = parade;
	}

	public List<Music> getMusics() {
		return musics;
	}

	public void setMusics(List<Music> musics) {
		this.musics = musics;
	}

	public Music getMusic() {
		return music;
	}

	public void setMusic(Music music) {
		this.music = music;
	}
	public String musicList() throws Exception {
		musics=MusicFactory.getMusicDAO().findAll(1, 12, "", "name");
		parade=MusicFactory.getMusicDAO().parade();
		return "musicList";
	}
	public String getMusicMessage() throws Exception {
		MusicFactory.getMusicDAO().addHit(music.getId());
		music=MusicFactory.getMusicDAO().findById(music.getId());
		return "musicMessagge";
	}
}
