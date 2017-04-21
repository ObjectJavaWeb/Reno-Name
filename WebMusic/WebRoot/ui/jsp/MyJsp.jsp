<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="org.music.pojo.User"%>
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
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link href="ui/css/Header.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="ui/jquery/jquery-2.0.0.js"></script>
<link href="ui/bootstrap/css/bootstrap.min.css" rel="stylesheet"
	media="screen">
<script src="ui/bootstrap/js/bootstrap.min.js"></script>
<link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css"
	rel="stylesheet">
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<title>顶部导航</title>
<script type="text/javascript">
	function isLogin(o, j,url) {
		if (o == "") {
			/* $.ajax({
				url:"ui/jsp/PromptBox.jsp",
				type:"POST",
				async:true,
				cache:true,
				success:function(data){
					$(data).modal('show');
				}
			}); */
			$('#myModal2').modal('show');
			return;
		}
		$(j).attr("href", url);
	}
	$(function() {
		$("#login").click(function() {
			$('#myModal2').modal('hide');
			$('#myModal').modal('show');
		});
	});
</script>
</head>
<body>
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
		<button type="button" class="btn btn-default " data-dismiss="modal">关闭
		</button>
		<button type="submit" class="btn btn-primary data-toggle="
			modal" data-target="#myModal" id="login">登录</button>

		<!-- <a href="#" class="btn">登录</a> <a href="#" class="btn btn-primary">关闭</a> -->
	</div>
</div>
<!-- 顶部导航条 黑色背景 -->
<div class="body">

	<!-- 网页图标 -->
	<div class="topbar_1_1"></div>
	<div class="topbar_1_2">
		<!-- 发现音乐 -->
		<div class="tabbable">
			<ul class="nav nav-tabs ul-nav">
				<li class="active"><a href="#tab1" data-toggle="tab">发现音乐</a></li>
				<!-- 使a标签不能跳转 -->
				<li><a href="javascript:void(0);"
					onclick="isLogin('${user}',this,'Mymusic!getMymusicList.action')">我的音乐</a></li>
				<li><a href="javascript:void(0);"
					onclick="isLogin('${user}',this,'userlogin!queryPersonal.action?user.id=${user.id }')"
					>个人信息</a></li>

			</ul>
			<div class="tab-content">
				<div class="tab-pane active" id="tab1">
					<ul class="ul2">
						<li><a href="=#">推荐</a></li>
						<li><a href="=#">排行榜</a></li>
						<li><a href="=#">歌单</a></li>
						<li><a href="=#">歌手</a></li>
					</ul>
				</div>
				<div class="tab-pane" id="Mymusic!getMymusicList.action">
					<ul class="ul2"></ul>
				</div>
				<div class="tab-pane" id="tab3">
					<ul class="ul2">

					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="topbar_1_3">
		<div class="div_search">
			<form action="music!musicList.action" method="post">
				<input name="k" type="text" class="search"
					id="appendedInputButton search"
					value="&nbsp单曲&nbsp/&nbsp歌手&nbsp/&nbsp专辑" onfocus="this.value=''"
					onblur="if(this.value==''){this.value='&nbsp单曲&nbsp/&nbsp歌手&nbsp/&nbsp专辑'}" />
				<input type="submit" value="搜索" class="search1 ">
			</form>
		</div>
		<div class="div_login">
			<%
				if (request != null) {
					User user = (User) request.getSession().getAttribute("user");
					if (user != null) {
			%>

			<li class="dropdown"><span class="dropdown-toggle"
				data-toggle="dropdown">欢迎您：${user.nickname }<b class="caret"></b>
			</span>
				<ul class="dropdown-menu">
					<%-- <li><a
								href="userlogin!queryPersonal.action?user.id=${user.id }"
								target="_blank" class="reg">个人信息</a></li> --%>
					<li><a href="userlogin!personalExit.action " class="reg">退出登录
					</a></li>
				</ul></li>

			<%
				} else {
			%>
			<a href="" class="" data-toggle="modal" data-target="#myModal">
				登录</a>|<a href="userlogin!preRegister.action">注册</a>
			<%
				}
				}
			%>
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
								<button type="button" class="btn btn-default"
									data-dismiss="modal">关闭</button>
								<button type="submit" class="btn btn-primary">登录</button>
							</div>
						</form>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal -->
			</div>
			<!--登录模态框结束  -->
		</div>
	</div>
	<div style="clear: both;"></div>
	</body>
</html>
