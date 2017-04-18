<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Userinput.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
 <body style="background:url('ui/image/bg_1.jpg');">
	<div style="height: 50px;"></div>
	<h3 class="h3" style="text-align: center;">输入用户名找回密码</h3>
	<form method="post" action="userlogin!userinput.action"
		class="form-inline">
		<table class="table">

			<tr>
				<th>输入用户名：</th>
				<td>
					<input type="text"  style="width: 202.2px"  name="user.userName">
					
				</td>
			</tr>


			<tr>
				<th></th>
				<td>
					<input class="btn btn-info" type="submit" value="验证信息">
					<input class="btn btn-info" type="reset" value="重置">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
