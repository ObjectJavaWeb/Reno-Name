package org.music.test;

import java.io.File;
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
import org.music.util.Mp3Info;
import org.music.util.Mp3Tools;

public class Test {
	private static int musicId;


	public static void main(String[] args) throws Exception {
	Mp3Info mp3Info=Mp3Tools.getMP3Info(new File("D:\\娱乐\\音乐\\音乐\\陈奕迅 - 十年.mp3"));
	System.out.println(mp3Info.getSongName());
	}
}
