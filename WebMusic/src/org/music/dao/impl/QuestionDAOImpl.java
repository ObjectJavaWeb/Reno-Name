package org.music.dao.impl;

import org.music.dao.IQuestion;
import org.music.dbc.HibernateSessionFactory;
import org.music.pojo.Question;

public class QuestionDAOImpl implements IQuestion {

	public void doCreate(Question vo) throws Exception {
		// TODO Auto-generated method stub
		HibernateSessionFactory.getSession().save(vo);

	}

	@Override
	public void doUpdate(Question vo) throws Exception {
		// TODO Auto-generated method stub
		HibernateSessionFactory.getSession().update(vo);

	}

	@Override
	public void doRemove(Integer id) throws Exception {
		// TODO Auto-generated method stub
		HibernateSessionFactory.getSession().delete(findById(id));
	}

	@Override
	public Question findById(Integer id) throws Exception {
		// TODO Auto-generated method stub
		//根据主键查询类型
		return (Question) HibernateSessionFactory.getSession().get(Question.class, id);
	}

	@Override
	public void doRemove(Question question) throws Exception {
		// TODO Auto-generated method stub
		
	}

}
