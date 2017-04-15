<%@page import="org.music.pojo.User"%>
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
<script type="text/javascript" src="ui/jquery/jquery-2.0.0.js"></script>
<script type="text/javascript" src="ui/js/Register.js"></script>

</head>

<body style="background:url('ui/image/bg_1.jpg');">
	<div style="height: 50px;"></div>
	<h3 class="h3" style="text-align: center;">新用户设置问题答案便于找回密码</h3>
	<form method="post" action="userregister!setAnswer.action"
		class="form-inline">
		<table class="table">

			<tr>
				<th>问题：</th>
				<td>
					<input type="text" class="qustion" name="question.question">
					<!-- <select>
						<option class="qustion" name="qustion.qustion">你的班主任名字叫什么？</option>
						<option class="qustion" name="qustion.qustion">你最好的小伙伴叫什么？</option>
						<option class="qustion" name="qustion.qustion">你的手机号码是多少？</option>
					</select>  -->
				</td>
			</tr>

			<tr>
				<th>设置答案</th>
				<td>
					<input type="text" style="width: 202.2px;" class="anser"
						name="question.answer">
				</td>
			</tr>
			<!-- <tr>
				<th class="question">问题：</th>
				<td>
					<select>
						<option>你的班主任名字叫什么？</option>
						<option>你最好的小伙伴叫什么？</option>
						<option>你的手机号码是多少？</option>
					</select> <small><samp style="color: red;">
				</td>
			</tr>
 
			<tr>
				<th>设置答案</th>
				<td>
					<input type="text" style="width: 202.2px;class=" " name="">
				</td>

			</tr> -->


			<tr>
				<th></th>
				<td>
					<input class="btn btn-info" type="submit" value="确认信息">
					<input class="btn btn-info" type="reset" value="重置">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
