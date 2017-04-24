<%@page import="org.music.pojo.Mymusic"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<title>我的音乐</title>

<link href="ui/css/MyMusic.css" rel="stylesheet" type="text/css" />

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script src="ui/jquery/jquery-2.0.0.js"></script>
<link href="ui/bootstrap/css/bootstrap.min.css" rel="stylesheet"
	media="screen">
<script src="ui/bootstrap/js/bootstrap.min.js"></script>
<link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css"
	rel="stylesheet">
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>

</head>
<script type="text/javascript">
	function open_NewSongList() {
		document.getElementById('open_NewSongList').style.display = 'block';
	}
	function closeme() {
		document.getElementById('open_NewSongList').style.display = 'none';

	}
	function open_UpdateSongList(o) {
		document.getElementById('open_updateSongList').style.display = 'block';
		$("#mymusic").attr("value", o);

	}
	function closeme_UpdateSongList() {
		document.getElementById('open_updateSongList').style.display = 'none';

	}
</script>

<body>
	<jsp:include page="/ui/jsp/MyJsp.jsp">
		<jsp:param value="3" name="index" />
	</jsp:include>
	<div style="clear: both;"></div>
	<div class="Mymusic">

		<div class="left">
			<div class="left_1">
				<div class="left_1_1">
					<p style="margin-top: 90px; font-size: 20px;">创建的歌单</p>
				</div>
				<div class="left_1_2">
					<a href="" data-toggle="modal" data-target="#myModaladdmusiclist"
						class="btn  left_1_2_btn ">+新建</a>
				</div>
				<!-- 新建歌单模态框开始 -->
				<div class="modal fade" id="myModaladdmusiclist" tabindex="-1"
					role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<!--控制位置在中间 -->
					<div class="modal-dialog">
						<!--控制位置背景颜色为白色和宽度 -->
						<div class="modal-content login_windows">
							<div class="modal-header ">
								<h1 class="modal-title" id="myModalLabel"
									style="text-align: center;">新建歌单</h1>
							</div>
							<form action="Mymusic!insertMymusic.action" method="post">
								<div class="modal-header ">
									<input type="text" name="mymusic.name" placeholder="歌单名">
								</div>
								<div class="modal_footer">
									<button type="button" class="btn btn-default"
										data-dismiss="modal">取消</button>
									<button type="submit" class="btn btn-primary">完成</button>
								</div>
							</form>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal -->
				</div>
				<!--新建歌单模态框结束  -->
			</div>
			<!--显示歌单列表  -->
			<div class="left_2">
				<ul>
					<c:forEach var="mymusiclist" items="${mymusicset}">
						<%-- <li><a class="mymusiclistli"
							href="addmusictomusiclist!MusicList.action?mymusic.id=${mymusiclist.id }">${mymusiclist.name }</a>
							
				<span style="float:right;">
				<a href="javaScript:open_UpdateSongList(${mymusiclist.id })"><span
									class="glyphicon glyphicon-edit"></span></a>
				<a href="Mymusic!removeMymusic.action?mymusic.id=${mymusiclist.id }">
									<span class="glyphicon glyphicon-trash"></span>
							</a></span>
							</li>
 --%>
						<li >
							<p style="float: left;">
								<a class="mymusiclistli"
									href="addmusictomusiclist!MusicList.action?mymusic.id=${mymusiclist.id }">${mymusiclist.name }</a>
							</p>
							<p >
								<a href="javaScript:open_UpdateSongList(${mymusiclist.id })"><span
									class="glyphicon glyphicon-edit"></span></a> <a
									href="Mymusic!removeMymusic.action?mymusic.id=${mymusiclist.id }">
									<span class="glyphicon glyphicon-trash"></span>
								</a>
							</p>
						</li>
					</c:forEach>

				</ul>
			</div>
			<!-- 修改歌单弹窗开始 -->
			<div id="open_updateSongList">
				<form action="Mymusic!updateMymusic.action" method="post">
					<input type="hidden" id="mymusic" name="mymusic.id">
					<table width="30%" border="0" cellpadding="3" cellspacing="1"
						style="background:white;	position:static;filter:progid:DXImageTransform.Microsoft.DropShadow(color=#666666,offX=4,offY=4,positives=true)"
						align="center">
						<tr>
							<th></th>
							<td>
								<font size="5">修改歌单信息</font>
							</td>
						</tr>
						<tr>
							<th align="center">歌单名：</th>
							<td>
								<input type="text" name="mymusic.name" placeholder="歌单名">
							</td>
						</tr>
						<tr>
							<th></th>
							<td>
								&nbsp;&nbsp;&nbsp;
								<input type="submit" value="保存">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="reset" value="退出"
									onClick="closeme_UpdateSongList()">
							</td>
						</tr>
					</table>
				</form>
			</div>
			<!-- 修改歌单弹窗结束 -->

		</div>
		<div class="right">
			<div class="right_1">
				<div class="right_1_1">
					<img alt="" src="">
				</div>
				<div class="right_1_2">
					<span
						style="margin-left: 30px;margin-top:20px;display: block;float: left;">歌单</span><i
						class="icon-chevron-right"
						style="margin-left: 2px;margin-top:23px;display: block;float: left;"></i>
					<span
						style="margin-left: -5px;margin-top:20px;display: block;float: left;">&nbsp;&nbsp;&nbsp;我喜欢的音乐</span>
					<img alt="" src=""><a href="">夏木</a><span
						style="margin-left: 100px;margin-top:-20px;display: block;float: left;">&nbsp;&nbsp;&nbsp;2017年04月9日</span>
					<button class="btn btn-mini btn-primary right_1_2_btn"
						type="button" style="background-color: #FBEEEB";>
						<i class="icon-pause"></i> <font color="black";>播放</font>
					</button>
					<button class="btn btn-mini btn-primary right_1_2_btn"
						type="button" style="background-color: #FBEEEB";>
						<i class="icon-heart"></i> <font color="black";>收藏</font>
					</button>
					<button class="btn btn-mini btn-primary right_1_2_btn"
						type="button" style="background-color: #FBEEEB";>
						<i class="icon-download-alt"></i> <font color="black";>下载</font>
					</button>
					<button class="btn btn-mini btn-primary right_1_2_btn"
						type="button" style="background-color: #FBEEEB";>
						<i class="icon-comment"></i> <font color="black";>评论</font>
					</button>
				</div>

			</div>
			<div class="right_2">
				<span
					style="display: block;float: left;margin-left: 20px;margin-top: 30px; font-weight: bold;font-size:20px;">歌曲列表</span>
				<span
					style="display: block;float: left;margin-left: 10px;margin-top: 40px;font-size: 10px;">165首歌</span>
				<span
					style="display: block;float: left;margin-left: 420px;margin-top: 40px;font-size: 10px;">播放
					：51次</span>

			</div>
			<div class="right_3"></div>
			<div class="right_4">
				<table width="100%" border="1" bordercolor="#FBE5DE">
					<tr>
						<th>
							<font size="0.5em">歌曲标题</font>
						</th>
						<th>
							<font size="0.5em">歌手</font>
						</th>
						<th>
							<font size="0.5em">专辑</font>
						</th>
					</tr>
					<c:forEach var="m" items="${musiclist}">
						<tr>
							<td>${m.name }</td>
							<td>${m.songer }</td>
							<td>${m.abum }</td>
						</tr>
					</c:forEach>
				</table>
			</div>

		</div>
	</div>
	<div calss="2"
		style="width:223px;height:35px;background-color: white;float: left;position: absolute;margin-top: 65px;margin-left:1126px;top:0; "></div>
</body>
</html>
