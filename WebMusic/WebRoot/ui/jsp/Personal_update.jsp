<%@page import="org.music.pojo.User"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<title>个人信息修改</title>
<link href="ui/css/Personal.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="keywords" content="keyword1,keyword2,keyword3">
<meta name="description" content="this is my page">
<meta name="content-type" content="text/html; charset=UTF-8">
<link href="ui/bootstrap/css/bootstrap.min.css" rel="stylesheet"
	media="screen">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body class="all">

	<div>

		<div class="topbar">
			<!-- 整体外边框 -->

			<div class="topbar_1">
				<!-- 导航栏 -->
				<div>
					<ul class="ul_1">
						<li class="ul_1_1"><a href="index.jsp">返回主页</a></li>
						<li class="ul_1_1">基本设置</li>
						<li></li>
						<li><a href="">修改密码</a></li>
					</ul>
				</div>
			</div>

			<div style="clear:both"></div>


			<div class="mid">
				<!-- 中间 -->
				<%
					/* 获得对象*/
					User user = (User) request.getSession().getAttribute("user");
				%>

				<form action="userlogin!personalUpdate.action" method="post">
					<!-- 隐藏域  获得用户名和ID 传回 personalUpdate 通过用户名修改信息-->
					<input type="hidden" name="user.userName"
						value="<%=user.getUserName()%>">
					<input type="hidden" name="user.id" value="<%=user.getId()%>">
					<table>
						<tr>
							<th class="location">昵称</th>
							<td>
								<input type="text" class="name" name="user.nickname"
									value="<%=user.getNickname()%>">
							</td>
						</tr>
						<tr>
							<th>性别</th>
							<td>
								男：
								<input type="radio" name="user.gender" value="男"
									<c:if test="${user.gender =='男'}">checked="checked"</c:if>>
								女：
								<input type="radio" name="user.gender" value="女"
									<c:if test="${user.gender =='女'}">checked="checked"</c:if>>
							</td>
						</tr>
						<tr>
							<th class="birthday">出生年月</th>
							<td>
								<input type="text" class="name" name="user.birthday"
								 placeholder="请输入形如2012-12-12的日期格式"
									Value="${user.birthday}">
									<br>
							<samp style="font-size: 10 ;text-align: center;">请输入形如<<2012-12-12>>的日期格式</samp>
							</td>
						</tr>
						<tr>
							<th>邮箱</th>
							<td>
								<input type="text" name="user.email" class="name"
									value="<%=user.getEmail()%>">
							</td>
						</tr>
						<tr>
							<th></th>
							<td>
								<input type="submit" class="save btn btn-danger" value="确认修改" 
								onclick="return window.confirm('确定要修改这些信息吗？')">
							</td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
