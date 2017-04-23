package org.music.service;

import java.util.List;

import org.music.pojo.Question;

public interface IQuestionService {
	public void insert (Question question) throws Exception;
	
	public void delete (int id) throws Exception;
	
	public List<Question> findByUserId(Integer id) throws Exception;
	
	public void updete(Question question) throws Exception;
	
	
}
