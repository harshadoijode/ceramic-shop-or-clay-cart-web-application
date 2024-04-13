<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="refresh" content="10">
<title>Untitled Document</title>
<style type="text/css">
<!--
body {
	background-color: #8F8F8F;
	background-image: url(images/t2.jpg);
}
-->
</style><meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" /></head>

<body>
<p>
  <%@ include file="db.jsp" %>
  
  
</p>
<p><a href="GO_Shopping.jsp" target="mainFrame">Home</a></p>
<table width="238" border="1" align="center">
  <tr style="background-color:#FF9966">
    <td><div align="center"><strong>CATEGORIES</strong></div></td>
  </tr>
 

<% rst=stmt.executeQuery("select distinct category from product where storephone='"+session.getAttribute("user")+"' order by category");

while(rst.next()){
 %>
 <tr style="background-color:#FFFFFF">
    <td><div align="center"><a href="showCart.jsp?p=<%= rst.getString(1)  %>" style="text-decoration:none" target="mainFrame"><%= rst.getString(1) %></a><br />
    </div></td>
  </tr>
  <% } %>
</table>




<p align="center"><a href="rating.jsp" target="mainFrame"><input type="button" value="            Review             " />
</a></p>
<p align="center"><a href="setroght.html" target="mainFrame">
  <input name="button" type="button" value="    Customer login        " />
</a></p>
<p align="center">&nbsp;</p>

</body>
</html>
