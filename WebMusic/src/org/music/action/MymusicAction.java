package org.music.action;

import java.util.Map;
import java.util.Set;

import org.music.dbc.HibernateSessionFactory;
import org.music.factory.ServiceFactory;
import org.music.pojo.Music;
import org.music.pojo.Mymusic;
import org.music.pojo.User;
import org.music.util.Tools;

import com.opensymphony.xwork2.ActionSupport;

public class MymusicAction extends ActionSupport {

	private Mymusic mymusic;
	public Set<Mymusic> getMymusicset() {
		return mymusicset;
	}

	public void setMymusicset(Set<Mymusic> mymusicset) {
		this.mymusicset = mymusicset;
	}

	private Set<Mymusic> mymusicset;

	public Mymusic getMymusic() {
		return mymusic;
	}

	public void setMymusic(Mymusic mymusic) {
		this.mymusic = mymusic;
	}

	public String getMymusicList() throws Exception {
		Map<String, Object> map = Tools.getSession();
		User user = (User) map.get("user");
		mymusicset = ServiceFactory.getIMymusicServiceInstance().getMymusics(user.getId());
		return "hy";

	}

	private Music music;

	public Set<Music> getMusiclist() {
		return musiclist;
	}

	public void setMusiclist(Set<Music> musiclist) {
		this.musiclist = musiclist;
	}

	private Set<Music> musiclist;

	public Music getMusic() {
		return music;
	}

	public void setMusic(Music music) {
		this.music = music;
	}

	public String getMusicList() throws Exception {
		musiclist = ServiceFactory.getIMymusicServiceInstance().getMymusicList(
				mymusic.getId());
		return "hy";

	}
	
	public void insertMymusic() throws Exception{
		ServiceFactory.getIMymusicServiceInstance().insert(mymusic);	
	}
	
	public void removeMymusic() throws Exception{
		ServiceFactory.getIMymusicServiceInstance().delete(mymusic.getId());
	}
	
	public void updateMymusic() throws Exception{
		ServiceFactory.getIMymusicServiceInstance().update(mymusic);
	}
}
