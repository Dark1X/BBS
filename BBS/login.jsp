<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
	<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>欢迎登录First论坛</title>
		<link rel="stylesheet" href="./bootstrap/dist/css/bootstrap.css" />
    <link rel="stylesheet" href="./css/css.css" />
	</head>
	<body>
	
	<div id="container">
         <div id="container2">

         	<div class="yingyin center">
         		<strong>
         			<font size="6" color="#6495ED">
         				欢迎登陆论坛
         			</font>
         		</strong>
         	</div>
         	<br /><br />
<form class="form-horizontal" role="form" action="CheckLogin.jsp" method="post">
      <div class="form-group"> 
      
    <div class="input-group">
      <div class="input-group-addon">邮箱</div>
      <input class="form-control" type="email" placeholder="Input Email"name="UserEmail">
      </div>
      <br>
      <div class="input-group">
      <div class="input-group-addon">密码</div>
      <input class="form-control" type="password" placeholder="Input PassWord"name="UserPwd">
    </div>

 
  </div>
  
  <br>
      	

  <div class="form-group center">
  
  <button type="submit" class="btn btn-primary">登陆</button>
 ———
  <button type="reset" class="btn btn-primary">重置</button>
  &nbsp; &nbsp;
  
     <span class="label btn-default"><a href="./register.jsp">没有账号？</a></span>
 
  </div>
</form>

      </div>
      
    </div>
		
	</body>
</html>
