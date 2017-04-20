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
function reply(o) {
	var d=$(".sreplys");
	for ( var i=0;i<d.length; i++) {
		$(".reply"+i).css("display","none");
	}
	$(".reply"+o).css("display","block");
	
}
$(function(){
	
	$("#sum").click(function(){
		var content=$("#content").val();
		var userId=$("#userId").val();
		var commentId=$("#commentId").val();
		$.ajax({
			url:"reply!insertReply.action",
			type:"GET",
			datatype:"json",
			data:{"reply.content":content,"user.id":userId,"comment.id":commentId}
		});
	});
});
</script>
</head>

<body>
	<jsp:include page="/ui/jsp/MyJsp.jsp"></jsp:include>

	<div style="width: 85%; margin: 0 auto;">
		<div style="height: 150px;margin-top: 20px">
			<div style="float: left;margin-left: 140px">
				<img src="ui/image/musical.jpg">
			</div>
			<div class="div2">
				<ul>
					<li>歌名：${music.name }</li>
					<li>歌手：${music.songer }</li>
					<li>专辑：${music.abum }</li>
				</ul>
				<ul class="ul2-2">
					<li><a href="#">播放</a></li>
					<li><a href="#">收藏</a></li>
					<li><a href="#">下载</a></li>
					<li><a href="#">评论</a></li>
				</ul>
				<div class="div2-3"></div>
			</div>
		</div>
		<div style="clear: both;"></div>
		<div class="div3">
			<h4 class="h4" style="display: inline-block;">评论</h4>
			<span>共100条评论</span>
			<hr>
			<img alt="" src="" style="width: 10%;float: left;">
			<form action="Comment!insertComment.action"
				style="float: left; width:90%" method="post">
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
									<div>
									${comments.user.userName }:${ comments.content}<br> <span
										style="float: left;">${comments.cdate }</span><span
										style="float: right" onclick="reply(${c.index})">|回复</span>
										</div>
										<div class="sreplys reply${c.index }" >
												<textarea rows="2" cols="20" id="content"></textarea>
												<input type="submit" id="sum" value="回复">
												<input type="hidden" id="userId" value="${comments.user.id }">
												<input type="hidden" id="commentId" value="${comments.id }">
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
