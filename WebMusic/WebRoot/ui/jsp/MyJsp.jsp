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
		<!--  <div class="midum">-->
		<div class="topbar_1_2">
			<!-- <ul class="nav nav-tabs"> -->
			<!-- 发现音乐 -->
			<div class="tabbable">
				<ul class="nav nav-tabs ul-nav">
					<li class="active"><a href="#tab1" data-toggle="tab">发现音乐</a></li>
					<li><a href="#tab2" data-toggle="tab">我的音乐</a></li>
					<li><a href="#tab3" data-toggle="tab">个人设置</a></li>
				</ul>
				<!-- 我的音乐 
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#" style="color: black;"><a href="Mymusic!getMymusicList"> 我的音乐 </a><b
						class="caret"></b></a>-->

				<!-- 个人 
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#" style="color: black;"> 个人 <b
						class="caret"></b></a>
					<ul class="dropdown-menu">

						<li value="个人 信息"><a
							href="userlogin!queryPersonal.action?user.id=${user.id }"
							target="_blank" class="reg">个人信息</a></li>-->
				<!--  <li value="退出登录"><a href="userlogin!personalExit.action "
							class="reg">退出登录 </a></li>-->
				<div class="tab-content">
					<div class="tab-pane active" id="tab1">
						<ul class="ul2">
							<li><a href="=#">推荐</a></li>
							<li><a href="=#">排行榜</a></li>
							<li><a href="=#">歌单</a></li>
							<li><a href="=#">歌手</a></li>
						</ul>
					</div>
					<div class="tab-pane" id="tab2">
						<ul class="ul2"></ul>
					</div>
					<div class="tab-pane" id="tab3">
						<ul class="ul2">

						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="topbar_1_3">
			<div class="div_search">
				<form class="form-search">
					<p class="input-append" style="margin-left: -100px;">
						<input type="text" class="span2 search"
							id="appendedInputButton search" value="请输入您想收索的歌曲名/歌手"
							onfocus="this.value=''"
							onblur="if(this.value==''){this.value='请输入您想收索的歌曲名/歌手'}" />
						<input type="submit" value="搜索" class="btn search1">
					</p>
				</form>
			</div>
			<div class="div_login">
				<%
					if (request != null) {
						User user = (User) request.getSession().getAttribute("user");
						if (user != null) {
				%>

				<div class="dropdown dro">
					<span>欢迎您：</span><a class="dropdown-toggle" data-toggle="dropdown"
						href="userlogin!queryPersonal.action?user.id=${user.id }"
						style=" font-size: 15;color: black;">${user.nickname } <b
						class="caret"></b></a>
					<ul class="dropdown-menu login" role="menu" style="color: black;">
						<li value="个人 信息"><a
							href="userlogin!queryPersonal.action?user.id=${user.id }"
							target="_blank" class="reg">个人信息</a></li>
						<li value="退出登录"><a href="userlogin!personalExit.action "
							class="reg">退出登录 </a></li>
					</ul>
				</div>

				<%
					} else {
				%>
				<a href="" class="btn btn-primary btn-lg" data-toggle="modal"
					data-target="#myModal"> 登录</a>|<a
					href="userlogin!preRegister.action">注册</a>
				<%
					}
					}
				%>
				<!-- 登录模态框开始 -->
				<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">&times;</button>
								<h4 class="modal-title" id="myModalLabel">登录</h4>
							</div>
							<div class="modal-body">
								<input type="text" name="user.userName" placeholder="用户名">
								<a href="userlogin!preRegister.action">没有注册？</a> <br>
								<input type="password" name="user.password" placeholder="密码">
								<a href="#">找回密码</a>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">关闭</button>
								<button type="button" class="btn btn-primary">登录</button>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal -->
				</div>
				<!--登录模态框结束  -->
			</div>
		</div>
		<!-- 登录框隐藏域 -->
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
						<th align="center" style="padding-left: 7">密 码</th>
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
		<div style="clear: both;"></div>
</body>

</html>
