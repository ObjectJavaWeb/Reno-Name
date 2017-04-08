package org.music.service;




import org.music.pojo.User;


public interface IUserService {

	public void insert(User user) throws Exception;

	public void delete(int id) throws Exception;

	public User findById(int id) throws Exception;

	public boolean login(User user)throws Exception;

	
}
