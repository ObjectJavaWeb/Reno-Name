package org.music.dao;

import java.util.List;

import org.music.pojo.Question;
import org.music.pojo.User;


public interface IQuestion{
	public void doCreate(Question question) throws Exception;

	public void doUpdate(Question question) throws Exception;

	public List<Question> findByUserId(Integer id) throws Exception;
}
