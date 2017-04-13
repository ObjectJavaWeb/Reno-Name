package org.music.factory;

import org.music.dao.IMymusicDAO;
import org.music.dao.IUserDAO;
import org.music.dao.impl.MyMusicDAOImpl;
import org.music.dao.impl.UserDAOImpl;

public class DAOFactory {
	public static IUserDAO getIUserDAOInstance() {
		return new UserDAOImpl();
	}

	public static IMymusicDAO getIMymusicDAOInstance() {
		
		return new MyMusicDAOImpl();
	}


}
