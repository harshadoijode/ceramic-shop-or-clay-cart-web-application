<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>

<%@ include file="hometabs.html" %>
<%@ include file="db.jsp" %>
<style type="text/css">
<!--

.style1 {
	font-size: 36px;
	font-weight: bold;
}
.style2 {
	color:white;
	font-weight: bold;
	font-size: 18px;
}
-->
</style>
<script>
function validateForm(){
var x=document.forms["form1"]["username"].value;
var y=document.forms["form1"]["password"].value;
if(x==""){
alert("login name  cannot be blank");
return false;
}else if(y==""){
alert(" password cannot be blank");
return false;
}else{
return true;
}

}

</script>


</head>

<body>
<div align="center">
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p class="style2">Login Page  </p>
</div>
<form id="form1" name="form1" method="get" action="">
  <table width="531" border="1" align="center">
    <tr>
      <td width="291">Enter Username </td>
      <td width="224"><input type="text" name="username" /></td>
    </tr>
    <tr>
      <td>Enter Password </td>
      <td><input type="password" name="password" /></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="Login" onclick="return validateForm()"/>
      <input type="reset" name="Submit2" value="Reset" /></td>
    </tr>
  </table>
  <div align="center"></div>
</form>


<% 
if(request.getParameter("Submit")!=null){

try
{

String un=request.getParameter("username");
String pw=request.getParameter("password");
rst=stmt.executeQuery("select * from adminuser where username='"+un+"' and password='"+pw+"'");
						if(rst.next()){
							
							
							%>
							<script>
							alert("login successssssss...!");
							window.open("mainadmin.html","_self");
							</script>
							<%
						}else{
						%>
							<script>
							alert("login failed...!");
							window.open("login.jsp","_self");
							</script>
							<%
							
						}
}catch(Exception e){
out.println(e);
}

}
 %>
</body>
</html>
