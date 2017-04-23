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

<title>My JSP 'Music.jsp' starting page</title>

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
	var song = [ "sh.mp3", "sxdqw.mp3", "sxdqw.mp3", "wbda.mp3" ];
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
		$("#pro").click(function() {
			myplay(audio, "上一首");
		});
		$("#next").click(function() {
			myplay(audio, "下一首");
		});
		$("audio").bind("ended",function(){
			var typePlay=$("#playmusic").val();
				myplay(audio, "下一首");
			
			
		});
		$("#playmusic").click(function () {
			var type=["单曲","顺序","随机"];
			var t=$("#playmusic").val();
			var item=0;
			for ( var i=0;i<type.length;i++) {
				if (t==type[i]) {
					item=i;
					break;
				}
			}
			if (item>=(type.length-1)) {
				item=0;
			}else{
				item=item+1;
			}
			$("#playmusic").attr("value",type[item]);
		});
	});
	function serchSongs(o) {
		var item = 0;
		for (var i = 0; i < song.length; i++) {
			if (song[i] == o) {
				item = i;
			}
		}
		return item;
	}
	function myplay(audio, type) {
		audio.pause();
		var name = audio.src;
		var url = "ui/music/";
		var songer = name.substring(name.lastIndexOf("/") + 1);
		var index = serchSongs(songer);
		if (type == "上一首") {
			if (index == 0) {
				index = song.length - 1;
			} else {
				index--;
			}
		} else {
			if (index == song.length - 1) {
				index = 0;
			} else {
				index++;
			}
		}

		name = url + song[index];
		audio.src = name;
		audio.play();
		$("#play").val("暂停");
	}
</script>
<style type="text/css">
audio{
width: 100%;
height: 50px;
}
</style>
</head>

<body>
	<audio  id="audio" > <source
		src="ui/music/sgz.mp3" type="audio/mpeg" /> </audio>
	<input type="button" id="pro" value="上一首">
	<input type="button" id="play" value="播放">
	<input type="button" id="next" value="下一首">
	<input type="button" id="playmusic" value="单曲">
</body>
</html>
