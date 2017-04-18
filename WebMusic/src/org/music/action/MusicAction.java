package org.music.action;

import java.util.List;

import org.music.factory.MusicServiceFactory;
import org.music.pojo.Music;

import com.opensymphony.xwork2.ActionSupport;

public class MusicAction extends ActionSupport{
	private List<Music> musics;

	public List<Music> getMusics() {
		return musics;
	}

	public void setMusics(List<Music> musics) {
		this.musics = musics;
	}
	@SuppressWarnings("unchecked")
	public String musicList() throws Exception {
		System.out.println("---------------------------------");
		musics=(List<Music>)MusicServiceFactory.getMusicServiceInstace().list(1, 12, "", "name").get("allMusic");
		return "musicList";
	}
}
