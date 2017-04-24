package org.music.test;

import java.util.List;

import org.hibernate.Query;
import org.music.dao.MusicDAO;
import org.music.dbc.HibernateSessionFactory;
import org.music.factory.DAOFactory;
import org.music.factory.MusicFactory;
import org.music.factory.ServiceFactory;
import org.music.pojo.Music;
import org.music.pojo.SongerMusic;


public class Test {

	public static void main(String[] args) throws Exception {
		
		List<SongerMusic> musics=MusicFactory.getMusicDAO().getSonger(0, 10, "");
		for (SongerMusic music : musics) {
			System.out.println(music.getName());
		}
	}
}
