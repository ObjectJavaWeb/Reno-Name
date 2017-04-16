package org.music.factory;

import org.music.service.MusicService;
import org.music.service.impl.MusicServiceImpl;

public class MusicServiceFactory {
	public static MusicService getMusicServiceInstace(){
		return new MusicServiceImpl();
	}

}
