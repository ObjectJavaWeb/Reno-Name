package org.music.action;

import org.apache.struts2.ServletActionContext;
import org.music.factory.ServiceFactory;
import org.music.pojo.User;

import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport {
	private User user;//要接受的参数叫user，要生成他的set和get方法。

	
	public User getUser() {
		return user;
	}


	public void setUser(User user) {
		this.user = user;
	}
	

	public String login() throws Exception {

		boolean flag = ServiceFactory.getIUserServiceInstance().login(user);
		if (flag) {
             //根据登陆结果，决定跳转的位置
			// 登陆成功时,用户信息需要保存到Session属性范围
			ServletActionContext.getRequest().getSession().setAttribute("user",
					user);
             //登陆成功时，放入sessionn时。
			return "suc";
		}

		// 保存错误信息,页面上可以使用标签显示，提供好的一个方法，添加错我信息。
		super.addActionError("用户名或密码错误,请重新输入!");

		return "input";//默认input,当然自己可随便起名。
	}
	

}



