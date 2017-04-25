package org.music.test;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

import org.hibernate.Transaction;
import org.music.dbc.HibernateSessionFactory;
import org.music.factory.DAOFactory;
import org.music.factory.MusicFactory;
import org.music.factory.MusicServiceFactory;
import org.music.factory.ServiceFactory;
import org.music.pojo.Music;
import org.music.util.Mp3Info;
import org.music.util.Mp3Tools;

public class Test {

	public static void main(String[] args) throws Exception {
		String type[] = { "华语", "流行", "摇滚", "电子", "民谣" };
		File file = new File("D:\\网页云音乐模块细分\\music\\mp3");
		File[] files = file.listFiles();
		List<Mp3Info> mList = new ArrayList<Mp3Info>();
		for (File file2 : files) {
			Mp3Info mp3Info = Mp3Tools.getMP3Info(file2, file2.getName());
			mList.add(mp3Info);
		}
		Random random = new Random();

		for (Mp3Info mp3Info : mList) {
			Music music = new Music();
			music.setAbum(mp3Info.getAublm());

			String name = mp3Info.getTxt();
			name = name.substring(0, name.lastIndexOf("."));
			music.setImage(name);
			music.setName(mp3Info.getSongName());
			music.setType(type[random.nextInt(type.length)]);
			music.setSonger(mp3Info.getSinger());
			MusicServiceFactory.getMusicServiceInstace().insert(music);
		}
	}

	public static String randName() {
		String strNameString = "";
		Date date = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat(
				"yyyyMMddHHmmssmsmsms");
		strNameString = formatter.format(date);
		Random random = new Random();
		strNameString = strNameString + random.nextInt(9999);
		return strNameString;
	}
}
