package org.music.test;

import java.util.ArrayList;
import java.util.List;

import net.sf.json.JSONArray;

import org.music.factory.MusicServiceFactory;
import org.music.pojo.Music;
import org.music.pojo.User;

public class Test {
	private static int musicId;


	public static void main(String[] args) throws Exception {
	List<Music> musics=MusicServiceFactory.getMusicServiceInstace().getType("华语");
	JSONArray jsonArray=JSONArray.fromObject(musics);
	System.out.println(jsonArray);
	}
}
