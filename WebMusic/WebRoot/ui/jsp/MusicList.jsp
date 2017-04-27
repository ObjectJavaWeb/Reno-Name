<%@page import="org.music.pojo.Music"%>
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
<title>MusicList</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<style type="text/css">
.div1-2 ul li a{
	font-size: 5px;
	text-decoration: none;
	text-align: center;
	color: black;
	}
.div1-2 ul li a:HOVER {
	color: pink;
}
</style>

</head>

<body id="music_id">
	<jsp:include page="/ui/jsp/MyJsp.jsp">
		<jsp:param value="1" name="index" />
	</jsp:include>
	<%--  --%>
	<div class="div1">
		<div style="height: 450px">
			<jsp:include page="carousel.jsp"></jsp:include>
		</div>
		<div class="div1-2" style="margin-top: 34px">
			<ul>
				<c:forEach var="m" items="${musics }">
					<li style="height: 250px"><a
						href="music!getMusicMessage.action?music.id=${m.id}"> <img
							src="ui/music/image/${m.image }.jpg"
							style="width: 150px;height:150px;"> <span>${m.name }</span>
					</a></li>
				</c:forEach>
			</ul>
		</div>
	</div>

</body>
</html>
