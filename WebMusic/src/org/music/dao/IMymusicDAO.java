package org.music.dao;

import java.util.List;
import java.util.Set;

import org.music.pojo.Music;
import org.music.pojo.Mymusic;

public interface IMymusicDAO extends IDAO<Integer, Mymusic>{

	public Set<Mymusic> getMymusic ( int userId) throws Exception;
	
	public Set<Music> getMymusicList( int myMusicId) throws Exception;
	
	public List findAll(String column) throws Exception;
}
