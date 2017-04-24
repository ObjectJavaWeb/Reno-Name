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
<title>MusicList</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script type="text/javascript">
	function open_add(o,user) {
		var d = $(".s_add_musicTomusiclist_windows");
		if (user== "") {
			$('#myModal2').modal('show');
			return;
		}
		for (var i = 0; i < d.length; i++) {
			$(".add_musicTomusiclist_windows" + i).css("display", "none");
		}
		$(".add_musicTomusiclist_windows" + o).css("display", "block");

	}
	function close_add(o) {

	}
	function close(o) {
		alert(o);
		var d = $(".s_add_musicTomusiclist_windows");
		$(".s_add_musicTomusiclist_windows" + o).css("display", "none");
	}

	$(function() {
		$(".canl").click(function() {
			$(".s_add_musicTomusiclist_windows").css("display", "none");
		});
	});
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
	/*判断用户是否登录  打开相应窗口  */
	function isLogin(o, j) {
		
	}
	$(function() {
		$("#closewindows").click(function() {
			$('#myModal2').modal('hide');
		});
	});
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
						<td>
							<span onclick="open_add(${pr.index},'${user}')"><a
								href="javascript:void(0);">添加到歌单</a></span>
							<div
								class="s_add_musicTomusiclist_windows add_musicTomusiclist_windows${pr.index }">
								<h4>选择要添加到的歌单</h4>
								<!-- 歌单ID -->
								<form action="addmusictomusiclist!addMusicToMusiclist.action"
									method="post">
									<select name="mymusic.id">
										<c:forEach var="mymusic" items="${mymusic }">
											<option value="${mymusic.id }">${mymusic.name }</option>
										</c:forEach>
									</select>
									<!-- 歌曲ID -->
									<input type="hidden" value="${p.id }" name="music.id">
									<input type="button" class="canl" value="取消">
									<input type="submit" value="确认添加">
								</form>
							</div>
							<!-- 用户没有登录 打开的窗口开始 -->
							<div class="modal box" id="myModal2"
								style="background:url('ui/images/box_bg.jpg') no-repeat; border: 1px solid black;">
								<div class="box_header">
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">&times;</button>
								</div>
								
								<div class="box_body">
									<h4>登录网页云音乐</h4>
									<h6>随时随地管理你的音乐库</h6>
								</div>
								<div class="box_footer">
									<button type="button" class="btn btn-default "
										data-dismiss="modal" id="closewindows">关闭</button>
									<button type="submit" class="btn btn-primary data-toggle="
										modal" data-target="#myModal" id="login">登录</button>


									<!-- <a href="#" class="btn">登录</a> <a href="#" class="btn btn-primary">关闭</a> -->
								</div>
								
							</div>
							<!-- 用户没有登录 打开的窗口结束 -->
						</td>
					</tr>
				</c:forEach>
			</table>
		</div>

	</div>
</body>
</html>
