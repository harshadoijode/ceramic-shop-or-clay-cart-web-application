<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<p>
  <%@ include file="db.jsp" %>
</p>
<p>welcome to <strong><%= session.getAttribute("user")%></strong></p>
<form action="" method="get">
  <div align="center">
    <input type="submit" name="addtoNotify" value="Add product for notification" />
    <input type="submit" name="watch" value="watch notification" />
    <input type="submit" name="show" value="Show Notified Products" />
  </div>
</form>
</p>
<% if(request.getParameter("addtoNotify")!=null){ %>
<form id="form1" name="form1" method="post" action="">
  <table width="398" border="1" align="center">
    <tr>
      <td width="208">Enter Product Name </td>
      <td width="174"><input type="text" name="productname" /></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="notify" value="Add to notify" /></td>
    </tr>
  </table>
</form>
<p align="center">
  <% } %>
  
  
  
  <% if(request.getParameter("notify")!=null){
String user=(String)session.getAttribute("user");
String productname=request.getParameter("productname");
int x=stmt.executeUpdate("insert into notification(email,productname) values('"+user+"','"+productname+"') ");
if(x!=0){
out.print("product added successfully for notification");
}
}
 %>
  
  
   <% if(request.getParameter("watch")!=null){
String user=(String)session.getAttribute("user");
  
rst=stmt.executeQuery("select product.productname,product.quantity  from product,notification where product.productname=notification.productname and email='"+user+"'");
if(rst.next()){
%> 
  
Your Product Notifications  </p>
<table width="438" border="1" align="center">
  <tr>
    <td>Product name</td>
    <td>Quantity</td>
    <td>Status</td>
  </tr>
 
 <%
 ResultSet rst2=stmt.executeQuery("select product.productname,product.quantity  from product,notification where product.productname=notification.productname and email='"+user+"'");
while(rst2.next()){
%>
 <tr>
    <td><%= rst2.getString(1) %></td>
    <td><%= rst2.getString(2) %></td>
    <td>Available</td>
  </tr>
  
  <% } %>
</table>
<%
}else{

out.print("No notifications for your product Request");


}
}

 %>
 
 
 
 
 <% if(request.getParameter("show")!=null){ 
  String user=(String)session.getAttribute("user");
 %>

Your Product Notifications  </p>
<table width="438" border="1" align="center">
  <tr>
    <td>Product name</td>
   
    <td>Status</td>
  </tr>
 
 <%
 ResultSet rst3=stmt.executeQuery("select product.productname from product,notification where product.productname=notification.productname and email='"+user+"'");
while(rst3.next()){
%>
<form action="" method="get">
 <tr>
    <td><input name="productname" type="text" value="<%= rst3.getString(1) %>" /></td>
   
    <td><input name="remove" type="submit" value="Remove" /></td>
  </tr>
  </form>
  <% } 
  }
  %>
</table>

 
 
 
 <%						

if(request.getParameter("remove")!=null){
String user=(String)session.getAttribute("user");
String productname=request.getParameter("productname");
int x=stmt.executeUpdate("delete from notification where productname='"+productname+"' and email='"+user+"' ");
if(x!=0){
response.sendRedirect("customerPage.jsp");
}
}




 %>
 
</body>
</html>
