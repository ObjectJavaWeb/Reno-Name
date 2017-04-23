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
	<h2 class="h2" style="text-align: center;">新用户注册</h2>
	<form method="post" action="userregister!Register.action"
		class="form-inline" onsubmit="return validateForm()">
		<div style="margin-top:15px;">
			<span class="lc0"></span>
			<span class="glyphicon glyphicon-user"></span>
			<input type="text" class="a1" id="name" placeholder="请输入昵称" />
		</div>
		<span id="name1" class="wrong"></span>
		<div>
			<span class="lc1"></span>
			<form action="#" onsubmit="return check();">
				<div id="regist_right">
					<div>
						<input type="text" value class="a1" id="haoma"
							placeholder="请输入手机号" />
					</div>
					<span id="haoma1" class="wrong"></span>
				</div>
				<div>
					<span class="lc2"></span>
					<input type="text" value class="a2" placeholder="请输入验证码"
						style="width:88px;" />
					<input type="button" class="action" value="获取验证码" />
				</div>
				<div>
					<span class="lc3"></span>
					<input type="password" class="a1" name="password" id="password"
						placeholder="请输入密码" />
				</div>
				<span id="password1" class="wrong"></span>
				<div>
					<span class="lc4"></span>
					<input type="password" class="a1" name="password" id="spassword"
						placeholder="请再输入密码" />
				</div>
				<span id="spassword1" class="wrong"></span>
			</form>
</body>
</html>
