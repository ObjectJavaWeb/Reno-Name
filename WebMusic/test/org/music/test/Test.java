package org.music.test;

import java.util.Date;
import java.util.ArrayList;
import java.util.List;
//<<<<<<< HEAD
import java.util.Map;

import java.util.Set;
//>>> branch 'master' of https://github.com/ObjectJavaWeb/Reno-Name.git

import org.music.factory.MusicFactory;
import org.music.factory.MusicServiceFactory;
import org.music.factory.ServiceFactory;
import org.music.pojo.Comment;
import org.music.pojo.Music;
import org.music.pojo.Mymusic;
import org.music.service.MusicService;

public class Test {
	private static int musicId;


	public static void main(String[] args) throws Exception {
	Music music=new Music();
	music.setName("Xuebiao");
	MusicServiceFactory.getMusicServiceInstace().insert(music);
	}
}
