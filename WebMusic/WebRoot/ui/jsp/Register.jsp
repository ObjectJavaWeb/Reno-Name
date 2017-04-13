<%@page import="com.opensymphony.xwork2.ActionContext"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'Register.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css"
	href="ui/bootstrap/css/bootstrap.min.css">
<script type="text/javascript" src="ui/jquery/jquery-2.0.0.js"></script>
<script type="text/javascript" src="ui/js/Register.js"></script>

</head>

<body>
	<h2 class="h2" style="text-align: center;">新用户注册</h2>
	<s:form method="post" action="userregister!Register.action"
		namespace="/" onsubmit="return validateForm();  ">
		<table class="table">
			<tr>
				<th>用户名：</th>
				<td>
					<input type="text" name="user.userName" id="userName">
					<small><samp style="color: red;">*</samp>为必填项</small>
				</td>
			</tr>
			<tr>
				<th>设置密码：</th>
				<td>
					<input type="password" name="user.password" id="passwordO">
					<small><samp style="color: red;">*</samp>为必填项</small>
				</td>
			</tr>
			<tr>
				<th>确认密码：</th>
				<td>
					<input type="password" name="password2" id="passwordO">
					<small><samp style="color: red;">*</samp>为必填项</small>
				</td>
			</tr>
			<tr>
				<th>邮箱：</th>
				<td>
					<input type="text" name="user.email" id="email">
				</td>
			</tr>
			<tr>
				<th>性别：</th>
				<td>
					男：
					<input type="radio" name="user.gender" value="男" checked="checked">
					女：
					<input type="radio" name="user.gender" value="女">
				</td>
			</tr>
			<tr>
				<th>昵称：</th>
				<td>
					<input type="text" name="user.nickname" id="nickname">
				</td>
			</tr>
			<tr>
				<th>验证码：</th>
				<td>
					<input type="hidden" value="" id="randomCode">
					<input type="text" name="verification_code">
					<img alt="" src="readImgAction" onclick="verificatCodeClick()">
				</td>
			</tr>
			<tr>
				<th></th>
				<td>
					<input class="btn btn-info" type="submit" value="立即注册">
					<input class="btn btn-info" type="reset" value="全部重置">
				</td>
			</tr>
		</table>
	</s:form>
</body>
</html>
