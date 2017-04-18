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

<title>主页</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<META HTTP-EQUIV="Refresh" CONTENT="0;URL=music!musicList.action">

<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
</head>
<body>
<<<<<<< HEAD
</body>
</html>
=======
	<div id="gototop">
		<a href="#top">回到<br>顶部
		</a>
	</div>
	<jsp:include page="ui/jsp/MyJsp.jsp"></jsp:include>
	<div style="height: 500px;">
		<include file="ui/html/Music.html"></include>
		<jsp:include page="ui/jsp/MusicList.jsp"></jsp:include>
	</div>
</body>
>>>>>>> branch 'master' of https://github.com/ObjectJavaWeb/Reno-Name.git
