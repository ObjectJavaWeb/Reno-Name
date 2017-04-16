package org.music.service;

import java.util.List;
import java.util.Set;

import org.music.pojo.Music;
import org.music.pojo.Mymusic;
import org.music.pojo.User;

public interface IMymusicService {

	
	public void insert(Mymusic mymusic) throws Exception;
	
	public void delete(int id) throws Exception;
	
	public Mymusic findById(int id) throws Exception; 
	
	public void update(Mymusic music) throws Exception;
	/**
	 * 根据关键字搜索歌单
	 * @param column
	 * @return   
	 * @throws Exception
	 */
	public List<Mymusic> findAll(String column) throws Exception;
	
	public Set<Mymusic> getMymusics(int userId) throws Exception;
	
	public Set<Music> getMymusicList(int myMusicId) throws Exception;
	
}
