package org.music.dao;

import java.util.List;

import org.music.pojo.Music;

public interface MusicDAO extends IDAO<Integer, Music> {
	public List<Music> findAll() throws Exception;

	public List<Music> findAll(int pageNo, int pageSize, String keyword,
			String column) throws Exception;

	public int getAllcount(String keyword, String column) throws Exception;

	//通过类型查找歌曲
	public List<Music> getType(String type) throws Exception;
	/**
	 * 设置点击量
	 * @param musicId 音乐ID
	 * @throws Exception
	 */
	public void addHit(Integer musicId) throws Exception ;
	/**
	 * 获取排行榜
	 * @return 排行榜列表
	 * @throws Exception
	 */
	public List<Music> parade() throws Exception; 
}
