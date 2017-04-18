package org.music.action;

import java.util.List;

import org.music.factory.MusicServiceFactory;
import org.music.pojo.Music;

import com.opensymphony.xwork2.ActionSupport;

public class MusicAction extends ActionSupport{
	private List<Music> musics;
	private Music music;
	private List<Music> parade;
	

	public List<Music> getParade() {
		return parade;
	}

	public void setParade(List<Music> parade) {
		this.parade = parade;
	}

	public Music getMusic() {
		return music;
	}

	public void setMusic(Music music) {
		this.music = music;
	}

	public List<Music> getMusics() {
		return musics;
	}

	public void setMusics(List<Music> musics) {
		this.musics = musics;
	}
	@SuppressWarnings("unchecked")
	public String musicList() throws Exception {
		musics=(List<Music>)MusicServiceFactory.getMusicServiceInstace().list(1, 12, "", "name").get("allMusic");
		parade=(List<Music>)MusicServiceFactory.getMusicServiceInstace().parade();
		return "musicList";
	}
	public String musicMessage() throws Exception {
		MusicServiceFactory.getMusicServiceInstace().addHit(music.getId());
		music=MusicServiceFactory.getMusicServiceInstace().findById(music.getId());
		return "music_message";
	}
}
