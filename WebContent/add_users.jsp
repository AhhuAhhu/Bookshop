﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
out.println("<base href=\""+basePath+"\">");
%>
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 

<title>增加用户</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="styles.css">

</head>

<body>
  <center><font size="7" color="#5E5CA7">添加用户</font></center><br/><br/>
  <center>
   <form id="adduser_form" action="/booksshop/addusers">
       用户名：&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="userName"><br/>
       真实姓名：&nbsp;<input type="text" name="userRealName"><br/>
       用户密码：&nbsp;<input type="text" name="userpass"><br/>
       家庭住址：&nbsp;<input type="text" name="useradress"><br/>
       电话号码：&nbsp;<input type="text" name="usertel"><br/>
       电子邮件：&nbsp;<input type="text" name="useremail"><br/>
       <input type="submit" value="增加" style="width: 70px;height: 35px; background-color: #B2C4D7">  	   
   </form>
   </center>
</body>
</html>