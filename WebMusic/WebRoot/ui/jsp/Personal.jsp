<%@page import="java.text.SimpleDateFormat"%>
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

<title>My JSP 'Personal.jsp' starting page</title>
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
						<li class="ul_1_1">基本信息</li>
					</ul>
				</div>
			</div>
			<div style="clear:both"></div>
			<div class="mid">
				<!-- 中间 -->
				<table>
				<%User user = (User) request.getSession().getAttribute("user"); %>
					<tr>
						<th class="location">用户名</th>
						<td><%=user.getUserName() %>
						</td>
					</tr>
					<tr>
						<th class="location">昵称</th>
						<td><%=user.getNickname() %></td>
					</tr>

					<tr>
						<th>性别</th>
						<td><%=user.getGender()%></td>
					</tr>
				 	 <tr>
						<%-- <%
							
							SimpleDateFormat sformat = new SimpleDateFormat("yyyy-MM-dd");
						%> --%>
						<th class="birthday">出生年月</th>
						<td>
							<%=user.getBirthday()%>
						</td>
					</tr>
					<tr>
						
						<th class="RegistDate">注册日期</th>
						<td>
							<%=user.getRegistDate()%>
						</td>

					</tr>   
					<tr>
						<th>邮箱</th>
						<td><%=user.getEmail() %></td>
					</tr>

					<tr>
						<th></th>
						<td>
							<a href="userlogin!updatePre.action?user.id=${user.id }"><button
									class="save btn btn-danger" value="修改信息" >修改信息</button></a>
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</body>
</html>
