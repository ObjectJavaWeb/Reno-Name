package org.music.action;

import org.music.factory.ServiceFactory;
import org.music.pojo.Music;
import org.music.pojo.Mymusic;
import org.music.pojo.MymusicMusic;

import com.opensymphony.xwork2.ActionSupport;

public class MymusicmymusicAction extends ActionSupport {
	private Mymusic mymusic;
	private Music music;

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
		/*System.out.println(music.getId());
		System.out.println(mymusic.getId());*/
		ServiceFactory.getIMymusicmusicServiceInstance().insert(mymusicmymusic);
		return "input";
	}
}
