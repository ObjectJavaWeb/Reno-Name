<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
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

<title>登录页</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<center>
		<font color="red"> <s:actionerror />
		</font> <span>用户登录</span>
		<form form action="userlogin!login.action" method="post">
			用户名：
			<input type="text" name="user.userName">
			<a href="userlogin!preRegister.action">没有注册？</a> <font color="red">${message}</font><br>
			密码：
			<input type="password" name="user.password">
			<br>
			<input type="submit" value="登录">
			&nbsp;&nbsp;&nbsp;
			<input type="reset" value="全部重置">
		</form>
	</center>
</body>
</html>
