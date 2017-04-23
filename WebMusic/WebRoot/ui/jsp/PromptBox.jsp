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

<title>My JSP 'PromptBox.jsp' starting page</title>

<link href="ui/css/Header.css" rel="stylesheet" type="text/css" />
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
	<div class="modal hide fade box"
		style="background:url('ui/images/box_bg.jpg') no-repeat; border: 1px solid black;">
		<div class="box_header">
			<button type="button" class="close" data-dismiss="modal"
				aria-hidden="true">&times;</button>
		</div>
		<div class="box_body">
			<h2><font>登录网页云音乐</font></h2>
			<h6>随时随地管理你的音乐库</h6>
		</div>
		<div class="box_footer">
			<button type="button" class="btn btn-default " data-dismiss="modal">关闭
			</button>
			<button type="submit" class="btn btn-primary data-toggle="modal" data-target="#myModal"">登录</button>

			<!-- <a href="#" class="btn">登录</a> <a href="#" class="btn btn-primary">关闭</a> -->
		</div>
	</div>
</body>
</html>
