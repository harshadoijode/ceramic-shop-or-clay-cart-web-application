<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--

.style1 {
	color: #CCCCCC;
	font-weight: bold;
	font-size: 24px;
	font-family: "Times New Roman", Times, serif;
}
body,td,th {
	color: #000033;
	font-family: Arial, Helvetica, sans-serif;
}
.style3 {
	color: grey;
	font-size: 36px;
}
.style8 {font-size: 18px; font-weight: bold; }
.style11 {color: #FF0000; font-weight: bold; }
-->
</style>
<script language="javascript">
function validationForm()
{
 var x= document.forms["form1"]["username"].value;
 var y= document.forms["form1"]["password"].value;
 if(x=="")
 {
 alert("username must be filled out");
 return false;
 }
 else if(y=="")
 {
 alert(" password must be filled out");
 return false;
 }else{
 return true;
 }
 }</script>
</head>

<body>
<%@ include file="hometabs.html" %>
<div align="center" class="style1">
  <p>&nbsp;</p>
  <p align="center" class="style3">Contact US&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </p>
</div>
<form id="form1" name="form1" method="post" action="logincode.jsp">
  <p>&nbsp;</p>
  <table width="400" height="184" border="0" align="center">
    <tr>
      <td width="160"><div align="right"><span class="style8">College Name  </span></div></td>
      <td width="218"><span class="style11">GFGC Shimoga </span></td>
    </tr>
    <tr>
      <td height="77"><div align="right"><span class="style8">Address</span></div></td>
      <td><span class="style11">BH Road , Shimoga </span></td>
    </tr>
    <tr>
      <td height="32"><div align="right"><strong>Phone Number </strong></div></td>
    <td><span class="style11">9036545574</span>    </tr>
    <tr>
      <td height="32"><div align="right"><strong>Email Address </strong></div></td>
    <td><span class="style11">myemail@gmail.com</span>    </tr>
  </table>
  <br />
</form>
   <div align="right">
    
     <strong></strong><br />
     <br />
     <br />
   </div>
   <p>&nbsp;</p>
</body>
</html>
