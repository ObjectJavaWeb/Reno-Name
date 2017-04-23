package org.music.action;

import java.util.List;
import java.util.Map;
import java.util.Set;

import org.music.factory.ServiceFactory;
import org.music.pojo.Music;
import org.music.pojo.Mymusic;
import org.music.pojo.MymusicMusic;
import org.music.pojo.User;
import org.music.util.Tools;

import com.opensymphony.xwork2.ActionSupport;

public class MymusicmymusicAction extends ActionSupport {
	private Mymusic mymusic;
	private Music music;
	private List<Music> mList;
	private Set<Mymusic> mymusicset;

	public Set<Mymusic> getMymusicset() {
		return mymusicset;
	}

	public void setMymusicset(Set<Mymusic> mymusicset) {
		this.mymusicset = mymusicset;
	}

	public List<Music> getmList() {
		return mList;
	}

	public void setmList(List<Music> mList) {
		this.mList = mList;
	}

	

	public Mymusic getMymusic() {
		return mymusic;
	}

	public void setMymusic(Mymusic mymusic) {
		this.mymusic = mymusic;
	}

	public Music getMusic() {
		return music;
	}

	public void setMusic(Music music) {
		this.music = music;
	}

	private MymusicMusic mymusicmymusic;

	public MymusicMusic getMymusicmymusic() {
		return mymusicmymusic;
	}

	public void setMymusicmymusic(MymusicMusic mymusicmymusic) {
		this.mymusicmymusic = mymusicmymusic;
	}

	/**
	 * 添加音乐到我的歌单
	 * 
	 * @param mymusicmymusic
	 * @return
	 * @throws Exception
	 */
	public String addMusicToMusiclist() throws Exception {
		mymusicmymusic=new MymusicMusic();
		mymusicmymusic.setMusic(music);
		mymusicmymusic.setMymusic(mymusic);
		ServiceFactory.getIMymusicmusicServiceInstance().insert(mymusicmymusic);
		return "input";
	}
	public String MusicList() throws Exception {
		Map<String, Object> session=Tools.getSession();
		User user=(User)session.get("user");
		mymusicset=ServiceFactory.getIMymusicServiceInstance().getMymusics(user.getId());
		mList=ServiceFactory.getIMymusicmusicServiceInstance().findByMyMusicIdByUserId(mymusic.getId(), user.getId());
		for (Music iterable : mList) {
			System.out.println(iterable.getName());
		}
		return "music_list";
	}
}
