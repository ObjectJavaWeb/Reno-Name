<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
<title>表头</title>
<link href="ui/css/Header.css" rel="stylesheet" type="text/css" />
<script src="ui/jquery/jquery-2.0.0.js"></script>
<script src="ui/js/Header.js"></script>
<script src="ui/bootstrap/js/bootstrap.min.js"></script>
</head>
  
  <body>
	<div class="body">
		<div class="topbar_1">
			<div class="topbar_1_1">
			<img alt="" src="ui/image/mxcptimg.jpg" style="height: 70px;padding-left: 150px">
			</div>
			<div class="topbar_1_2">
				<ul class="ul_1">
					<li value="发现音乐">发现音乐</li>
					<li value="我的音乐">我的音乐</li>
					<li value="个人设置">个人设置</li>
				</ul>
			</div>
			<div class="topbar_1_3">
				<form>
					<input class="search" type="text" placeholder="请输入您想收索的歌曲名/歌手">Search
				</form>
				<a href="ui/jsp/Login.jsp" target="_blank" class="reg">登录</a>
			</div>
		</div>
		<div class="topbar_2" name="发现音乐" title="12">
			<ul class="ul_2">
				<li>推荐</li>
				<li>排行榜</li>
				<li>歌单</li>
				<li>歌手</li>
			</ul>
		</div>
		<div class="topbar_2 header" name="我的音乐" title="12">
			<ul class="ul_2">
				<li>推荐</li>
				<li>排行榜</li>
				<li>歌单</li>
				<li>歌手</li>
			</ul>
		</div>
		<div class="topbar_2 header" name="个人设置" title="12">
			<ul class="ul_2">
				<li>推荐</li>
				<li>排行榜</li>
				<li>歌单</li>
				<li>歌手</li>
			</ul>
		</div>
	</div>
</body>
</html>
