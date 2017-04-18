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

<title>My JSP 'MusicMessage.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="ui/css/MusicMessage.css" />
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<jsp:include page="/ui/jsp/MyJsp.jsp"></jsp:include>
	<div style="width: 80%;margin: 0 auto; margin-top: 40px">
		<div class="div1">
			<img alt="" src="ui/image/musical.jpg" style="display: block;">
		</div>
		<div class="div2">
			<ul>
				<li>歌名：${music.name }</li>
				<li>歌手：${music.songer }</li>
				<li>专辑：${music.abum }</li>
			</ul>
			<ul class="ul2-2">
				<li><a href="#">播放</a></li>
				<li><a href="#">收藏</a></li>
				<li><a href="#">下载</a></li>
				<li><a href="#">评论</a></li>
			</ul>
			<div class="div2-3"></div>
		</div>
		<div style="clear: both;"></div>
		<div class="div3">
			<h4 class="h4" style="display: inline-block;">评论</h4>
			<span>共100条评论</span>
			<hr>
			<img alt="" src="" style="width: 10%;float: left;">
			<form action="" style="float: left; width:90%">
				<textarea rows="4" style="width: 100%" placeholder="评论"></textarea>
				<input type="submit" value="评论" style="float: right;">
			</form>
		</div>
		<div style="clear: both;"></div>
		<div class="div4">

			<h5 class="h5">近期评论</h5>
			<hr>
			<div class="div5-1">
				<img alt="" src="" style="width: 10%;float: left;">
				<div style="width: 90% ;float: left;">
					<a href="#">xxxxx</a><span>:近期评论</span>
					<div>
						<span style="float: left: ;">2016年9月29日</span> <span
							style="float: right;"><a href="#">赞</a>|<a href="#">评论</a></span>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
