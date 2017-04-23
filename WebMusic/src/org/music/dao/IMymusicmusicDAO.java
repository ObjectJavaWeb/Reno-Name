package org.music.dao;

import java.util.List;

import org.music.pojo.Music;
import org.music.pojo.MymusicMusic;

public interface IMymusicmusicDAO extends IDAO<Integer, MymusicMusic> {
	//将歌曲加入歌单
public void doCreate(MymusicMusic mymusicMusic )throws Exception;
/**
 * 根据用户id与歌单ID查询相应歌曲
 * @param MyMusicId 歌单id
 * @param UserId 用户ID
 * @return 歌曲列表
 */
public List<Music> findByMyMusicIdByUserId(Integer MyMusicId, Integer UserId) ;
}
