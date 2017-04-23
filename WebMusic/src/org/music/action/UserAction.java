package org.music.action;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;
import org.music.factory.ServiceFactory;
import org.music.pojo.Question;
import org.music.pojo.User;
import org.music.util.Tools;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport {
	// 验证码
	private String valliCode;

	public String getValliCode() {
		return valliCode;
	}

	public void setValliCode(String valliCode) {
		this.valliCode = valliCode;
	}

	private Question question;// 要接受的参数叫question，要生成他的set和get方法。
	private List<Question> allQuestions;

	public List<Question> getAllQuestions() {
		return allQuestions;
	}

	public void setAllQuestions(List<Question> allQuestions) {
		this.allQuestions = allQuestions;
	}

	public Question getQuestion() {
		return question;
	}

	public void setQuestion(Question question) {
		this.question = question;
	}

	private User user;// 要接受的参数叫user，要生成他的set和get方法。

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	private String message;
	private String url;
	private String indexurl = "index.jsp";
	private String randomCode;

	public String getRandomCode() {
		return randomCode;
	}

	public void setRandomCode(String randomCode) {
		this.randomCode = randomCode;
	}

	public String getIndexurl() {
		return indexurl;
	}

	public void setIndexurl(String indexurl) {
		this.indexurl = indexurl;
	}

	private boolean loginDuplicate;

	public boolean isLoginDuplicate() {
		return loginDuplicate;
	}

	public void setLoginDuplicate(boolean loginDuplicate) {
		this.loginDuplicate = loginDuplicate;
	}

	/**
	 * 修改个人信息先查询
	 * 
	 * @return
	 * @throws Exception
	 */
	public String updatePre() throws Exception {

		user = ServiceFactory.getIUserServiceInstance().findById(user.getId());
		return "personal_Update";
	}

	/**
	 * 修改个人信息
	 * 
	 * @return
	 * @throws Exception
	 */
	public String personalUpdate() throws Exception {
		// 获取session
		Map<String, Object> session = Tools.getSession();
		User usertest = (User) session.get("user");

		if (usertest == null) {
			super.addActionError("请先登录！");
			return "input";
		}
		ServiceFactory.getIUserServiceInstance().update(user);
		// 修改完成后，更新信息
		ServiceFactory.getIUserServiceInstance().findById(user.getId());
		session.put("user", user);
		return "personal_Update_suc";
	}

	/**
	 * 修改密码
	 * 
	 * @return
	 * @throws Exception
	 */
	public String passwordUpdte() throws Exception {
		System.out.println(user.getId());
		/*// 获取session
				Map<String, Object> session = Tools.getSession();
				User usertest = (User) session.get("user");*/
				
		ServiceFactory.getIUserServiceInstance().update1(user);
		// 修改完成后，更新信息
				ServiceFactory.getIUserServiceInstance().findById(user.getId());
				/*session.put("user", user);*/
				
		return "input";
	}

	/**
	 * 查询个人信息
	 * 
	 * @throws Exception
	 */
	public String queryPersonal() throws Exception {
		// 获取session
		Map<String, Object> session = Tools.getSession();
		User user = (User) session.get("user");
		if (user == null) {
			super.addActionError("请先登录！");
			return "input";
		}
		user = ServiceFactory.getIUserServiceInstance().findById(user.getId());
		session.put("user", user);
		return "personal";
	}

	@SuppressWarnings("unused")
	public String login() throws Exception {
		boolean flag = ServiceFactory.getIUserServiceInstance().login(user);
		if (flag) {
			// 根据登陆结果，决定跳转的位置
			return "suc";
		} else {
			// 保存错误信息,页面上可以使用标签显示，提供好的一个方法，添加错误信息。
			super.addActionError("用户名或密码错误,请重新输入!");
			message = "用户名或密码错误,请重新输入!";
			url = "index.jsp";
			return "LoginError";// 当然自己可随便起名。
		}
	}

	/**
	 * 注册
	 * 
	 * @return 注册后跳转页面
	 * @throws Exception
	 */
	public String Register() throws Exception {
		System.out.println(valliCode);
		Map<String, Object> session = Tools.getSession();
		String code = (String) session.get("randomCode");
		System.out.println(code);
		if (valliCode.equals(code)) {
			user.setRegistDate(new Date());
			ServiceFactory.getIUserServiceInstance().insert(user);
			// 获取session
			Map<String, Object> session1 = Tools.getSession();
			session1.put("user", user);
			return "Set_answer";
		} else {
			message = "验证码错误！请重新输入！";
			url = "/ui/jsp/TableRegister.jsp";
			return "registerError";
		}
	}

	/**
	 * 设置问题
	 * 
	 * @return
	 * @throws Exception
	 */
	public String setAnswer() throws Exception {

		Map<String, Object> session = Tools.getSession();
		User user = (User) session.get("user");
		question.setUser(user);
		ServiceFactory.getIQuestionServiceInstance().insert(question);
		message = "恭喜您注册成功！";
		url = "index.jsp";
		return "forward";
	}

	/**
	 * 验证用户名
	 * 
	 * @return 根据用户名查找输入正确登陆验证成功后跳转页面
	 * @throws Exception
	 */
	private Integer id;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String userinput() throws Exception {

		id = ServiceFactory.getIUserServiceInstance().userInput(user);

		if (id != null) {

			allQuestions = ServiceFactory.getIQuestionServiceInstance()
					.findByUserId(id);
			System.out.println(id);
			return "Retrieve_Password";
		}
		return "Userinput";

	}

	/**
	 * 退出登录 返回主页
	 * 
	 * @return 登录页
	 * @throws Exception
	 */
	public String personalExit() throws Exception {
		// 获取session
		Map<String, Object> session = Tools.getSession();
		session.clear();
		return "exit";
	}

	public String preRegister() throws Exception {
		ActionContext aContext = ActionContext.getContext();
		final Map<String, Object> session = aContext.getSession();
		Thread thread = new Thread() {
			@Override
			public void run() {

				List<String> userNameList = ServiceFactory
						.getIUserServiceInstance().getUserName();
				session.put("userNames", userNameList);
			}
		};
		thread.start();
		return "register";
	}
}
