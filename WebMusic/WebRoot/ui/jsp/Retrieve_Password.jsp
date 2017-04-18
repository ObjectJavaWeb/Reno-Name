<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Retrieve_Password.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body style="background:url('ui/image/bg_1.jpg');">
	<div style="height: 50px;"></div>
	<h3 class="h3" style="text-align: center;">请根据问题回答相应的答案</h3>
	<form method="post" action="userregister!R_password.action"
		class="form-inline">
		<table class="table">
			<c:forEach var="q" items="${ allQuestions}">
			<tr>
				<th>问题：</th>
				<td>
					<input type="text"  style="width: 202.2px"  value="${q.question }">
					<input type="hidden" value="${q.answer }">
				</td>
			</tr>
				
			<tr>
				<th>答案:</th>
				<td>
					<input type="text" style="width: 202.2px" 
						name="">
				</td>
			</tr>
			</c:forEach>

			<tr>
				<th></th>
				<td>
					<input class="btn btn-info" type="submit" value="确认">
					<input class="btn btn-info" type="reset" value="重置">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
