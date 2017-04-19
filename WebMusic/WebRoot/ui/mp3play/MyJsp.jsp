<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MyJsp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript" src="ui/jquery/jquery-2.0.0.js"></script>
<script type="text/javascript">
	$(function() {
		var audio = document.getElementById("audio");
		$("#play").click(function() {
			if (audio.paused) {
				audio.play();
				$("#play").val("暂停");
			} else {
				audio.pause();
				$("#play").val("播放");
			}
		});

	});
	function setTimer() {
		var maxTime = audio.duration;
		var currentTime = audio.currentTime;
		$("#time").html(fomatTime(currentTime) + "/" + fomatTime(maxTime));
	}
	setInterval("setTimer()", "1000");
	function fomatTime(time) {
		var m = Math.floor(Math.floor(time) / 60);
		var s = Math.floor(Math.floor(time) % 60);
		var str = "";
		if (m < 10) {
			str = str + "0";
		}
		str = str + m + ":";
		if (s < 10) {
			str = str + "0";
		}
		str = str + s;
		return str;
	}
</script>
  </head>
  
  <body>
  <audio id="audio">
		<source src="ui/mp3play/music/gala.mp3" type="audio/mpeg">
	</audio>
	<button>上一首</button>
	<input type="button" id="play" value="播放">
	<button>下一首</button>
	<span id="time"></span>
    <jsp:include page="MyHtml.html"></jsp:include>
  </body>
</html>
