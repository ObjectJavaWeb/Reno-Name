package org.music.test;

import java.util.List;

import org.hibernate.Query;
import org.music.dbc.HibernateSessionFactory;
import org.music.factory.ServiceFactory;
import org.music.pojo.Music;


public class Test {

	public static void main(String[] args) throws Exception {
		
		List<Music> musics=ServiceFactory.getIMymusicmusicServiceInstance().findByMyMusicIdByUserId(1, 1);
				for (Music music : musics) {
					System.out.println(music.getName());
				}
	}
}
