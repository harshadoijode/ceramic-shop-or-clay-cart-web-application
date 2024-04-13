<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="storetabs.html" %>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<%@ include file="db.jsp" %>
<% 


try
{


rst=stmt.executeQuery("select productname,productCast,charity from orderlist where storephone='"+session.getAttribute("user") +"' and charity > 0  ");

  
						
  %></p>
  <table width="467" border="1" align="center">
  <tr bgcolor="#0000FF">
   
    <td><div align="center" class="style1">Product Name </div></td>
    <td><div align="center" class="style1">Product cast </div></td>
    <td><div align="center" class="style1">Discount</div></td>
  </tr>
  <% 
  while(rst.next()){
  
   %>
  <tr bgcolor="grey">
    <td><div align="center"><%= rst.getString(1) %></div></td>
    <td><div align="center"><%= rst.getString(2) %></div></td>
    <td><div align="center"><%= rst.getString(3) %></div></td>
   
  </tr>
  <% } %>
</table>

  
  <div align="center">
    <%  
  rst=stmt.executeQuery("select sum(Charity) from orderlist where storephone='"+session.getAttribute("user") +"' and charity > 0");
  if(rst.next()){
  %>
 <h2><%  out.print("the total Gain amount is:"+rst.getString(1)); %></h2>
 <%
  }						
}catch(Exception e){
out.println(e);
}

 %>
  </div>
</body>
</html>
