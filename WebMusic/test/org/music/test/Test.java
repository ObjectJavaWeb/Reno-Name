package org.music.test;

import java.io.File;
import java.util.Date;
import java.util.ArrayList;
import java.util.List;
//<<<<<<< HEAD
import java.util.Map;
import java.util.Random;
import java.util.Set;
//>>> branch 'master' of https://github.com/ObjectJavaWeb/Reno-Name.git






import org.music.factory.MusicFactory;
import org.music.factory.MusicServiceFactory;
import org.music.factory.ServiceFactory;
import org.music.pojo.Comment;
import org.music.pojo.Music;
import org.music.pojo.Mymusic;
import org.music.service.IMusicService;
import org.music.util.Mp3Info;
import org.music.util.Mp3Tools;
import org.music.util.Tools;

public class Test {

	public static void main(String[] args) throws Exception {
		String []type={"华语","流行","摇滚","民谣","电子"};
		String filePath="D:\\娱乐\\音乐\\音乐";
		List<Mp3Info> mMp3Infos=new ArrayList<Mp3Info>();
		String file[]=Tools.main(filePath);
		for (String string : file) {
			Mp3Info mp3Info=Mp3Tools.getMP3Info(new File(filePath+"\\"+string));
			if (mp3Info!=null&&(!mp3Info.getSongName().trim().equals(""))) {
				mMp3Infos.add(mp3Info);
			}
			
		}
		Random random=new Random();
	for (Mp3Info item : mMp3Infos) {
		
		Music music=new Music(type[random.nextInt(5)], item.getSongName(), item.getSinger(), item.getAublm(), "", 0, null, null);
		MusicServiceFactory.getMusicServiceInstace().insert(music);
	}
	}
}
