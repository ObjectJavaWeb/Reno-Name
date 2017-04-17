package org.music.test;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.music.factory.MusicFactory;
import org.music.factory.MusicServiceFactory;
import org.music.factory.ServiceFactory;
import org.music.pojo.Music;
import org.music.pojo.Mymusic;
import org.music.service.MusicService;

public class Test {
	public static void main(String[] args) throws Exception {
	Music music=new Music();
	music.setName("Xuebiao");
	MusicServiceFactory.getMusicServiceInstace().insert(music);
		
	}
}
