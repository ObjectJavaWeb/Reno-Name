package org.music.factory;

import org.music.service.IMymusicService;
import org.music.service.IUserService;
import org.music.service.impl.MymusicServiceImpl;
import org.music.service.impl.UserServiceImpl;

public class ServiceFactory {
	public static IUserService getIUserServiceInstance() {
		return new UserServiceImpl();

	}
	public static IMymusicService getIMymusicServiceInstance(){
		return new MymusicServiceImpl();
	}

}
