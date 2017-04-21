package org.music.dao;

import org.music.pojo.MymusicMusic;

public interface IMymusicmusicDAO extends IDAO<Integer, MymusicMusic> {
	//将歌曲加入歌单
public void doCreate(MymusicMusic mymusicMusic )throws Exception;
}
