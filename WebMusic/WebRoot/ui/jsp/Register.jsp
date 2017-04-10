<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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

  </head>
  
  <body>
    <center>
    	<span>新用户注册</span>
    	<form method="post" action="userregister!Register.action">
    		用户名：<input type="text"  name="user.userName"> <br>
    		设置密码：<input type="password" name="user.password"> <br>
    		确认密码：<input type="password" name="password2"> <br>
    		邮箱：<input type="email" name="user.email"> <br>
    		性别：<input type="text" name="user.gender"> <br>
    		昵称：<input type="text" name="user.nickname"> <br>
    		验证码：<input type="text" name="verification_code">
    	    <input type="text" value="生成验证码">  <br>
    		<input type="submit" value="立即注册">&nbsp;&nbsp;&nbsp;
    		<input type="reset" value="全部重置">
    	</form>
    </center>
  </body>
</html>
