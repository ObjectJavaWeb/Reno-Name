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
<link href="ui/css/Header.css" rel="stylesheet" type="text/css" />
<script src="ui/jquery/jquery-2.0.0.js"></script>
<script src="ui/js/Header.js"></script>
<link href="ui/bootstrap/css/bootstrap.min.css" rel="stylesheet"
	media="screen">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
<link href="ui/css/Header.css" rel="stylesheet" type="text/css" />
<script src="ui/jquery/jquery-2.0.0.js"></script>
<script src="ui/js/Header.js"></script>
<script src="ui/bootstrap/js/bootstrap.min.js"></script>
</head>

<body>
		<jsp:include page="ui/jsp/Header.jsp"></jsp:include>
		<!--下面这个div 是留来控制格式  后期要删除  -->
		<div style="height: 500px;\"></div>
		<jsp:include page="ui/jsp/foot.jsp"></jsp:include>

</body>
</html>
