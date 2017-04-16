package org.music.service;

import java.util.List;

import org.music.dao.MusicDAO;
import org.music.pojo.Music;

public interface MusicService {
    public void insert(Music music) throws Exception;
    public void delete(int id) throws Exception;
    public void update(Music music)throws Exception;
    public Music findById(int id) throws Exception;
    public List<Music> findAll(String coulmn)throws Exception;
}
