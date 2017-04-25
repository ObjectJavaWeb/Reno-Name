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

<title>My JSP 'MusicMessage.jsp' starting page</title>
<link rel="stylesheet" type="text/css" href="ui/css/MusicMessage.css" />
</head>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="ui/css/MusicMessage.css" />
<script src="ui/jquery/jquery-2.0.0.js"></script>
<script type="text/javascript">
	function reply(o, user) {
		if (user == "") {
			$('#myModal22').modal('show');
			return;
		}
		var d = $(".sreplys");
		for (var i = 0; i < d.length; i++) {
			$(".reply" + i).css("display", "none");
		}
		$(".reply" + o).css("display", "block");

	}
	$(function() {
		$("#loginn").click(function() {
			$('#myModal22').modal('hide');
			$('#myModal').modal('show');
		});
		$("#sum").click(function() {
			var content = $("#content").val();
			var userId = $("#userId").val();
			var commentId = $("#commentId").val();
			$.ajax({
				url : "reply!insertReply.action",
				type : "GET",
				datatype : "json",
				data : {
					"reply.content" : content,
					"user.id" : userId,
					"comment.id" : commentId
				}
			});
		});
	});
	/*打开回复框  */
	function open_reply_windows() {
		document.getElementById('reply_windows').style.display = 'block';
	}
	/* 判断用户是否登录*/
	function islogin(o) {
		if (o == "") {
			$('#myModal22').modal('show');
			return false;
		}
		return true;
	}
</script>
</head>

<body>
	<jsp:include page="/ui/jsp/MyJsp.jsp">
		<jsp:param value="1" name="index" />
	</jsp:include>
	<!-- 登录模态框开始 -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<!--控制位置在中间 -->
		<div class="modal-dialog">
			<!--控制位置背景颜色为白色和宽度 -->
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
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
						<button type="submit" class="btn btn-primary">登录</button>
					</div>
				</form>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>
	<!--登录模态框结束  -->
	<div style="width: 85%; margin: 0 auto;">
		<div style="height: 150px;margin-top: 20px">
			<div style="float: left;margin-left: 140px">
				<img src="ui/music/image/${music.image}.jpg">
			</div>
			<div class="div2">
				<ul>
					<li>歌名：${music.name }</li>
					<li>歌手：${music.songer }</li>
					<li>专辑：${music.abum }</li>
				</ul>
				<%-- <ul class="ul2-2">
					<li><a href="#">播放</a></li>
					<li><a href="#">收藏</a></li>
					<li><a href="ui/image/${music.image }.mp3">下载</a></li>
					<li><a href="#">评论</a></li>
				</ul> --%>
				<div class="div2-3"></div>
			</div>
		</div>

		<div style="clear: both;"></div>
		<!-- 用户没有登录 打开的窗口开始 -->
		<div class="modal box" id="myModal22"
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
				<button type="button" class="btn btn-default " data-dismiss="modal"
					id="closewindows">关闭</button>
				<button type="button" class="btn btn-primary " data-toggle="modal" data-target="#myModal" id="loginn">登录</button>
			</div>
		</div>
		<!-- 用户没有登录 打开的窗口结束 -->
		<div class="div3">

			<h4 class="h4" style="display: inline-block;">评论</h4>
			<!-- <span>共100条评论</span> -->
			<hr>
			<form action="Comment!insertComment.action"
				onsubmit="return islogin('${user}');" style="float: left; width:90%"
				method="post">
				<!-- 获得当前歌曲id-->
				<input type="hidden" value="${music.id}" name="music.id">
				<textarea rows="4" style="width: 100%" placeholder="评论"
					name="comment.content"></textarea>
				<input type="submit" value="评论" style="float: right;">
			</form>
		</div>
		<div style="clear: both;"></div>
		<div class="div4">

			<h5 class="h5">精彩评论</h5>
			<hr>
			<div class="div5-1">

				<div style="width: 90% ;float: left;">
					<!-- 评论列表 -->
					<ul>
						<c:forEach var="comments" items="${comments }" varStatus="c">
							<li>
								<div style="border-bottom: 1px solid #C0C0C0;">

									 <c:forEach var="reply" items="${comments.replies}">
										<div style="border-bottom: 1px solid #C0C0C0;">
											${reply.user.nickname}:${reply.content}</div>
									</c:forEach>

									<div>
										${comments.user.nickname }:${ comments.content}<br> <span>${comments.cdate }</span><span
											style="float: right" onclick="reply(${c.index},'${user }')">|回复</span>
									</div>
									<div class="sreplys reply${c.index }">
										<form action="reply!insertReply.action" method="post">
											<textarea rows="2" cols="20" name="reply.content"></textarea>
											<input type="submit" value="回复">
											<input type="hidden" value="${comments.id }"
												name="comment.id">
											<input type="hidden" value="${user.id }" name="user.id">
											<input type="hidden" value="${music.id }" name="music.id">
										</form>
									</div>
								</div>
							</li>
						</c:forEach>
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
