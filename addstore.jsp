<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
 body {
	background-image: url(images/t1.jpg);
}
body,td,th {
	color: #993300;
	font-family: Courier New, Courier, monospace;
	font-weight: bold;
	font-size: 24px;
}

-->
</style></head>

<body>
<%@ include file="hometabs.html" %>
<%@ include file="db.jsp" %>
<div align="center"><strong> New Seller Store Registration </strong></div>
<form id="form1" name="form1" method="post" action="">
  <table width="513" border="1" align="center">
  <tr>
      <td width="285">Enter Store ID </td>
      <td width="212"><input name="s1" type="text"  /></td>
    </tr>
    <tr>
      <td width="285">Enter Store name </td>
      <td width="212"><input name="s2" type="text"  /></td>
    </tr>
    <tr>
      <td>Address</td>
      <td><textarea name="s3" cols="20" rows="5" ></textarea></td>
    </tr>
    <tr>
      <td>Store mobile no. </td>
      <td><input name="s4" type="text"  /></td>
    </tr>
    <tr>
      <td>password</td>
      <td><input name="s5" type="password" /></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="Register" /></td>
    </tr>
  </table>
</form>
<p>&nbsp;</p>

<% 
if(request.getParameter("Submit")!=null){

String s1=request.getParameter("s1");
String s2=request.getParameter("s2");
String s3=request.getParameter("s3");
String s4=request.getParameter("s4");
String s5=request.getParameter("s5");

try{
int x=stmt.executeUpdate("insert into stores(storeid,storename,address,storemobileno,password) values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"')");
if(x!=0){
out.print("Store  registered Successfully");
}else{
out.println("this store already exist");
}

}catch(Exception e){
out.println("this store already exist");
}
}
 %>

</body>
</html>
