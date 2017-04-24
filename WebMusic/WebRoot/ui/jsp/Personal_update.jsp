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
<script src="ui/jquery/jquery-2.0.0.js"></script>
<link href="ui/bootstrap/css/bootstrap.min.css" rel="stylesheet"
	media="screen">
<script src="ui/bootstrap/js/bootstrap.min.js"></script>
<link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css"
	rel="stylesheet">
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
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
						<li><a href="" data-toggle="modal" data-target="#updatepassword" >修改密码</a></li>
					</ul>
				</div>
					<!-- 修改密码模态框开始 -->
				<div class="modal fade" id="updatepassword" tabindex="-1"
					role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<!--控制位置在中间 -->
					<div class="modal-dialog">
						<!--控制位置背景颜色为白色和宽度 -->
						<div class="modal-content login_windows">
							<div class="modal-header ">
								<h1 class="modal-title" id="myModalLabel"
									style="text-align: center;">修改密码</h1>
							</div>
							<form action="userlogin!passwordUpdte.action" method="post">
								<div class="modal-header ">
								<input type="text" name="user.password" placeholder="请输入新密码">
								<input type="hidden" value="${user.id }" name="user.id">
								</div>
								<div class="modal_footer">
									<button type="button" class="btn btn-default"
										data-dismiss="modal">取消</button>
									<button type="submit" class="btn btn-primary">完成</button>
								</div>
							</form>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal -->
				</div>
				<!--修改密码模态框结束  -->
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
