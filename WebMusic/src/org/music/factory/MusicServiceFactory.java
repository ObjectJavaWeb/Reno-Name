package org.music.factory;

import org.music.service.IMusicService;
import org.music.service.impl.MusicServiceImpl;

public class MusicServiceFactory {
	public static IMusicService getMusicServiceInstace(){
		return new MusicServiceImpl();
	}

}
