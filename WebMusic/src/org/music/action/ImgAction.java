package org.music.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.music.util.VerificatCode;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ImgAction extends ActionSupport {
	private InputStream inputStream;
	private String code;
	

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	/**
	 * 读取图片
	 * 
	 * @return
	 */
	public String readImg() throws Exception {
		HttpServletResponse response = ServletActionContext.getResponse();

		// 设置浏览器不要缓存此图片
		response.setHeader("Pragma", "no-cache");

		response.setHeader("Cache-Control", "no-cache");

		response.setDateHeader("Expires", 0);
		VerificatCode vCode=new VerificatCode(5, 27);
		inputStream =vCode.getImage();
		String randomCode=vCode.getRand();
		ActionContext aContext = ActionContext.getContext();
		final Map<String, Object> session = aContext.getSession();
		session.put("randomCode", randomCode);
		code=randomCode;

		return SUCCESS;
	}

	public InputStream getInputStream() {
		return inputStream;
	}

	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}
	public String validateCode() throws Exception{
		
		return "register";
	}
}
