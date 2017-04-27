<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="/struts-tags" prefix="s"%>

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
<!-- <meta http-equiv="refresh" content="0;url=music!musicList.action">
 -->
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript" src="ui/jquery/jquery-2.0.0.js"></script>
<script type="text/javascript">
	$(function() {
		$.ajax({
			url:"music!musicList.action",
			type:"POST",
			async:true,
			cache:false,
			success:function(data){
				$("#main").html(data);
			}
		});
	});
</script>
</head>

<body>
<div id="gototop">
		<a href="#top">回到<br>顶部
		</a>
	</div>
	
	<div id="main" style="width: 100%;height: 100%">
	<img style="margin-left: 300px" alt="" src="ui/image/bgload.gif">
	</div>
	
</body>