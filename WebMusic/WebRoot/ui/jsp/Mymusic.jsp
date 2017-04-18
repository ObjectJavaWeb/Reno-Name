<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
<link href="ui/bootstrap/css/bootstrap.min.css" rel="stylesheet"
	media="screen">

<link href="ui/css/MyMusic.css" rel="stylesheet" type="text/css" />

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
<jsp:include page="MyJsp.jsp"></jsp:include>
	<div class="body_Mymusic">
		<div class="left">
			<div class="left_1">
				<div class="left_1_1">
					<a href="" target="_blank">创建的歌单</a>
				</div>
				<div class="left_1_2">
					<!--  <a href="" target="_blank">+新建</a>-->
					<button class="btn btn-mini btn-primary left_1_2_btn" type="button">
						<i class="icon-plus"> </i> 新建
					</button>
				</div>
			</div>
			<div class="left_2"></div>
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
						type="button">
						<i class="icon-pause"></i> 播放
					</button>
					<button class="btn btn-mini btn-primary right_1_2_btn"
						type="button">
						<i class="icon-heart"></i> 收藏
					</button>
					<button class="btn btn-mini btn-primary right_1_2_btn"
						type="button">
						<i class="icon-download-alt"></i> 下载
					</button>
					<button class="btn btn-mini btn-primary right_1_2_btn"
						type="button">
						<i class="icon-comment"></i> 评论
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
				<table width="100%" border="1" border-color="red">
					<tr>
						<th></th>
						<th>歌曲标题</th>
						<th>时长</th>
						<th>歌手</th>
						<th>专辑</th>
					</tr>
					<tr>
						<td></td>
						<td></td>

						<td></td>

						<td></td>

						<td></td>

					</tr>
				</table>
			</div>

		</div>
	</div>
</body>
</html>
