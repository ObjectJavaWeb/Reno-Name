package org.music.action;

import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.taglibs.standard.tag.common.xml.ForEachTag;
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

	/**
	 * 查询我的歌单列表
	 * 
	 * @return
	 * @throws Exception
	 */
	public String getMymusicList() throws Exception {
		Map<String, Object> map = Tools.getSession();
		User user = (User) map.get("user");
		
		mymusicset = ServiceFactory.getIMymusicServiceInstance().getMymusics(
				user.getId());
		// 获取session
		Map<String, Object> session = Tools.getSession();
		session.put("mymusic", mymusicset);
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
/**
 * 查询个人歌单
 * @return
 * @throws Exception
 */
	public String getMusicList() throws Exception {
		musiclist = ServiceFactory.getIMymusicServiceInstance().getMymusicList(
				mymusic.getId());
		Map<String, Object> session = Tools.getSession();
		session.put("mymusic", musiclist);
		return "hy";

	}

	/**
	 * 新建歌单
	 * 
	 * @throws Exception
	 */
	public String insertMymusic() throws Exception {
		Map<String, Object> session = Tools.getSession();
		User user = (User) session.get("user");
		mymusic.setUser(user);
		ServiceFactory.getIMymusicServiceInstance().insert(mymusic);
		mymusicset = ServiceFactory.getIMymusicServiceInstance().getMymusics(
				user.getId());
		return "hy";
	}
/**
 * 删除歌单
 * @throws Exception
 */
	public String removeMymusic() throws Exception {
		Map<String, Object> session = Tools.getSession();
		User user = (User) session.get("user");
		
		ServiceFactory.getIMymusicServiceInstance().delete(mymusic.getId());
		mymusicset = ServiceFactory.getIMymusicServiceInstance().getMymusics(
				user.getId());
		return "hy";
	}
/**
 * 修改歌单信息
 */
	public String updateMymusic() throws Exception {
		Map<String, Object> session = Tools.getSession();
		User user = (User) session.get("user");
		mymusic.setUser(user);
		ServiceFactory.getIMymusicServiceInstance().update(mymusic);
		mymusicset = ServiceFactory.getIMymusicServiceInstance().getMymusics(
				user.getId());
		session.put("mymusic", mymusicset);
		return "hy";
	}
}
