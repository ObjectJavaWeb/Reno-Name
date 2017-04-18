package org.music.dao;

import java.util.List;

import org.music.pojo.Music;


public interface IMusicDAO extends IDAO<Integer ,Music> {
	public List<Music> findAll() throws Exception;
	public List<Music> findAll(int pageNo,int pageSize,String keyword,String column) throws Exception;
	public int getAllcount(String keyword,String column) throws Exception;
	/**
	 * 根据音乐ID增加点击量
	 * @param musicId 音乐ID
	 * @throws Exception
	 */
	public void addHit(Integer musicId) throws Exception;
	/**
	 * 显示音乐排行榜
	 * @return
	 * @throws Exception
	 */
	public List<Music> parade() throws Exception;
}
