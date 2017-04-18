package org.music.factory;

import org.music.dao.IMusicDAO;
import org.music.dao.impl.MusicDAOImpl;

public class MusicFactory {
	public static IMusicDAO getMusicDAO(){
		return new MusicDAOImpl();
	}
}
