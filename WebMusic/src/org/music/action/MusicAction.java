package org.music.action;

import java.util.List;

import net.sf.json.JSONArray;

import org.music.factory.MusicServiceFactory;
import org.music.factory.ServiceFactory;
import org.music.pojo.Comment;
import org.music.pojo.Music;

import com.opensymphony.xwork2.ActionSupport;

public class MusicAction extends ActionSupport {
	private List<Comment> comments;

	public List<Comment> getComments() {
		return comments;
	}

	public void setComments(List<Comment> comments) {
		this.comments = comments;
	}

	private List<Music> musics;
	private Music music;
	private List<Music> parade;
	private String result;

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

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

	@SuppressWarnings("unchecked")
	public String musicList() throws Exception {
		musics=(List<Music>) MusicServiceFactory.getMusicServiceInstace().list(1, 12, k, "name").get("allMusic");
		parade=MusicServiceFactory.getMusicServiceInstace().parade();

		musics = (List<Music>) MusicServiceFactory.getMusicServiceInstace()
				.list(1, 12, "", "name").get("allMusic");
		parade = MusicServiceFactory.getMusicServiceInstace().parade();
		return "musicList";
	}

	public String getMusicMessage() throws Exception {
		MusicServiceFactory.getMusicServiceInstace().addHit(music.getId());
		music = MusicServiceFactory.getMusicServiceInstace().findById(
				music.getId());
		// 根据歌曲ID查询所有评论
		comments = ServiceFactory.getICommentDAOInstance().getComments(
				music.getId());
		return "musicMessagge";
	}

	public String musicType() throws Exception {
		System.out.println(music.getType());
		musics = MusicServiceFactory.getMusicServiceInstace().getType(
				music.getType());
		JSONArray jArray=JSONArray.fromObject(musics);
		result=jArray.toString();
		System.out.println(result);
		return SUCCESS;
	}
}
