<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<link href="ui/css/MusicList.css" rel="stylesheet" type="text/css" />
<title>MusicaList</title>

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
	<div class="div1">
		<div class="div1-1">
			<ul>
				<li><a href="#">华语</a></li>
				<li><a href="#">流行</a></li>
				<li><a href="#">摇滚</a></li>
				<li><a href="#">民谣</a></li>
				<li><a href="#">电子</a></li>
			</ul>
		</div>
		<div class="div1-2">
			<ul>
				<c:forEach var="m" items="${musics }">
					<li><a href="music!musicMessage.action?music.id=${m.id }"><img src="ui/image/musical.jpg"><span class="music">
								${m.name } </span></a></li>
				</c:forEach>
			</ul>
		</div>
		<div style="clear: both;"></div>
		<div class="div1-3">
			<p>
				<img src="ui/image/tubiao.jpg"> <span>音乐排行榜</span>
			</p>
			<table class="table">
				<tr>
					<th>排名</th>
					<th>歌名</th>
					<th>歌手</th>
					<th>类型</th>
					<th>点击量</th>
					<th>操作</th>
				</tr>
				<c:forEach var="p" items="${parade}" varStatus="pa">
				<tr>
					<td>${pa.index+1 }</td>
					<td>${p.name }</td>
					<td>${p.songer }</td>
					<td>${p.type }</td>
					<td>${p.hit }</td>
					<td>添加到歌单</td>
				</tr>
				</c:forEach>
			</table>
		</div>

	</div>
</body>
</html>
