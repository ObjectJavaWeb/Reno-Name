package org.music.factory;

import org.music.dao.MusicDAO;
import org.music.dao.impl.MusicDAOImpl;

public class MusicFactory {
	public static MusicDAO getMusicDAO(){
		return new MusicDAOImpl();
	}
}
