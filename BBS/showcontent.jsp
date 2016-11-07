<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="./bootstrap/dist/css/bootstrap.css" />
<link rel="stylesheet" href="./css/usercss.css" />


<title>帖子内容</title>
</head>
<body>
<div id="container">
         <div id="container2">
	<%
		String TopId = "";
	  
		try {
			TopId = request.getParameter("id");
			
			session.setAttribute("TopicId", TopId);
			
		} catch (NullPointerException e) {
			e.getStackTrace();
		}
		
	if (TopId == null || TopId.equals("")){
			response.sendRedirect("login.jsp");

		} else {
	%>


	<div class="alert alert-success">

		<nav class="navbar navbar-inverse" role="navigation"> <!--<nav class="navbar navbar-inverse" role="navigation">-->
		<p class="text-center">
		<ul class="nav nav-pills">

			<li role="presentation"><a href="./index.jsp" target="_blank">首页</a></li>

			<li role="presentation"><a href="./user.jsp">帖子列表</a></li>
			<li role="presentation"><a href="./intoupdate.jsp">发帖</a></li>
			<li role="presentation"><a href="./mytopic.jsp">我的帖子</a></li>
			<li role="presentation"><a href="./userupdate.jsp">用户中心</a></li>
			<li role="presentation"><a href="#">
			<span class="label label-success"><%=session.getAttribute("SqlUserName")%></a>
			</li>
			<li role="presentation"><a href="#">退出</a></li>

		</ul>

		</p>
		</nav>

		<h4>
		<img alt="逗" src="./img/dou.gif" class="img-circle" />
		<span class="label label-success">亲，欢迎来到论坛,下面是帖子内容!</span>
		<img alt="逗" src="./img/dou.gif" class="img-circle" />
		</h4>

		<%@include file="./showct.jsp" %>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>

	<%
		}
	%>
	</div>
	</div>
</body>
</html>