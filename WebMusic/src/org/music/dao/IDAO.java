package org.music.dao;

import java.util.List;

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

	public List<V> findAll() throws Exception;

	public V findById(K id) throws Exception;

}
