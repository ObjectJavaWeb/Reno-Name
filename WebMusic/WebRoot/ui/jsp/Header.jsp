<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="org.music.pojo.User"%>
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
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="ui/css/Header.css" rel="stylesheet" type="text/css" />
<script src="ui/jquery/jquery-2.0.0.js"></script>
<script src="ui/js/Header.js"></script>
<link href="ui/bootstrap/css/bootstrap.min.css" rel="stylesheet"
	media="screen">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="ui/css/Header.css" rel="stylesheet" type="text/css" />
<script src="ui/jquery/jquery-2.0.0.js"></script>
<script src="ui/js/Header.js"></script>
<script src="ui/bootstrap/js/bootstrap.min.js"></script>
<title>表头</title>

</head>

<body>
	<!-- 顶部导航条 黑色背景 -->
	<div class="body">
		<!-- 网页图标 -->
		<div class="topbar_1_1">
			<img alt="" src="ui/image/mxcptimg.jpg"
				style="height: 70px;padding-left: 150px">
		</div>
		<div class="topbar_1_2">
			<ul class="nav nav-tabs">
				<!-- 发现音乐 -->
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#" style="color: white;"> 发现音乐 <b
						class="caret"></b></a>
					<ul class="dropdown-menu" role="menu" style="color: white;">
						<li value="推荐"><a href="" target="_blank" class="reg">推荐</a></li>
						<li value="排行榜"><a href="" target="_blank" class="reg">排行榜</a></li>
						<li value="歌单"><a href="" target="_blank" class="reg">歌单</a></li>
						<li value="歌手"><a href="" target="_blank" class="reg">歌手</a></li>
					</ul></li>
				<!-- 我的音乐 -->
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#" style="color: white;"> 我的音乐 <b
						class="caret"></b></a>
					<ul class="dropdown-menu">
						<li value="喜爱"><a href="" target="_blank" class="reg">喜爱</a></li>
						<li value="最爱"><a href="" target="_blank" class="reg">最爱</a></li>
					</ul></li>
				<!-- 个人 -->
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#" style="color: white;"> 个人 <b
						class="caret"></b></a>
					<ul class="dropdown-menu">

						<li value="个人 主页"><a
							href="queryPersonal!queryPersonal.action" target="_blank"
							class="reg">个人主页</a></li>
						<li value="个人设置"><a href="ui/jsp/Personal_update.jsp "
							target="_blank" class="reg">个人设置 </a></li>
						<li value="退出登录"><a href="" class="reg">退出登录 </a></li>
					</ul></li>
			</ul>

			</ul>
		</div>
		<div class="topbar_1_3">
			<form>
				<input class="search" type="text" placeholder="请输入您想收索的歌曲名/歌手">
			</form>

			<%
				User user = (User) request.getSession().getAttribute("user");
				if (user.equals(null)) {
			%><a href="ui/jsp/Login.jsp" class="reg" style=" font-size: 20;">登
				录</a>
			<%
				} else
			%><a href="ui/jsp/Personal.jsp">${user.nickname }</a>


		</div>
	</div>
</body>
</html>
