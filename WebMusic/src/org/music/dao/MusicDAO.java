package org.music.dao;

import java.util.List;

import org.music.pojo.Music;


public interface MusicDAO extends IDAO<Integer ,Music> {
	public List findAll(String coulmn) throws Exception;
	
}
