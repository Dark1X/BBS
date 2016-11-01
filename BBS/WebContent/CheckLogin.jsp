<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>链接</title>
</head>
<body>
<%

Class.forName("com.mysql.jdbc.Driver");
String connectSQL="jdbc:mysql://localhost:3306/ss";
Connection conn=DriverManager.getConnection(connectSQL,"root","root");
  
  
  String sql="select * from user where email=?";
  
 PreparedStatement st = conn.prepareStatement(sql);

 String UserEmail = request.getParameter("UserEmail");
 String UserPwd = request.getParameter("UserPwd");
 
 st.setString(1, UserEmail);
 
 ResultSet rs=st.executeQuery();
 
   String SqlUserPwd ="";
   String SqlUserName ="";
 while(rs.next()){

	SqlUserPwd=rs.getString("passwd");
	SqlUserName=rs.getString("username");

 }
 
 
 if (UserEmail.equals(null)|| UserPwd==(null) || UserEmail.equals("")|| UserPwd.equals("")){%>

 <jsp:forward page="./login.jsp"></jsp:forward>
 
 
<% 
}else{
	
 if(SqlUserPwd.equals(UserPwd)){
	  
	 out.println("登录成功");
	 session.setAttribute("UEmail", UserEmail);
	 session.setAttribute("SqlUserName", SqlUserName);
	 %>
	 <jsp:forward page="./user.jsp"></jsp:forward>

 <%}else{%>
 
 <jsp:forward page="./login.jsp"></jsp:forward>
	 
 <%
 }
	 
 }
 
 st.close();
 conn.close();
  %>
  <!--  
  if(SqlUserPwd==UserPwd){
  
 out.println("ok");
  
  }
   -->

</body>
</html>