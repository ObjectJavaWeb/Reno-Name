package org.music.dao;

import java.util.List;

import org.music.pojo.Music;


public interface IMusicDAO extends IDAO<Integer ,Music> {
	public List<Music> findAll() throws Exception;
	public List<Music> findAll(int pageNo,int pageSize,String keyword,String column) throws Exception;
	public int getAllcount(String keyword,String column) throws Exception;
	
}
