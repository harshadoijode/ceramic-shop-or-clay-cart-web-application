<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
body {
	background-color: #4D8CCE;
}
.style2 {font-size: 36px}
-->
</style></head>

<body>
<%@ include file="db.jsp" %>
<div align="center" class="style2">
  <p>about Old age home </p>
  <form action="addperson.jsp" method="get">
  <div align="center">
    
    <input name="addprod" type="submit" id="addprod" value="Add person" />
  </div>
</form>
  <table width="926" border="1">
  <tr>
    <td width="510"><img src="images/Chrysanthemum.jpg" width="469" height="319" /></td>
    <td width="364">&nbsp;</td>
    <td width="11">&nbsp;</td>
    <td width="13">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>

</div>
<form action="addperson.jsp" method="get">
  <div align="center">
    
    <input name="addprod" type="submit" id="addprod" value="Add person" />
  </div>
</form>
<% if(request.getParameter("addprod")!=null){ 
rst=stmt.executeQuery("select * from category");
%>
<% } %>


<% 
if(request.getParameter("Submit")!=null){
try
{
String path="images/";
String name=request.getParameter("name");
String address=request.getParameter("address");
String gname=request.getParameter("gname");

String image=path+request.getParameter("image");
String contact=request.getParameter("contact");


int x=stmt.executeUpdate("insert into OldAgePerson values('"+name +"','"+address +"','"+gname +"','"+image +"','"+contact+"')");

if(x!=0){
out.print("person added   succuessfilly");
}
			
}catch(Exception e){
out.println(e);
}
}

 %>
 
 
 
  
 
 
</body>
</html>
