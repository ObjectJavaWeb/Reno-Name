package org.music.action;

import java.util.List;

import javax.security.auth.kerberos.KerberosKey;

import org.music.factory.MusicFactory;
import org.music.factory.MusicServiceFactory;
import org.music.pojo.Music;
import org.music.service.MusicService;
import org.music.service.impl.MusicServiceImpl;
import org.music.util.Tools;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.Key;

public class MusicAction extends ActionSupport {
	private List<Music> musics;
	private Music music;
	private List<Music> parade;
	private String k;
	
	public String getK() {
		return k;
	}

	public void setK(String k) {
		this.k = k;
	}

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
		musics=(List<Music>) MusicServiceFactory.getMusicServiceInstace().list(1, 12, k, "name").get("allMusic");
		parade=MusicServiceFactory.getMusicServiceInstace().parade();
		return "musicList";
	}
	public String getMusicMessage() throws Exception {
		MusicFactory.getMusicDAO().addHit(music.getId());
		music=MusicServiceFactory.getMusicServiceInstace().findById(music.getId());
		return "musicMessagge";
	}
	
	public String musicType() throws Exception{
		
		musics = MusicServiceFactory.getMusicServiceInstace().getType(Tools.decoder(music.getType(), "UTF-8"));
		return "musicList";
		
	
	}
}
