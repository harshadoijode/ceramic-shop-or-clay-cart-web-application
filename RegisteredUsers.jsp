<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
body {
	background-color: #CCFFCC;
}
.style1 {
	color: #FFFF00;
	font-weight: bold;
}
.style2 {
	font-size: 36px;
	font-weight: bold;
}
.style4 {color: #000033; }
-->
</style></head>

<body>
<%@ include file="admintabs.html" %>
  <p align="center">
    <%@ include file="db.jsp" %>
    <span class="style2">
    <% 


try
{


rst=stmt.executeQuery("select * from customer ");

  
						
  %>
  Registered Users List</span> </p>
  <table width="467" border="1" align="center">
  <tr bgcolor="#0000FF">
    <td><div align="center" class="style1">Email </div></td>
    <td><div align="center" class="style1">first name </div></td>
    <td><div align="center" class="style1">Last Name </div></td>
    <td><div align="center" class="style1">Coutry</div></td>
	<td><div align="center" class="style1">zip</div></td>
	<td><div align="center" class="style1">state</div></td>
	<td><div align="center" class="style1">address</div></td>
	
	<td><div align="center" class="style1">Customer id</div></td>
	<td></td>
  </tr>
  <% 
  while(rst.next()){
  
   %>
    <form action="" method="get">
  <tr bgcolor="#FFFFFF">
  
    <td><div align="center" class="style4"><%= rst.getString(1) %></div></td>
  
    <td><div align="center" class="style4"><%= rst.getString(3) %></div></td>
    <td><div align="center" class="style4"><%= rst.getString(4) %></div></td>
	 <td><div align="center" class="style4"><%= rst.getString(5) %></div></td>
    <td><div align="center" class="style4"><%= rst.getString(6) %></div></td>
    <td><div align="center" class="style4"><%= rst.getString(7) %></div></td>
	 <td><div align="center" class="style4"><%= rst.getString(8) %></div></td>
    <td><div align="center" class="style4"><input name="id" type="text" value="<%= rst.getString(11) %>" /></div></td>
       <td><input name="delete" type="submit" value="Delete" /></td>
  </tr>
   </form>
  <% } %>
</table>

  
  <%  						
}catch(Exception e){
out.println(e);
}

 %>
 
 
 
 <%
if(request.getParameter("delete")!=null){
try{
int x=stmt.executeUpdate("delete from customer where customerid='"+request.getParameter("id")+"'");
if(x!=0){

%>
<script>
alert(" Deleted successfully");
window.open("RegisteredUsers.jsp","_self");
</script>
<%

}

}catch(Exception e){
out.print("error"+e);
}
}
 %>

</body>
</html>
