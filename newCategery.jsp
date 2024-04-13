<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style1 {color: #999999}
-->
</style>
</head>

<body>

  <%@ include file="db.jsp" %>

<% rst=stmt.executeQuery("select distinct category from product order by category");


 %>
 

<table width="200" height="200" border="0" align="center" cellpadding="2" cellspacing="5">
 



  <% 
int i=3;
int j=4;
for(i=0;i<=3;i++){
%>
 <tr>
<%

while(rst.next()){

   %>
  
    <td height="141" width="200" style="background-color:#FF0000"><div align="center" class="style1">
      <p><div align="center"><a href="showCart.jsp?p=<%= rst.getString(1)  %>" style="text-decoration:none" target="mainFrame"><%= rst.getString(1) %></a><br />
    </div> 
     
    </div></td>
  
    <% 
  
}
 %>
 </tr>
 <br />

 <% 

}

 %>
</table>
<div align="center"></div>
</body>
</html>
