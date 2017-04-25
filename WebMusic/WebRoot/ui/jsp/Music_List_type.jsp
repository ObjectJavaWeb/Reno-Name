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
<link href="ui/bootstrap/css/bootstrap.css">
<title>MusicList</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script type="text/javascript">
	function open_add(o, user) {

		if (user == "") {
			$('#myModal2').modal('show');
			return;
		}
		var d = $(".s_add_musicTomusiclist_windows");
		for (var i = 0; i < d.length; i++) {
			$(".add_musicTomusiclist_windows" + i).css("display", "none");
		}
		$(".add_musicTomusiclist_windows" + o).css("display", "block");

	}

	/* $(function() {
		$("#canl").click(function() {
			$(".s_add_musicTomusiclist_windows").css("display", "none");
		});
	}); */
	function musicType(o) {

		$.ajax({
			url : "musics.action",
			type : "POST",
			data : {
				"music.type" : o
			},
			success : function(data) {
				console.log(data);
			}
		});
	}
	function mcloses(o) {
		$(".add_musicTomusiclist_windows" + o).css("display", "none");
	}
</script>

</head>

<body id="music_id">
	<jsp:include page="/ui/jsp/MyJsp.jsp">
		<jsp:param value="2" name="index" />
	</jsp:include>
	<div class="div1" style="margin-top: 30px">
		<div class="div1-3">
			<table class="table" width="100%">
				<tr>
					<th>序号</th>
					<th>歌名</th>
					<th>歌手</th>
					<th>类型</th>
					<th>专辑</th>
					<th>操作</th>
				</tr>
				<c:forEach var="p" items="${musics }" varStatus="pr">
					<tr>
						<td>${pr.index+1 }</td>
						<td>${p.name }</td>
						<td>${p.songer }</td>
						<td>${p.type }</td>
						<td>${p.abum }</td>
						<td>
							<span onclick="open_add(${pr.index},'${user }')">添加到歌单</span>
							<div
								class="s_add_musicTomusiclist_windows add_musicTomusiclist_windows${pr.index }">
								<h4>选择要添加到的歌单</h4>
								<form action="addmusictomusiclist!addMusicToMusiclist.action"
									method="post">
									<select name="mymusic.id">
										<c:forEach var="mymusic" items="${mymusic }">
											<option value="${mymusic.id }">${mymusic.name }</option>
										</c:forEach>
									</select>
									<!-- 歌曲ID -->
									<input type="hidden" value="${p.id }" name="music.id">
									<input type="button" value="取消"
										onclick="mcloses('${pr.index }')">
									<input type="submit" value="确认添加">
								</form>
							</div>
							<a href="javascript:void(0);" onclick="play('${p.name}','${p.image}','${p.songer }')">播放</a>
						</td>
					</tr>
				</c:forEach>
			</table>
			<jsp:include page="/ui/jsp/pager.jsp">
				<jsp:param value="${pageNo}" name="pageNo"/>
				<jsp:param value="${pageSize}" name="pageSize"/>
				<jsp:param value="${count}" name="count"/>
				<jsp:param value="music!msicType.action" name="URL"/>
				<jsp:param value="${type }" name="Type"/>
			</jsp:include>

		</div>
	</div>
</body>
</html>
