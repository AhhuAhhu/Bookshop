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
    
    <title>查看书籍</title>
     <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
    <center><font size="7" color="#5E5CA7">显示全部书籍</font></center>
	<br>
	<br>
	<center>
	<table border="1" width="1000" bgcolor="#A9C0E2" style="text-align: center;">
		<tr>
			<td>图书编号</td>
			<td>图书名称</td>
			<td>图书作者</td>
			<td>图书价格</td>
			<td>图书出版社</td>
			<td>图书简介</td>
		</tr>
		<c:forEach items="${books}" var = "book">
		<tr>
			<td>${book.bookId}</td>
			<td>${book.bookName}</td>
			<td>${book.bookAuthor}</td>
			<td>${book.bookPrice}</td>
			<td>${book.bookPub}</td>
			<td>${book.bookDesc}</td>
		</tr>
		</c:forEach>
	</table>
	</center>
  </body>
</html>