package org.music.action;

import java.util.List;

import org.music.factory.MusicServiceFactory;
import org.music.factory.ServiceFactory;
import org.music.pojo.Comment;
import org.music.pojo.Music;
import org.music.util.Tools;

import com.opensymphony.xwork2.ActionSupport;

public class MusicAction extends ActionSupport {
	private List<Comment> comments;
	private String type;

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

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
		System.out.println(k);
		musics=(List<Music>) MusicServiceFactory.getMusicServiceInstace().list(1, 12, k, "name").get("allMusic");
		

		musics = (List<Music>) MusicServiceFactory.getMusicServiceInstace()
				.list(1, 15, "", "name").get("allMusic");
		parade = MusicServiceFactory.getMusicServiceInstace().parade();
		return "musicList";
	}
	/**
	 * 音乐排行榜
	 * @return
	 * @throws Exception
	 */
	public String  parade() throws Exception{
		parade=MusicServiceFactory.getMusicServiceInstace().parade();
		return "parade";
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
		System.out.println(result);
		return SUCCESS;
	}
	public String msicType() throws Exception{
		type=Tools.decoder(type, "UTF-8");
		musics=MusicServiceFactory.getMusicServiceInstace().getMusicType(0, 10, "", type);
		return "musicType";
	}
}
