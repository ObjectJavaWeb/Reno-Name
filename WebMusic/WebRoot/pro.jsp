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

<title>My JSP 'pro.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script type="text/javascript" src="ui/jquery/jquery-2.0.0.js"></script>
<script type="text/javascript" >
$(function(){
	 $("#image").load("ui/html/Music.html"); 
});

</script>
</head>

<body>
	<div id="gototop">
		<a href="#top">回到<br>顶部
		</a>
	</div>
	<jsp:include page="ui/jsp/MyJsp.jsp"></jsp:include>
	<div id="image"></div>
	<%-- <div style="height: 500px;">
		<include file="ui/html/Music.html"></include>
		<jsp:include page="ui/jsp/MusicList.jsp"></jsp:include> --%>
	</div>
</body>
</html>