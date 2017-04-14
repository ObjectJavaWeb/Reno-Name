package org.music.dao;

import java.util.List;
import java.util.Set;

import org.music.pojo.Mymusic;

/**
 * 公共接口
 * 
 * @param <K>
 *            主键类型
 * @param <V>
 *            Vo对象的类型
 */
public interface IDAO<K, V> {

	public void doCreate(V vo) throws Exception;

	public void doUpdate(V vo) throws Exception;

	public void doRemove(K id) throws Exception;

	public V findById(K id) throws Exception;

}
