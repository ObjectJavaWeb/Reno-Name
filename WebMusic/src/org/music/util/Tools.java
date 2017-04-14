package org.music.util;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;

/**
 * 
 * 工具包
 * @author 吴文鑫
 *
 */
public class Tools {
	/**
	 * 
	 * 获取session
	 * @return session
	 */
	public static Map<String, Object> getSession() {
		ActionContext aContext = ActionContext.getContext();
		Map<String, Object> session = aContext.getSession();
		return session;
	}

}
