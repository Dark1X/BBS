<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ page errorPage="ShowError.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="./bootstrap/dist/css/bootstrap.css" />

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>处理登录</title>
</head>
<body>

    
<table class="table table-hover">

<%

request.setCharacterEncoding("UTF-8");  
response.setCharacterEncoding("UTF-8");  
response.setContentType("text/html; charset=utf-8");  
//防止出现乱码



Class.forName("com.mysql.jdbc.Driver");
String connectSQL="jdbc:mysql://localhost:3306/soft";
Connection conn=DriverManager.getConnection(connectSQL,"root","");
  

String Username = session.getAttribute("SqlUserName").toString();//更加严格的判断用户是否登录
String UserID = session.getAttribute("SqlUserID").toString();//更加严格的判断用户是否登录

 
 if (Username==null|| UserID==null || Username.equals("")|| UserID.equals("")){%>

 <jsp:forward page="./login.jsp"></jsp:forward>
 
 
<% 
}else{
	
	String TopicId = session.getAttribute("TopicId").toString();
	
	  String sql="select * from topic where id=?";
	
	   
	 PreparedStatement st = conn.prepareStatement(sql);

	 st.setString(1, TopicId);
	 
	 ResultSet rs=st.executeQuery();
	
	   String TopicTitle ="";
	   String TopicContent ="";
	   String TopicUser="";
	   
	 while(rs.next()){
		 TopicTitle=rs.getString("title");
		 
		 TopicUser=rs.getString("username");
		
		TopicContent=rs.getString("content");

	 //out.println("<td><a href='./connect.jsp?id="+rs.getInt("id")+"'>学号 </a></td>");
	 %>
	 

	<h3>
	<%
	out.println("<tr>");

	out.println("<td  class='success'>"+"标题：<code>"+TopicTitle+"</code></td>");
	
	out.println("</tr>");
	
	out.println("<tr>");
	out.println("<td class='success'>"+""+"</td>");
	out.println("<tr>");
	
	out.println("<tr>");
	out.println("<td  class='success'>"+"发帖人：<code>"+TopicUser+"</code></td>");
	out.println("</tr>");

	out.println("<tr>");
	out.println("<td class='success'>"+""+"</td>");
	out.println("<tr>");
	
	out.println("<tr>");
	out.println("<td  class='success'>"+"<h4>"+"正文："+"</h4>"+"<pre class='success'>"+"<xmp>"+TopicContent+"</xmp>"+"</pre>"+"</td>");
//out.println("<td  class='success'>"+"<h4>"+"正文："+"</h4>"+TopicContent+"</td>");
	out.println("</tr>");
	%>
	</h3>
	<%

	}

	
	 st.close();
	 conn.close();
 }
 

  %>

 </table>


</body>
</html>