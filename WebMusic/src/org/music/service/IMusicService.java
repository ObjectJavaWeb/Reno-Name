package org.music.service;

import java.util.List;
import java.util.Map;

import org.music.pojo.Music;

public interface IMusicService {
	public void insert(Music music) throws Exception;

	public void delete(int id) throws Exception;

	public void update(Music music) throws Exception;

	public Music findById(int id) throws Exception;

	// 如果一次性返回多种类型的数据，可以使用Map集合，这样方便去区分
	public Map<String, Object> list(int pageNo, int pageSize, String keyword,
			String column) throws Exception;

	/**
	 * 根据音乐ID增加点击量
	 * 
	 * @param musicId
	 *            音乐ID
	 * @throws Exception
	 */
	public void addHit(Integer musicId) throws Exception;

	/**
	 * 显示音乐排行榜
	 * 
	 * @return
	 * @throws Exception
	 */
	public List<Music> parade() throws Exception;
}
