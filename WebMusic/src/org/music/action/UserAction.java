package org.music.action;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.Date;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.music.factory.ServiceFactory;
import org.music.pojo.User;
import org.music.util.VerificatCode;

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

	public String Register() throws Exception {
		user.setRegistDate(new Date());
		ServiceFactory.getIUserServiceInstance().insert(user);
		message = "恭喜您已注册成功！";
		url = "/ui/jsp/Login.jsp";
		return "forward";
	}

	private InputStream inputStream;

	public InputStream getInputStream() {
		return inputStream;
	}

	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}

	public String processImage() {
		try {
			inputStream = new FileInputStream(new File("D:\\学习\\数字图像处理\\index.jpg"));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}

}
