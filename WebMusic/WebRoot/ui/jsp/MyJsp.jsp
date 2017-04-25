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
	function isLogin(o, j, url) {
		if (o == "") {
			$('#myModal2').modal('show');
			return;
		}
		window.location = url;
		return;
	}
	$(function() {
		$("#login").click(function() {
			$('#myModal2').modal('hide');
			$('#myModal').modal('show');
		});
		
	});
	function toIndex() {
		window.location = "music!musicList.action";
	}
	function trans(url) {
		window.location = url;
	}
	function transa(url) {
		window.location = url;
	}
	function musicType(o) {

		window.location = "music!msicType.action?type=" + o;
	}
	 
</script>
</head>
<body>
	<%
		int index = Integer.parseInt(request.getParameter("index"));
	%>
	<!-- 顶部导航条 黑色背景 -->
	<div class="body">
		<!-- 网页图标 -->
		<div class="topbar_1_1"></div>
		<div class="topbar_1_2">
			<!-- 发现音乐 -->
			<div class="tabbable">
				<ul class="nav nav-tabs ul-nav">
					<li <%=index == 1 ? "class='active'" : ""%>><a href="#tab1"
						onclick="toIndex()" data-toggle="tab">发现音乐</a></li>
					<!-- 使a标签不能跳转 -->
					<li <%=index == 2 ? "class='active'" : ""%>><a href="#tab2"
						onclick="onclick=musicType('华语')" data-toggle="tab">音乐分类</a></li>
					<li <%=index == 3 ? "class='active'" : ""%>><a href="#tab3"
						onclick="isLogin('${user}', this, 'Mymusic!getMymusicList.action')"
						data-toggle="tab">个人</a></li>

				</ul>
				<div class="tab-content">
					<div class="tab-pane <%=index == 1 ? "active" : ""%>" id="tab1">
						<ul class="ul2">
							<li><a href="javascript:void(0);"
								onclick="transa('music!musicList.action')">推荐</a></li>
							<li><a href="javascript:void(0);"
								onclick="trans('music!parade.action')">排行榜</a></li>
						</ul>
					</div>
					<div class="tab-pane <%=index == 2 ? "active" : ""%>" id="tab2">
						<ul class="ul2">
							<li><a href="javascript:void(0);" onclick="musicType('华语')">华语</a></li>
							<li><a href="javascript:void(0);" onclick="musicType('流行')">流行</a></li>
							<li><a href="javascript:void(0);" onclick="musicType('摇滚')">摇滚</a></li>
							<li><a href="javascript:void(0);" onclick="musicType('民谣')">民谣</a></li>
							<li><a href="javascript:void(0);" onclick="musicType('电子')">电子</a></li>
						</ul>
					</div>
					<div class="tab-pane <%=index == 3 ? "active" : ""%>" id="tab3">
						<ul class="ul2">
							<li><a href="Mymusic!getMymusicList.action">我的音乐</a></li>
							<li><a
								href="userlogin!queryPersonal.action?user.id=${user.id }">个人信息</a></li>
							<li><a href="userlogin!personalExit.action ">退出登录 </a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="topbar_1_3">
			<div class="div_search">
				<form action="music!searchMusicBykeyword.action" method="post">
					<input name="k" type="text" class="search"
						id="appendedInputButton search"
						placeholder="&nbsp单曲&nbsp/&nbsp歌手&nbsp/&nbsp专辑"/>
					<input type="submit" id="btnSearch" value="搜索" class="search1 ">

				</form>
			</div>
			<div class="div_login">
				<%
					if (request != null) {
						User user = (User) request.getSession().getAttribute("user");
						if (user != null) {
				%>
				欢迎您：${user.nickname }
				<%
					} else {
				%>
				<a href="" class="" data-toggle="modal" data-target="#myModal">
					登录</a>|<a href="userlogin!preRegister.action">注册</a>
				<%
					}
					}
				%>


			</div>
		</div>
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
				<button type="button" class="btn btn-default " data-dismiss="modal">关闭</button>
				<button type="submit" class="btn btn-primary" data-toggle="modal" data-target="#myModal" id="login">登录</button>
			</div>
			
		</div>
		
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
				<button type="button" class="btn btn-default " data-dismiss="modal">关闭</button>
				<button type="submit" class="btn btn-primary data-toggle="
					modal" data-target="#myModal" id="login">登录</button>


				<!-- <a href="#" class="btn">登录</a> <a href="#" class="btn btn-primary">关闭</a> -->
			</div>
		</div>

		<!--登录模态框开始  -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			控制位置在中间
			<div class="modal-dialog">
				控制位置背景颜色为白色和宽度
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
		<div style="clear: both;"></div>
		<span class="mybfq">
		播放器
		</span>
		<div class="mybfqm">
			<jsp:include page="/ui/bdPlayer/MyJsp.jsp"></jsp:include>
		</div>
</body>
</html>
