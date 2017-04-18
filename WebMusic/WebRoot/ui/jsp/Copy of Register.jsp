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
		<table class="table" id="table">
			<tr>
				<th>用户名：</th>
				<td>
					<span class="glyphicon glyphicon-user"></span>
					<input type="text" name="user.userName" id="userName" class="a1">
					<span class="userName"></span>
				</td>
			</tr>
			<tr>
				<th>设置密码：</th>
				<td>
					<span class="glyphicon glyphicon-lock"></span>
					<input type="password" name="user.password" id="passwordO">
					<span class="passwordO"></span>
				</td>
			</tr>
			<tr>
				<th>确认密码：</th>
				<td>
					<span class="glyphicon glyphicon-lock"></span>
					<input type="password" name="password2" id="passwordC">
					<span class="passwordC"></span>
				</td>
			</tr>
			<tr>
				<th>邮箱：</th>
				<td>
					<span class="glyphicon glyphicon-envelope"
						style="color: rgb(0, 0, 0);"> </span>
					<input type="text" name="user.email" id="email">
					<span class="email"></span>
				</td>
			</tr>
			<tr>
				<th>性别：</th>
				<td>
					<span class="glyphicon glyphicon-euro" style="color: rgb(0, 0, 0);">
					</span> 男：
					<input type="radio" name="user.gender" value="男">
					女：
					<input type="radio" name="user.gender" value="女">
				</td>
			</tr>
			<tr>
				<th>昵称：</th>
				<td>
					<span class="glyphicon glyphicon-tower"
						style="color: rgb(0, 0, 0);"></span>
					<input type="text" name="user.nickname">
				</td>
			</tr>
			<tr>
				<th class="birthday">出生年月</th>
				<td>
					<span class="glyphicon glyphicon-euro" style="color: rgb(0, 0, 0);">
					
					<input type="date" class="name" name="user.birthday"
						value="${ user.birthday}"></span>
				</td>

			</tr>
			<tr>
				<th>验证码：</th>
				<td>
					<span class="glyphicon glyphicon-barcode"
						style="color: rgb(0, 0, 0);"> </span>
					<input type="text" name="randCode">
					<img alt="" src="readImgAction" onclick="verificatCodeClick()">
					<span class="randCode">${randCode }</span>
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
	</form>
</body>
</html>
