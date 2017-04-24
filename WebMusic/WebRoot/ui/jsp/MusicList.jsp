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
	function musicMessage(url, id) {
		/* $.ajax({
			url:url,
			type:"POST",
			data:{'music.id':id},
			async:true,
			cache:false,
			success:function(data){
				$("#main").html(data);
			}
		}); */
		window.location = url + "?"
	}
</script>

</head>

<body id="music_id">
	<jsp:include page="/ui/jsp/MyJsp.jsp">
		<jsp:param value="1" name="index" />
	</jsp:include>
	<div class="div1">

		<jsp:include page="carousel.jsp"></jsp:include>
		<div class="div1-2" style="margin-top: 34px">
			<ul>
				<c:forEach var="m" items="${musics }">
					<li><a href="music!getMusicMessage.action?music.id=${m.id}">
							<img src="ui/image/musical.jpg"> <span>${m.name }</span>
					</a></li>
				</c:forEach>
			</ul>
		</div>


	</div>
</body>
</html>
