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

<link href="ui/css/MusicList.css" rel="stylesheet" type="text/css" />
<title>MusicaList</title>

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
	<div class="div1">
		<div class="div2">
			<ul>
				<li class="list3"><span><img src="ui/image/tubiao.jpg"><a
						href="#" class="span2">热门推荐</a></span></li>
				<li class="list1"><span class="span1"><a href="#">华语</a></span></li>
				<li class="list1"><span class="span1"><a href="#">流行</a></span></li>
				<li class="list1"><span class="span1"><a href="#">摇滚</a></span></li>
				<li class="list1"><span class="span1"><a href="#">民谣</a></span></li>
				<li class="list1"><span><a href="#">电子</a></span></li>
				<li class="list2"><span><a href="#">更多</a><img
						src="ui/image/jiantou.jpg"></span></li>
			</ul>
			<hr>
			<div class="div3">
				<ul>
					<li class="list4"><span><a href="#"><img
								src="ui/image/musical.jpg">这些声音里藏着故事（华语女声篇）</a></span></li>
					<li class="list4"><span><a href="#"><img
								src="ui/image/musical.jpg">这些声音里藏着故事（华语女声篇）</a></span></li>
					<li class="list4"><span><a href="#"><img
								src="ui/image/musical.jpg">这些声音里藏着故事（华语女声篇）</a></span></li>
					<li class="list4"><span><a href="#"><img
								src="ui/image/musical.jpg">这些声音里藏着故事（华语女声篇）</a></span></li>
					<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
					<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
					<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
					<li class="list4"><span><a href="#"><img
								src="ui/image/musical.jpg">这些声音里藏着故事（华语女声篇）</a></span></li>
					<li class="list4"><span><a href="#"><img
								src="ui/image/musical.jpg">这些声音里藏着故事（华语女声篇）</a></span></li>
					<li class="list4"><span><a href="#"><img
								src="ui/image/musical.jpg">这些声音里藏着故事（华语女声篇）</a></span></li>
					<li class="list4"><span><a href="#"><img
								src="ui/image/musical.jpg">这些声音里藏着故事（华语女声篇）</a></span></li>
					<li class="list5"><img src="ui/image/guangao.jpg"></li>
				</ul>
			</div>
		</div>

		<div class="div2">
			<ul>
				<li class="list3"><span><img src="ui/image/tubiao.jpg"><a
						href="#" class="span2">榜单</a></span></li>
				<li class="list2"><span><a href="#">更多</a><img
						src="ui/image/jiantou.jpg"></span></li>
			</ul>
			<hr>
			<div class="div4">
				<div class="div5">
					<ul>
						<li class="list6"><span class="span3"><a href="#"><img
									src="ui/image/biaoshengban.jpg" class="img1"></a></span></li>
						<li class="list6"><span class="span3"><a href="#"
								class="margin1">云音乐飙升榜</span></li>
						<li class="list6"><span class="span3"><a href="#"
								class=" span3 margin1"><img src="ui/image/bofangtubiao.jpg">&nbsp;<img
									src="ui/image/wenjianjiatubiao.jpg"></a></span></li>
					</ul>

					<div class="div6">
						<ul>
							<li class="span4"><span><font class="font1">1</font>
									<a href="#">还不是因为你长得不好看</a></span></li>
							<li class="span5"><span><font class="font1">2</font>
									<a href="#">Something just like this</a></span></li>
							<li class="span4"><span><font class="font1">3</font>
									<a href="#">还不是因为你长得不好看</a></span></li>
							<li class="span5"><span>4 <a href="#">Shape of
										You</a></span></li>
							<li class="span4"><span>5 <a href="#">给陌生女孩的歌</a></span></li>
							<li class="span5"><span>6 <a href="#">大雁</a></span></li>
							<li class="span4"><span>7 <a href="#">动物世界</a></span></li>
							<li class="span5"><span>8 <a href="#">一如年少模样</a></span></li>
							<li class="span4"><span>9 <a href="#">我要你</a></span></li>
							<li class="span5"><span>10 <a href="#">深夜书店</a></span></li>
							<li class="span4"><span class="span6"><a href="#">查看全部</a></span></li>
						</ul>
					</div>
				</div>
				<div class="div5">
					<div class="div5">
						<ul>
							<li class="list6"><span class="span3"><a href="#"><img
										src="ui/image/xingeban.jpg" class="img1"></a></span></li>
							<li class="list6"><span class="span3"><a href="#"
									class="margin1">云音乐新歌榜</span></li>
							<li class="list6"><span class="span3"><a href="#"
									class=" span3 margin1"><img src="ui/image/bofangtubiao.jpg">&nbsp;<img
										src="ui/image/wenjianjiatubiao.jpg"></a></span></li>
						</ul>
					</div>
				</div>
				<div class="div5">
					<div class="div5">
						<ul>
							<li class="list6"><span class="span3"><a href="#"><img
										src="ui/image/yuanchaungban.jpg" class="img1"></a></span></li>
							<li class="list6"><span class="span3"><a href="#"
									class="margin1">网易原创歌曲榜</span></li>
							<li class="list6"><span class="span3"><a href="#"
									class=" span3 margin1"><img src="ui/image/bofangtubiao.jpg">&nbsp;<img
										src="ui/image/wenjianjiatubiao.jpg"></a></span></li>
						</ul>
					</div>
				</div>
			</div>
		</div>

	</div>























</body>
</html>
