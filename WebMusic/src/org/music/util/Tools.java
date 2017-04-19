package org.music.util;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;

/**
 * 
 * 工具包
 * 
 * @author 吴文鑫
 * 
 */
public class Tools {
	/**
	 * 
	 * 获取session
	 * 
	 * @return session
	 */
	public static Map<String, Object> getSession() {
		ActionContext aContext = ActionContext.getContext();
		Map<String, Object> session = aContext.getSession();
		return session;
	}

	/**
	 * 对字符串进行解码
	 * 
	 * @param str
	 *            需要转码的字符串
	 * @param bm
	 *            目标格式
	 * @return 转码后的字符串
	 */
	public static String decoder(String str, String bm) {
		try {
			String s = new String(str.getBytes("ISO-8859-1"), bm);
			return s;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
