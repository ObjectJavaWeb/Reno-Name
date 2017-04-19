package org.music.service;

import java.util.List;
import java.util.Map;

import org.music.dao.MusicDAO;
import org.music.pojo.Music;

public interface MusicService {
	public void insert(Music music) throws Exception;

	public void delete(int id) throws Exception;

	public void update(Music music) throws Exception;

	public Music findById(int id) throws Exception;

	// 如果一次性返回多种类型的数据，可以使用Map集合，这样方便去区分
	public Map<String, Object> list(int pageNo, int pageSize, String keyword,
			String column) throws Exception;

	// 通过类型查找歌曲
	public List<Music> getType(String type) throws Exception;
}
