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
<script type="text/javascript">
	function open_add(o) {
		var d = $(".s_add_musicTomusiclist_windows");
		for (var i = 0; i < d.length; i++) {
			$(".add_musicTomusiclist_windows" + i).css("display", "none");
		}
		$(".add_musicTomusiclist_windows" + o).css("display", "block");

	}
	function close(o) {
		alert(o);
		var d = $(".s_add_musicTomusiclist_windows");
		$(".s_add_musicTomusiclist_windows" + o).css("display", "none");
	}
</script>
<head>
<base href="<%=basePath%>">

<link href="ui/css/MusicList.css" rel="stylesheet" type="text/css" />
<title>MusicList</title>

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
		<jsp:include page="carousel.jsp"></jsp:include>
		<div class="div1-1">
			<ul>
				<li><a href="music!musicType?music.type=华语">华语</a></li>
				<li><a href="music!musicType?music.type=流行">流行</a></li>
				<li><a href="music!musicType?music.type=摇滚">摇滚</a></li>
				<li><a href="music!musicType?music.type=民谣">民谣</a></li>
				<li><a href="music!musicType?music.type=电子">电子</a></li>
			</ul>
		</div>
		<div class="div1-2">
			<ul>
				<c:forEach var="m" items="${musics }">
					<li><a href="music!getMusicMessage.action?music.id=${m.id }">
							<img src="ui/image/musical.jpg"> <span>${m.name }</span>
					</a></li>
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
				<c:forEach var="p" items="${parade }" varStatus="pr">
					<tr>
						<td>${pr.index+1 }</td>
						<td>${p.name }</td>
						<td>${p.songer }</td>
						<td>${p.type }</td>
						<td>${p.hit }</td>
						<td>
							<span onclick="open_add(${pr.index})">添加到歌单</span>
							<div
								class="s_add_musicTomusiclist_windows add_musicTomusiclist_windows${pr.index }">
								<h4>选择要添加到的歌单</h4>
								<form action="addmusictomusiclist!addMusicToMusiclist.action" method="post">
									 <select name="mymusic.id">
										<c:forEach var="mymusic" items="${mymusic }">
											<option value="${mymusic.id }" >${mymusic.name }</option>
										</c:forEach>
									</select> 
									<!-- 歌单ID -->
								<!-- 	<input type="text" value="33" name="mymusicMusic.mymusic"> -->
									<!-- 歌曲ID -->
									<input type="text" value="${p.id }" name="music.id">
									<input type="button" value="取消">
									<input type="submit" value="确认添加">
								</form>
							</div>
						</td>

					</tr>
				</c:forEach>
			</table>
		</div>

	</div>
</body>
</html>
