<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<script src="ui/bootstrap/js/bootstrap.min.js"></script>
<link href="ui/bootstrap/css/bootstrap.min.css" rel="stylesheet"
	media="screen">
<base href="<%=basePath%>">

<title>登录页</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta name="viewport"
	content="width=device-width,initial-scale=1,maximum-scale=1.0" />
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
html,body {
	height: 100%;
}

.box {
	background: url('ui/image/bg_1.jpg');
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#6699FF',
		endColorstr='#6699FF'); /*  IE */
	/* background-image: linear-gradient(bottom, #6699FF 0%, #6699FF 100%);
	background-image: -o-linear-gradient(bottom, #6699FF 0%, #6699FF 100%);
	background-image: -moz-linear-gradient(bottom, #6699FF 0%, #6699FF 100%);
	background-image: -webkit-linear-gradient(bottom, #6699FF 0%, #6699FF 100%);
	background-image: -ms-linear-gradient(bottom, #6699FF 0%, #6699FF 100%); */
	margin: 0 auto;
	position: relative;
	width: 100%;
	height: 100%;
}

.login-box {
	text-align: center;
	width: 100%;
	max-width: 500px;
	height: 400px;
	position: absolute;
	top: 50%;
	margin-top: -200px;
	width: 100%;
	/*设置负值，为要定位子盒子的一半高度*/
}

@media screen and (min-width:500px) {
	.login-box {
		left: 50%;
		/*设置负值，为要定位子盒子的一半宽度*/
		margin-left: -250px;
	}
}

.form {
	width: 100%;
	max-width: 500px;
	height: 275px;
	margin: 25px auto 0px auto;
	padding-top: 25px;
}

.login-content {
	height: 300px;
	width: 100%;
	max-width: 500px;
	background-color: rgba(255, 250, 2550, .6);
	float: left;
}

.input-group {
	margin: 0px 0px 30px 0px !important;
}

.form-control,.input-group {
	height: 40px;
}

.form-group {
	margin-bottom: 0px !important;
}

.login-title {
	padding: 20px 10px;
	background-color: rgba(0, 0, 0, .6);
}

.login-title h1 {
	margin-top: 10px !important;
}

.login-title small {
	color: #fff;
}

.link p {
	line-height: 20px;
	margin-top: 30px;
}

.btn-sm {
	padding: 8px 24px !important;
	font-size: 16px !important;
}
</style>
</head>

<body>
 

	 <center style="background:url('ui/image/bg_1.jpg');">
		<font color="red"> <s:actionerror />
		</font> <span>用户登录</span>
		<form  action="userlogin!login.action" method="post">
			<table>
				<tr>
					<td>
						<span class="glyphicon glyphicon-user"></span>
						<input type="text" name="user.userName" placeholder="用户名">
						<a href="userlogin!preRegister.action">没有注册？</a> <br>
					</td>
				</tr>
				<tr>
					<td>
						<input type="password" name="user.password" placeholder="密码">
						<a href="<a href="userlogin!preRegister.action">">找回密码</a> <br>
					</td>
				</tr>
				<tr align="center">
					<td>
						<input type="submit" value="登录">
						&nbsp;&nbsp;&nbsp;
						<input type="reset" value="全部重置">
					</td>
				</tr>
			</table>
		</form>
	</center> 
</body>
</html>
