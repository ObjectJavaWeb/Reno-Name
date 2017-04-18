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
				<%-- <%
					for (int i = 0; i < 12; i++) {
				%>
				<li><span> <a href="#"> <img
							src="ui/image/musical.jpg">
							<p>这些声音里藏着故事（华语女声篇）</p>
					</a>
				</span></li>
				<%
					}
				%> --%>
				<c:forEach var="m" items="${musics }">
					<li><span> <a href="#"> <img
							src="ui/image/musical.jpg">
							<p>${m.name }</p>
					</a>
				</span></li>
				</c:forEach>
			</ul>
		</div>
		<div style="clear: both;"></div>
		<div class="div1-3">
			<p><img src="ui/image/tubiao.jpg"> <span>音乐排行榜</span></p>
			<table class="table">
				<tr>
					<th>排名</th>
					<th>歌名</th>
					<th>歌手</th>
					<th>类型</th>
					<th>点击量</th>
					<th>操作</th>
				</tr>
				<%
					for (int i = 1; i <= 10; i++) {
				%>

				<tr>
					<td><%=i%></td>
					<td>光辉岁月</td>
					<td>黄家驹</td>
					<td>粤语</td>
					<td>100</td>
					<td>添加到歌单</td>
				</tr>
				<%
					}
				%>
			</table>
		</div>

	</div>
</body>
</html>
