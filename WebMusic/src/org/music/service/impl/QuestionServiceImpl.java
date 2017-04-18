package org.music.service.impl;

import java.util.List;

import org.hibernate.Transaction;
import org.music.dbc.HibernateSessionFactory;
import org.music.factory.DAOFactory;
import org.music.pojo.Question;
import org.music.service.IQuestionService;

public class QuestionServiceImpl implements IQuestionService {

	@Override
	public void insert(Question question) throws Exception {
		// 加入事务处理功能
		Transaction tx = HibernateSessionFactory.getSession()
				.beginTransaction();
		try {
			DAOFactory.getIQuestionInstance().doCreate(question);
			tx.commit();
		} catch (Exception e) {
			e.printStackTrace();
			tx.rollback();
			throw e;
		} finally {
			//HibernateSessionFactory.closeSession();
		}

	}

	@Override
	public void delete(int id) throws Exception {
		// TODO Auto-generated method stub
	}

	@Override
	public List<Question> findByUserId(Integer id) throws Exception {
		// TODO Auto-generated method stub
		List<Question> question =null;

		try {
			question = DAOFactory.getIQuestionInstance().findByUserId(id);
		} catch (Exception e) {
			throw e;
			// TODO: handle exception
		}finally{
			HibernateSessionFactory.closeSession();
		}
		return question;
	}

	@Override
	public void updete(Question question) throws Exception {
		// TODO Auto-generated method stub

	}

}
