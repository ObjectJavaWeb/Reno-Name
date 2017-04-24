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

<title>My JSP 'pager.jsp' starting page</title>

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
	<%
		int pageNo = Integer.parseInt(request.getParameter("pageNo"));
		int pageSize = Integer.parseInt(request.getParameter("pageSize"));
		int count = Integer.parseInt(request.getParameter("count"));
		int allPages = (count - 1) / pageSize + 1;
		String type=request.getParameter("Type");
		String URL = request.getParameter("URL");
	%>
	<form action="<%=URL%>" method="get" id="split_form" onsubmit="return checkPageNo();">
		<input type="button" value="首页" <%=pageNo == 1 ? "disabled" : ""%>
			onclick="changePage(1);" />
		<input type="button" value="上一页" <%=pageNo == 1 ? "disabled" : ""%>
			onclick="changePage(<%=pageNo - 1%>);" />
		<input type="button" value="下一页"
			<%=allPages == pageNo ? "disabled" : ""%>
			onclick="changePage(<%=pageNo + 1%>);" />
		<input type="button" value="尾页"
			<%=allPages == pageNo ? "disabled" : ""%>
			onclick="changePage(<%=allPages%>);" />
			<input type="hidden" name="pageNo" id="pageNo" value="<%=pageNo %>"/>
			<input type="hidden" name="type" value="<%=type %>"/>
			<input type="hidden" name="pageSize" value="10"/>
			<input type="hidden" name="keyword" value=""/>
		<span>第<%=pageNo %>页,共<%=allPages %>页</span>
	</form>
	</div>
	<script type="text/javascript">
			function changePage(newPage) {
				
				// 改变页数
				document.getElementById("pageNo").value = newPage;
				// 提交表单,改变显示内容
				document.getElementById("split_form").submit();
			}
			function checkPageNo() {
				// 取得当前输入的页数
				var pageNo = document.getElementById("pageNo").value;
				// 判断是否是合法的数字
				// 在js里,使用 /^格式$/.test(内容) 来测试内容是否匹配某个格式 
				// \d(数字),\w(字母,数字或下划线), +(前面的内容有1个以上),?(0个或1个),*(有没有都可以)
				// 如果符合条件,则返回true,否则返回false 
				if (/^\d+$/.test(pageNo)) {
					// 还要判断是否在范围内
					if (pageNo >= 1 && pageNo <= <%=allPages%>) {
						// 合法
						return true;
					}
				}
				return false;
			}
			</script>
</body>
</html>
