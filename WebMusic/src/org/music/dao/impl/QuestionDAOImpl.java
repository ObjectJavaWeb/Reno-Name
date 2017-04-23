package org.music.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.music.dao.IQuestion;
import org.music.dbc.HibernateSessionFactory;
import org.music.pojo.Question;
import org.music.pojo.User;

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
	public List<Question> findByUserId(Integer id) throws Exception {
		// TODO Auto-generated method stub
		String hql = "FROM Question AS q WHERE q.user.id = ? ";
		System.out.println(id);
		Query query = HibernateSessionFactory.getSession().createQuery(hql);
		query.setInteger(0, id);
		List<Question> allQuestions = query.list();
		return allQuestions;

	}

}
