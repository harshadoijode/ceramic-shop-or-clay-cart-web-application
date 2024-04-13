<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
body {
	background-image: url(images/bg2.jpg);
	background-color: #000066;
}
.style1 {
	font-size: 36px;
	font-weight: bold;
	color: #FFFF00;
}
-->
</style></head>

<body>
<%@ include file="db.jsp" %>
<% 
rst=stmt.executeQuery("select  storename from stores where storemobileno='"+session.getAttribute("user")+"'");
if(rst.next()){
 %>
<div align="center" class="style1"><%= rst.getString(1)%></div>

<% }else{ %>
<div align="center" class="style1">online ordering</div>
<% } %>
</body>
</html>
