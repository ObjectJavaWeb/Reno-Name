package org.music.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;

import org.music.factory.ServiceFactory;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class AjaxAction extends ActionSupport {
	private String userName;
	
	private boolean loginDuplicate;

	public boolean isLoginDuplicate() {
		return loginDuplicate;
	}

	public void setLoginDuplicate(boolean loginDuplicate) {
		this.loginDuplicate = loginDuplicate;
	}
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}
	@SuppressWarnings("unchecked")
	public String Ts() throws Exception {
		ActionContext aContext=ActionContext.getContext();
		Map<String, Object> session=aContext.getSession();
		Map<String, Object> request=(Map<String, Object>)aContext.get("request");
		userName=(String)request.get("userName");
		List<String> userNameList=(List<String>)session.get("userNames");
		loginDuplicate=userNameList.contains(userName.trim());
		return SUCCESS;
	}
}
