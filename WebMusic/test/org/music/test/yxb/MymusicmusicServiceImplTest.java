package org.music.test.yxb;

import static org.junit.Assert.*;

import java.util.List;
import java.util.Set;

import org.junit.Test;
import org.music.factory.MusicFactory;
import org.music.factory.MusicServiceFactory;
import org.music.factory.ServiceFactory;
import org.music.pojo.Music;
import org.music.pojo.Mymusic;
import org.music.pojo.MymusicMusic;

public class MymusicmusicServiceImplTest {

	@Test
	public void testInsert() throws Exception {
		MymusicMusic mymusic=new MymusicMusic();
		Music music=MusicServiceFactory.getMusicServiceInstace().findById(4);
		mymusic.setMusic(music);
		Mymusic mymusic2=ServiceFactory.getIMymusicServiceInstance().findById(6);
		mymusic.setMymusic(mymusic2);
		ServiceFactory.getIMymusicmusicServiceInstance().insert(mymusic);
	}

	@Test
	public void testFindByMyMusicIdByUserId() throws Exception {
		Mymusic mymusic=new Mymusic();
		List<Music> list=ServiceFactory.getIMymusicmusicServiceInstance().findByMyMusicIdByUserId(6,4);
		for(Music liststing:list){
			System.out.println(liststing.getName());
		}
		
	}

}
