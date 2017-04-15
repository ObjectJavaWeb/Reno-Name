package org.music.dao;

import org.music.pojo.Question;
import org.music.pojo.User;


public interface IQuestion extends IDAO<Integer, Question> {
	public void doCreate(Question question) throws Exception;

	public void doUpdate(Question question) throws Exception;

	public void doRemove(Question question) throws Exception;
}
