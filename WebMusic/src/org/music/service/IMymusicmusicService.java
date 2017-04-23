package org.music.service;

import java.util.List;

import org.music.pojo.Music;
import org.music.pojo.Mymusic;
import org.music.pojo.MymusicMusic;

public interface IMymusicmusicService {
public void insert(MymusicMusic mymusicMusic ) throws Exception;
	
	public void delete(int id) throws Exception;
	
	public Mymusic findById(int id) throws Exception; 
	
	public void update(Mymusic mymusic) throws Exception;
	/**
	 * 根据用户id与歌单ID查询相应歌曲
	 * @param MyMusicId 歌单id
	 * @param UserId 用户ID
	 * @return 歌曲列表
	 */
	public List<Music> findByMyMusicIdByUserId(Integer MyMusicId, Integer UserId) ;
}
