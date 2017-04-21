package org.music.service;

import org.music.pojo.Mymusic;
import org.music.pojo.MymusicMusic;

public interface IMymusicmusicService {
public void insert(MymusicMusic mymusicMusic ) throws Exception;
	
	public void delete(int id) throws Exception;
	
	public Mymusic findById(int id) throws Exception; 
	
	public void update(Mymusic mymusic) throws Exception;
}
