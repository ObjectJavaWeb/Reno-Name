package org.music.util;

import java.io.File;
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
	 * 获取指定文件夹下所有文件名
	 * 
	 * @param filePath
	 *            文件夹路径
	 * @return 所有文件名
	 */
	public static String[] main(String filePath) {
		File file = new File(filePath);
		String[] musicStrings = null;
		if (file.isDirectory()) {
			musicStrings = file.list();
		}
		return musicStrings;
	}

}
