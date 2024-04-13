<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style1 {
	font-size: 18px;
	font-weight: bold;
}
body {
	background-color: #838383;
}
-->
</style>
</head>

<body>
<p>
  <%@ include file="db.jsp" %>
</p>
<p align="center" class="style1">Donation </p>
<form id="form1" name="form1" method="get" action="">
  <table width="550" border="1" align="center">
    <tr>
      <td width="170"><div align="right">person name </div></td>
      <td width="364"><input type="text" name="name" /></td>
    </tr>
    <tr>
      <td><div align="right">Account No </div></td>
      <td><input name="accnoi" type="text" id="accno" /></td>
    </tr>
	 <tr>
      <td><div align="right">Amount</div></td>
      <td><input name="amount" type="text" id="amount" /></td>
    </tr>
    <tr>
      <td><div align="right">Address </div></td>
      <td><textarea name="address" cols="50" id="address"></textarea></td>
    </tr>
    <tr>
      <td><div align="right">Contact No  </div></td>
      <td><input name="contact" type="text" id="desc" value="" size="50" /></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="Donate" />
        <input type="reset" name="Submit2" value="Reset" /></td>
    </tr>
  </table>
  <div align="center"></div>
</form>


<div align="center">
  <% 
if(request.getParameter("Submit")!=null){
try
{

String name=request.getParameter("name");
String accno=request.getParameter("accno");
String amount=request.getParameter("amount");

String address=request.getParameter("address");
String contact=request.getParameter("contact");


int x=stmt.executeUpdate("insert into doner(donerName,accNo,Amount,Address,contactNo) values('"+name +"','"+accno +"','"+amount +"','"+address +"','"+contact+"')");

if(x!=0){
%> 
Danation has done successfully

<%
}
			
}catch(Exception e){
out.println(e);
}
}

 %>
</div>
</body>
</html>
