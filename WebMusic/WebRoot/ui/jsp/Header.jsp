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
<title>顶部导航</title>
<script type="text/javascript">
	function open_Login_windows() {
		document.getElementById('open_Login').style.display = 'block';
	}
	function closeme() {
		document.getElementById('open_Login').style.display = 'none';
	}
</script>
</head>

<body>
	<!-- 顶部导航条 黑色背景 -->
	<div class="body">
		<!-- 网页图标 -->
		<div class="topbar_1_1"></div>
		<div class="topbar_1_2">
			<ul class="nav nav-tabs">
				<!-- 发现音乐 -->
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#" style="color: black;"> 发现音乐 <b
						class="caret"></b></a>
					<ul class="dropdown-menu" role="menu" style="color: black;">
						<li value="推荐"><a href=""  class="reg">推荐</a></li>
						<li value="排行榜"><a href=""  class="reg">排行榜</a></li>
						<li value="歌单"><a href=""  class="reg">歌单</a></li>
						<li value="歌手"><a href=""  class="reg">歌手</a></li>
					</ul></li>
				<!-- 我的音乐 -->
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#" style="color: black;"> 我的音乐 <b
						class="caret"></b></a>
					<ul class="dropdown-menu">
						<li value="喜爱"><a href="" target="_blank" class="reg">喜爱</a></li>
						<li value="最爱"><a href="" target="_blank" class="reg">最爱</a></li>
					</ul></li>
				<!-- 个人 -->
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#" style="color: black;"> 个人 <b
						class="caret"></b></a>
					<ul class="dropdown-menu">

						<li value="个人 信息"><a
							href="userlogin!queryPersonal.action?user.id=${user.id }"
							target="_blank" class="reg">个人信息</a></li>
						<li value="退出登录"><a href="userlogin!personalExit.action "
							class="reg">退出登录 </a></li>
					</ul></li>
			</ul>
		</div>
		<div class="topbar_1_3">
		<div class="div_search">
			<form class="form-search">
				<p class="input-append">
					<input type="text" class="span2 search" id="appendedInputButton search"
						placeholder="请输入您想收索的歌曲名/歌手">
					<input type="submit" value="搜索" class="btn search" >
				</p>
			</form>
			</div>
			<div class="div_login">
				<%
					if (request != null) {
						User user = (User) request.getSession().getAttribute("user");
						if (user != null) {
				%>
				<span>欢迎您：</span><a href="userlogin!queryPersonal.action?user.id=${user.id }"
					style=" font-size: 15;color: black;">${user.nickname }</a>
				<%
					} else {
				%>
				<a href="javaScript:open_Login_windows()"> 登录</a>|<a href="userlogin!preRegister.action">注册</a>
				<%
					}
					}
				%>
			</div>
		</div>
		<div id="open_Login">
			<form action="userlogin!login.action" method="post">
				<table width="30%" border="0" cellpadding="3" cellspacing="1"
					style="background: url('ui/image/bg_login.jpg');	position:static;filter:progid:DXImageTransform.Microsoft.DropShadow(color=#666666,offX=4,offY=4,positives=true)"
					align="center">
					<tr>
						<th></th>
						<td>
							<font size="20">欢迎登录</font>
						</td>
					</tr>
					<tr>
						<th align="center">用户名</th>
						<td>
							<input type="text" name="user.userName" placeholder="用户名">
							<a href="userlogin!preRegister.action">没有注册？</a> <br>
						</td>
					</tr>
					<tr>
						<th align="center" style="padding-left: 7">密    	       码</th>
						<td>
							<input type="password" name="user.password" placeholder="密码">
							<a href="#">找回密码</a>
						</td>
					</tr>
					<tr>
						<th></th>
						<td>
							&nbsp;&nbsp;&nbsp;
							<input type="submit" value="登录">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="reset" value="退出" onClick="closeme()">
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>
