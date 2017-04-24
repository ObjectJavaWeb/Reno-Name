<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<title>My JSP 'Search_musiclist.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript">
function open_add(o,user) {
	
	if(user==""){
		$('#myModal2').modal('show');
		return;
	}
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

	$(function() {
		$("#canl").click(function() {
			$(".s_add_musicTomusiclist_windows").css("display", "none");
		});
	});
	function mycloses(o) {
		$(".add_musicTomusiclist_windows" + o).css("display", "none");
	}
</script>
</head>

<body>
<jsp:include page="/ui/jsp/MyJsp.jsp">
		<jsp:param value="1" name="index" />
	</jsp:include>
	<table class="table">
		<tr>
			<th>歌名</th>
			<th>歌手</th>
			<th>专辑</th>
			<th>类型</th>
			<th>操作</th>
		</tr>
		<c:forEach var="music" items="${searchResult }" varStatus="pr">
			<tr>
				<th>${pr.index+1 }</th>
				<th>${music.name}</th>
				<th>${music.songer}</th>
				<th>${music.abum}</th>
				<th>${music.type}</th>
				<th>
					<span onclick="open_add(${pr.index},'${user }')">添加到歌单</span>
					<div style="display: none;"
						class="s_add_musicTomusiclist_windows add_musicTomusiclist_windows${pr.index }">
						<h4>选择要添加到的歌单</h4>
						<form action="addmusictomusiclist!addMusicToMusiclist.action"
							method="post">
							<select name="mymusic.id">
								<c:forEach var="mymusic" items="${mymusic }">
									<option value="${mymusic.id }">${mymusic.name }</option>
								</c:forEach>
							</select>
							<!-- 歌单ID -->
							<!-- 	<input type="text" value="33" name="mymusicMusic.mymusic"> -->
							<!-- 歌曲ID -->
							<input type="hidden" value="${p.id }" name="music.id">
							<input type="button" value="取消" onclick="mycloses('${pr.index}')">
							<input type="submit" value="确认添加">
						</form>
					</div>
				</th>
			</tr>
		</c:forEach>
	</table>
</body>
</html>
