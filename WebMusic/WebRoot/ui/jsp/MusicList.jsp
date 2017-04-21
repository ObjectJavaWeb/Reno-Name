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
<script type="text/javascript">
	function musicType(o) {
		
		$.ajax({
		url:"musics.action",
		type:"POST",
		data:{"music.type":o},
		success:function(data){
			console.log(data);
		}
		});
	}
</script>

</head>

<body id="music_id">
	<div class="div1">
		<jsp:include page="carousel.jsp"></jsp:include>
		<div class="div1-1">
			<ul id="music_type">
				<li><a href="javaScript:musicType('华语')">华语</a></li>
				<li><a href="javaScript:musicType('流行')">流行</a></li>
				<li><a href="javaScript:musicType('摇滚')">摇滚</a></li>
				<li><a href="javaScript:musicType('民谣')">民谣</a></li>
				<li><a href="javaScript:musicType('电子')">电子</a></li>
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
						<td>添加到歌单</td>
					</tr>
				</c:forEach>
			</table>
		</div>

	</div>
</body>
</html>
