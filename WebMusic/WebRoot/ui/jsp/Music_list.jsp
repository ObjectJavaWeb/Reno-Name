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
<script src="ui/jquery/jquery-2.0.0.js"></script>
<link href="ui/bootstrap/css/bootstrap.min.css" rel="stylesheet"
	media="screen">
<script src="ui/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript">
	/*排行榜页面添加到歌单判断用户是否登录  */
	function rankinglist_open_add(o, user) {
		if (user == "") {
			$('#rankinglist_myModal2InLogin').css("display", "block");	
			return true;
		}else{
			var d = $(".s_add_musicTomusiclist_windows");
		for (var i = 0; i < d.length; i++) {
			$(".add_musicTomusiclist_windows" + i).css("display", "none");
		}
		$(".add_musicTomusiclist_windows" + o).css("display", "block");
}
		
	}
	/* 退出 提示登录窗口*/
	function close_rankinglist_open_add(){
		$("#rankinglist_myModal2InLogin").css("display", "none");
	}
	/*提示登录页点击登录 弹出登录窗口  */
	function rankinglist_openlogin(){
			$('#rankinglist_myModal2InLogin').css("display", "none");	
			 $("#rankinglist_myModalLogin").modal('show');
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
	function mycloses(o) {
		$(".add_musicTomusiclist_windows" + o).css("display", "none");
	}
</script>

</head>

<body id="music_id">
	<jsp:include page="/ui/jsp/MyJsp.jsp">
		<jsp:param value="1" name="index" />
	</jsp:include>
	<div class="div1">
		<!--没有 登录 弹出的窗口  -->
		<div class="modal box" id="rankinglist_myModal2InLogin"
			style="background:url('ui/images/box_bg.jpg') no-repeat; border: 1px solid black;">
			<div class="box_header">
			</div>
			<div class="box_body">
				<h4>登录网页云音乐</h4>
				<h6>随时随地管理你的音乐库</h6>
			</div>
			<div class="box_footer">
				<button type="button" class="btn btn-default " data-dismiss="modal" onclick="close_rankinglist_open_add()">关闭</button>
				<button type="submit" class="btn btn-primary data-toggle="
					modal" data-target="#rankinglist_myModalLogin" onclick="rankinglist_openlogin()">登录</button>
			</div>
		</div>
		<!--登录模态框开始  -->
		<div class="modal fade" id="rankinglist_myModalLogin" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<!-- 控制位置在中间 -->
			<div class="modal-dialog">
				<!-- 控制位置背景颜色为白色和宽度 -->
				<div class="modal-content login_windows">
					<div class="modal-header ">
						<h1 class="modal-title" id="myModalLabel"
							style="text-align: center;">登录</h1>
					</div>
					<form action="userlogin!login.action" method="post">
						<div class="modal-header ">
							<div class="login_user ">
								<span class="glyphicon glyphicon-user"
									style="color: rgb(82, 123, 232);"></span>
								<input type="text" name="user.userName" placeholder="用户名">
								<a href="userlogin!preRegister.action">没有注册？</a>
							</div>
						</div>
						<div class="modal-header ">
							<div class="login_password  ">
								<span class="glyphicon glyphicon-lock"
									style="color: rgb(82, 123, 232);"></span>
								<input type="password" name="user.password" placeholder="密码">
								<a href="ui/jsp/Userinput.jsp">找回密码</a>
							</div>
						</div>
						<div class="modal_footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">关闭</button>
							<button type="submit" class="btn btn-primary">登录</button>
						</div>
					</form>
				</div>
			</div>
		</div>
		<!-- 登录模态框结束  -->
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
						<span
							onclick="rankinglist_open_add(${pr.index},'${user }')">添加到歌单</span>
						<a href="javascript:void(0);"
							onclick="play('${p.name}','${p.image}','${p.songer }')">播放</a>
						<a href="music!getMusicMessage.action?music.id=${p.id}">查看</a>
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
								<!-- 歌单ID -->
								<!-- 	<input type="text" value="33" name="mymusicMusic.mymusic"> -->
								<!-- 歌曲ID -->
								<input type="hidden" value="${p.id }" name="music.id">
								<input type="button" value="取消"
									onclick="mycloses('${pr.index}')">
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
