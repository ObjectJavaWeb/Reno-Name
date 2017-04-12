package org.music.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.jms.Session;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.music.factory.ServiceFactory;
import org.music.pojo.User;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport {
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
	private boolean loginDuplicate;

	public boolean isLoginDuplicate() {
		return loginDuplicate;
	}

	public void setLoginDuplicate(boolean loginDuplicate) {
		this.loginDuplicate = loginDuplicate;
	}

	public String login() throws Exception {

		boolean flag = ServiceFactory.getIUserServiceInstance().login(user);
		if (flag) {
			// 根据登陆结果，决定跳转的位置
			// 登陆成功时,用户信息需要保存到Session属性范围
			ServletActionContext.getRequest().getSession()
					.setAttribute("user", user);
			// 登陆成功时，放入session时。
			return "suc";
		}

		// 保存错误信息,页面上可以使用标签显示，提供好的一个方法，添加错我信息。
		super.addActionError("用户名或密码错误,请重新输入!");

		return "input";// 默认input,当然自己可随便起名。
	}

	/**
	 * 注册
	 * 
	 * @return 注册后跳转页面
	 * @throws Exception
	 */
	public String Register() throws Exception {
		user.setRegistDate(new Date());
		ServiceFactory.getIUserServiceInstance().insert(user);
		message = "恭喜您已注册成功！";
		url = "/ui/jsp/Login.jsp";
		return "forward";
	}

	public String preRegister() throws Exception {
		ActionContext aContext = ActionContext.getContext();
		final Map<String, Object> session = aContext.getSession();
		Thread thread=new Thread(){@Override
		public void run() {
			
			List<String> userNameList=ServiceFactory.getIUserServiceInstance()
					.getUserName();
			session.put("userNames",userNameList);
		}};
		thread.start();
		return "register";
	}
}
