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

<title>My JSP 'MyJsp.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="ui/bdPlayer/src/css/smusic.css" />
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script type="text/javascript">
	
</script>
<script>
function MM_over(mmObj) {
	var mSubObj = mmObj.getElementsByTagName("div")[0];
	mSubObj.style.display = "block";
}
function MM_out(mmObj) {
	var mSubObj = mmObj.getElementsByTagName("div")[0];
	mSubObj.style.display = "none";
	
}
</script>
</head>

<body>
<div onmouseover="MM_over(this)" onmouseout="MM_out(this)" class="music_onclick">
	<div  class="grid-music-container f-usn">
		<div class="m-music-play-wrap">

			<div class="u-cover"></div>
			<div class="m-now-info">
				<h1 class="u-music-title">
					<strong>标题</strong><small>歌手</small>
				</h1>
				<div class="m-now-controls">
					<div class="u-control u-process">
						<span class="buffer-process"></span> <span class="current-process"></span>
					</div>
					<div class="u-control u-time">00:00/00:00</div>
					<div class="u-control u-volume">
						<div class="volume-process" data-volume="0.50">
							<span class="volume-current"></span> <span class="volume-bar"></span>
							<span class="volume-event"></span>
						</div>
						<a class="volume-control"></a>
					</div>

				</div>

				<div class="m-play-controls">
					<a class="u-play-btn mode mode-list current" title="列表循环"></a> <a
						class="u-play-btn mode mode-random" title="随机播放"></a> <a
						class="u-play-btn mode mode-single" title="单曲循环"></a>
				</div>
				<div class="m-play-controls"
					style="width:180px; height:50px; float:left; margin-left:20px; margin-top:-60px;z-index: 1;">
					<a class="u-play-btn prev" title="上一曲"></a> <a
						class="u-play-btn ctrl-play play" title="播放"></a> <a
						class="u-play-btn next" title="下一曲"></a>
				</div>
			</div>
		</div>
		<div class="f-cb">&nbsp;</div>
		<div class="m-music-list-wrap" style="display: none;"></div>
	</div>
	</div>
</body>
</html>
