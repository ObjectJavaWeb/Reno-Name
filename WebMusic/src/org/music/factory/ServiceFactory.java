package org.music.factory;

import org.music.service.IUserService;
import org.music.service.impl.UserServiceImpl;

public class ServiceFactory {
	public static IUserService getIUserServiceInstance() {
		return new UserServiceImpl();

	}

}
