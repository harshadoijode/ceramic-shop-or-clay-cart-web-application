<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="storetabs.html" %>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<div align="center" class="style4">Show Orders </div>
<%@ include file="db.jsp" %>
<% 
rst=stmt.executeQuery("select * from orderlist where storephone='"+session.getAttribute("user") +"'");

 %>
<table width="1176" border="1" align="center">
  <tr bgcolor="grey" style="color:#000033">
    <td width="91"><span >Productname</span></td>
    <td width="102"><span >product cost </span></td>
    <td width="73"><span >Quantity</span></td>
    <td width="94"><span >Total amount </span></td>
    <td width="111"><span>Address</span></td>
    <td width="162"><span >Card Holder name </span></td>
    <td width="113"><span>Card Type </span></td>
    <td width="200"><span>Card Number </span></td>
   
  </tr>
  <% while(rst.next()){ %>
  <tr bgcolor="blue">
    <td><span class=""><%= rst.getString(1) %></span></td>
    <td><span class=""><%= rst.getString(2) %></span></td>
    <td><span class=""><%= rst.getString(3) %></span></td>
    <td><span class=""><%= rst.getString(4) %></span></td>
    <td><span class=""><%= rst.getString(5) %></span></td>
    <td><span class=""><%= rst.getString(6) %></span></td>
    <td><span class=""><%= rst.getString(7) %></span></td>
    <td><span class=""><%= rst.getString(8) %></span></td>
  
  </tr>
  <% } %>
</table>
</body>
</html>
