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
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script src="ui/jquery/jquery-2.0.0.js"></script>
<script src="ui/js/Header.js"></script>
<link href="ui/bootstrap/css/bootstrap.min.css" rel="stylesheet"
	media="screen">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>表头</title>
<link href="ui/css/New_Header.css" rel="stylesheet" type="text/css" />
<script src="ui/jquery/jquery-2.0.0.js"></script>
<script src="ui/bootstrap/js/bootstrap.min.js"></script>
</head>

<body>
<div class="topbar">
	<div class="topbar_1_1"></div>
	<div class="search"></div>
	<div class="tabbable">
		<ul class="nav nav-tabs ul-nav">
			<li class="active"><a href="#tab1" data-toggle="tab">发现音乐</a></li>
			<li><a href="#tab2" data-toggle="tab">我的音乐</a></li>
			<li><a href="#tab3" data-toggle="tab">个人设置</a></li>
		</ul>
		<div style="clear: both;"></div>
		<div class="tab-content">
			<div class="tab-pane active" id="tab1">
				<ul class="ul2">
					<li>推荐</li>
					<li>排行榜</li>
					<li>歌单</li>
					<li>歌手</li>
				</ul>
			</div>
			<div class="tab-pane" id="tab2">
				<ul class="ul2"></ul>
			</div>
			<div class="tab-pane" id="tab3">
				<ul class="ul2">
					<li>推荐</li>
					<li>排行榜</li>
					<li>歌单</li>
					<li>歌手</li>
				</ul>
			</div>
		</div>

	</div>
	<div class="midum">
	
	</div>
	</div>
</body>
</html>
