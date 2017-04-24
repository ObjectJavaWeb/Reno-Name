package org.music.dao;

import java.util.List;

import org.music.pojo.Music;
import org.music.pojo.SongerMusic;

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
	/**
	 * 歌手列表
	 * @param pageNo 当前页
	 * @param pageSize 页面大小
	 * @param Key 关键字
	 * @return 歌手列表
	 * @throws Exception
	 */
	public List<SongerMusic> getSonger(int pageNo,int pageSize,String Key) throws Exception;
	/**
	 * 根据歌曲类别获取歌曲列表
	 * @param pageNo 当前页
	 * @param pageSize 页面大小
	 * @param Key 关键字
	 * @param type 歌曲类型
	 * @return 歌曲列表
	 * @throws Exception
	 */
	public List<Music> getMusicType(int pageNo,int pageSize,String Key,String type) throws Exception;
	/**
	 * 根据类型和关键字查询总记录数
	 * @param keyword 关键字
	 * @param type 类型
	 * @return 总记录数
	 * @throws Exception
	 */
	public int getMusicTypeCount(String keyword,String type) throws Exception ;
}
