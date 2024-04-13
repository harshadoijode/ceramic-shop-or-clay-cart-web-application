
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<%@ include file="hometabs.html" %>
<title>Untitled Document</title>
<style type="text/css">
<!--

.style1 {
	font-size: 40px;
	font-weight: bold;
	color: #003366;
}
.style6 {
	font-size: 16px;
	font-weight: bold;
}
.style8 {color: #000000}
.style9 {font-size: 16px; font-weight: bold; color: #CCCCCC; }
.style10 {color: #CCCCCC; }
-->
</style>

<script>
function validateForm(){
var x=document.forms["form1"]["t2"].value;
var y=document.forms["form1"]["t3"].value;

var a=document.forms["form1"]["t4"].value;
var b=document.forms["form1"]["t5"].value;
var c=document.forms["form1"]["t6"].value;
var d=document.forms["form1"]["t7"].value;
var e=document.forms["form1"]["t8"].value;
var f=document.forms["form1"]["t9"].value;
var g=document.forms["form1"]["question"].value;
var h=document.forms["form1"]["answer"].value;
if(x==""){
alert("email ID  cannot be blank");
return false;
}else if(y==""){
alert(" password cannot be blank");
return false;
}else if(a==""){
alert(" firstName cannot be blank");
return false;
}else if(b==""){
alert(" Last name cannot be blank");
return false;
}else if(c==""){
alert(" country cannot be blank");
return false;
}
else if(d==""){
alert(" ZIP cannot be blank");
return false;
}else if(e==""){
alert(" State cannot be blank");
return false;
}else if(f==""){
alert(" Address cannot be blank");
return false;
}else if(g==""){
alert(" Question cannot be blank");
return false;
}else if(h==""){
alert(" Answer cannot be blank");
return false;
}else{
return true;
}

}

</script>
</head>

<body>
<div align="center" class="style1">Add Customer </div>
<form id="form1" name="form1" method="get" action="AddCustomer.jsp">
  <table width="374" height="10" border="1" align="center">
    <tr>
      <td width="163"><p align="right" class="style9">email ID </p></td>
      <td width="195"><input type="text" name="t2" pattern=[/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/]{1,} title=" not valid email ID" /></td>
    </tr>
    <tr>
      <td><p align="right" class="style9">Password</p></td>
      <td><input type="text" name="t3" pattern=[A-Za-z0-9]{8,} title="password must be 8 charecter or more symnols are not valid"/></td>
    </tr>
    <tr>
      <td><div align="right" class="style10"><span class="style6">Firstname</span></div></td>
      <td><input type="text" name="t4" pattern="[A-Za-z]{1,}" title="numbers and symbols are not valid charecters"/></td>
    </tr>
    <tr>
      <td><div align="right" class="style10"><span class="style6">LastName</span></div></td>
      <td><input type="text" name="t5" pattern="[A-Za-z]{1,}" title="numbers and symbols are not valid charecters"/></td>
    </tr>
    <tr>
      <td><div align="right" class="style10"><span class="style6">country</span></div></td>
      <td><input type="text" name="t6" pattern="[A-Za-z]{1,}" title="numbers and symbols are not valid charecters"/></td>
    </tr>
    <tr>
      <td><div align="right" class="style10"><span class="style6">Zip</span></div></td>
      <td><input type="text" name="t7" pattern="[0-9]{6,6}" title="numbers and symbols are not valid charecters"/></td>
    </tr>
    <tr>
      <td><div align="right" class="style10"><span class="style6">State</span></div></td>
      <td><input type="text" name="t8" pattern="[A-Za-z]{1,}" title="numbers and symbols are not valid charecters"/></td>
    </tr>
    <tr>
      <td><div align="right" class="style10"><span class="style6">Address</span></div></td>
      <td><textarea name="t9" title="numbers and symbols are not valid charecters" pattern="[A-Za-z]{1,}"></textarea></td>
    </tr>
    <tr>
      <td><div align="right" class="style10"><strong>Enter a Question </strong></div></td>
      <td><textarea name="question" id="question"></textarea></td>
    </tr>
    <tr>
      <td><div align="right" class="style10"><strong>Answer the Question </strong></div></td>
      <td><input name="answer" type="text" id="answer" /></td>
    </tr>
    <tr>
      <td><div align="right"><span class="style8"><span class="style10"></span></span></div></td>
      <td><input type="submit" name="Submit" value="Register" onclick="return validateForm()" />
        <input type="reset" name="Submit2" value="Reset" /></td>
    </tr>
  </table>
</form>




<%@ include file="db.jsp" %>
<% 

if(request.getParameter("Submit")!=null){
try
{


String email=request.getParameter("t2");
String password=request.getParameter("t3");
String first=request.getParameter("t4");
String last=request.getParameter("t5");
String country=request.getParameter("t6");
String zip=request.getParameter("t7");
String state=request.getParameter("t8");
String address=request.getParameter("t9");
String question=request.getParameter("question");
String answer=request.getParameter("answer");
int x=stmt.executeUpdate("insert into customer(email,password,firstname,lastname,country,zip,state,address,question,answer) values('"+email+"','"+password+"','"+first+"','"+last+"','"+country+"','"+zip+"','"+state+"','"+address+"','"+question+"','"+answer+"')");


						if(x!=0){
						%>
						<script>
							alert("insertion successssssss...!");
							window.open("customerLogin.jsp","_self");
							
					</script>		
							<%
							
						}else{
						out.println("insertion failure...!");
						}
}catch(Exception e){
out.println(" this username alrready exist so please try some other email ID"+e);
}
}
 %>
</body>
</html>
