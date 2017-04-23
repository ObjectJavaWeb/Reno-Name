<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

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
<link rel="stylesheet" type="text/css" href="ui/css/register.css">
<script type="text/javascript" src="ui/jquery/jquery-2.0.0.js"></script>
<script type="text/javascript" src="ui/js/Register.js"></script>

</head>

<body style="background:url('ui/image/bg_1.jpg');">
	<div class="register_page">
		<h2 class="h2" style="text-align: center;">新用户注册</h2>
		<form method="post" action="userregister!Register.action"
			class="form-inline" onsubmit="return validateForm()">
			<span class="glyphicon glyphicon-user"></span>
			<input type="text" name="user.userName" id="userName" class="a1"
				placeholder="请输入账户名">
			<br> <span class="userName"></span> <span
				class="glyphicon glyphicon-lock"></span>
			<input type="password" name="user.password" id="passwordO" class="a1"
				placeholder="请输入密码">
			<br> <span class="passwordO"></span> <span
				class="glyphicon glyphicon-lock"></span>
			<input type="password" name="password2" id="passwordC" class="a1"
				placeholder="请再次输入密码">
			<br> <span class="passwordC"></span> <span
				class="glyphicon glyphicon-envelope" style="color: rgb(0, 0, 0);">
			</span>
			<input type="text" name="user.email" id="email" class="a1"
				placeholder="请输入邮箱">
			<br> 男：
			<input type="radio" name="user.gender" value="男">
			女：
			<input type="radio" name="user.gender" value="女">
			<br> <span class="glyphicon glyphicon-tower"
				style="color: rgb(0, 0, 0);"></span>
			<input type="text" name="user.nickname" class="a1"
				placeholder="请输入昵称">
			<br> <span class="glyphicon glyphicon-euro"
				style="color: rgb(0, 0, 0);"> <input type="date"
					name="user.birthday" value="${ user.birthday}" class="a1">
			</span> <br> 
			<input type="text" name="randomCode" class="a1" placeholder="请输入验证码">
			<img alt="" src="readImgAction" onclick="verificatCodeClick()" >
			<span class="randCode">${randCode }</span><br>
			<div class="submit_reset">
				<input class="btn_btn-info" type="submit" value="立即注册">
				<input class="btn_btn-info" type="reset" value="全部重置">
			</div>
		</form>
	</div>
</body>
</html>
