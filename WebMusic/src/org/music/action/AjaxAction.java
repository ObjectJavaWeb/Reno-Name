package org.music.action;

import java.util.List;
import java.util.Map;

import org.music.pojo.User;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 使用异步加载(AJAX)使用Action
 * 
 * @author 梁城月
 * 
 */
@SuppressWarnings("serial")
public class AjaxAction extends ActionSupport {
	private boolean loginDuplicate;

	public boolean isLoginDuplicate() {
		return loginDuplicate;
	}

	public void setLoginDuplicate(boolean loginDuplicate) {
		this.loginDuplicate = loginDuplicate;
	}

	private User user;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	/**
	 * 验证用户名是否重复
	 * 
	 * @return 是否重复
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	public String loginDuplicate() throws Exception {
		ActionContext aContext = ActionContext.getContext();
		Map<String, Object> session = aContext.getSession();
		List<String> userNameList = (List<String>) session.get("userNames");
		loginDuplicate = userNameList.contains(user.getUserName().trim());
		return SUCCESS;
	}
	
}
