package org.music.action;

import java.util.List;
import java.util.Map;

import org.music.factory.MusicServiceFactory;
import org.music.factory.ServiceFactory;
import org.music.pojo.Comment;
import org.music.pojo.Music;
import org.music.util.Tools;

import com.opensymphony.xwork2.ActionSupport;

public class MusicAction extends ActionSupport {
	private List<Music> searchResult;
	private int pageNo=1;
	private int  pageSize=10;
	private String	keyword="";
	private int count;
	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public int getPageNo() {
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public List<Music> getSearchResult() {
		return searchResult;
	}

	public void setSearchResult(List<Music> searchResult) {
		this.searchResult = searchResult;
	}

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
	/**
	 * 
	 * @return 搜索结果
	 * @throws Exception
	 */
public String searchMusicBykeyword()throws Exception{
	searchResult = (List<Music>) MusicServiceFactory.getMusicServiceInstace().list(1, 12, k, "name").get("allMusic");
	for (Music m : searchResult) {
		System.out.println(m.getName());
	}
	
	return "searchlist";
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
		Map<String, Object> map= MusicServiceFactory.getMusicServiceInstace().getMusicType(pageNo, pageSize, keyword, type);
		musics=(List<Music>) map.get("musicList");
		count=(Integer) map.get("count");
		return "musicType";
	}
}
