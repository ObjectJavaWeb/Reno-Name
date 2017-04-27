package org.music.test.wwx;

import static org.junit.Assert.*;

import java.security.PublicKey;
import java.util.List;

import org.junit.Test;
import org.music.dbc.HibernateSessionFactory;
import org.music.factory.DAOFactory;
import org.music.factory.ServiceFactory;
import org.music.pojo.Question;
import org.music.pojo.User;
import org.omg.CORBA.PRIVATE_MEMBER;

public class QuestionServiceImplTest {

	@Test
	public void testInsert() throws Exception {
		User user = new User();
		user.setId(5);
		Question question = new Question();
		question.setQuestion("我是谁？");
		question.setAnswer("我是你大表哥");
		question.setUser(user);
		System.out.println(question.getQuestion());
		System.out.println(question.getUser().getId());
	ServiceFactory.getIQuestionServiceInstance().insert(question);
	}

	/**
	 * @throws Exception
	 */
	@Test
	public void testFindByUserId() throws Exception {
		List<Question> allquestion = null;
		allquestion=ServiceFactory.getIQuestionServiceInstance().findByUserId(5);
		System.out.println("输出开始");
		for (Question question : allquestion) {
			System.out.println(question.getId());
			System.out.println(question.getQuestion());
			System.out.println(question.getAnswer());
		}	
		System.out.println("输出结束");
	}

}
