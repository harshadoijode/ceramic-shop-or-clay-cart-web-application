<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<%@ include file="hometabs.html" %>
<title>Untitled Document</title>
<style type="text/css">
<!--
body {
	background-color: #FFFFFF;
}
.style1 {
	font-size: 24px;
	font-weight: bold;
}
body,td,th {
	color: #000033;
	font-weight: bold;
}
-->
</style>


<script>
function validateCat(){
var x=document.forms["form3"]["category"].value;

if(x==""){
alert("category name  cannot be blank");
return false;
}else{
return true;
}

}


function validateAdd(){
var x=document.forms["form2"]["productname"].value;
var y=document.forms["form2"]["productprice"].value;
var z=document.forms["form2"]["quantity"].value;
var a=document.forms["form2"]["desc"].value;

if(x==""){
alert("product name  cannot be blank");
return false;
}if(y==""){
alert("Product Price  cannot be blank");
return false;
}if(z==""){
alert("Quantity  cannot be blank");
return false;
}if(a==""){
alert("Description  cannot be blank");
return false;
}else{
return true;
}

}

</script>
</head>

<body>
<%@ include file="db.jsp" %>



<% 

try
{

String pname=request.getParameter("p");
String price=request.getParameter("q");
String image=request.getParameter("r");

String cid=(String)session.getAttribute("customername");


int x=stmt.executeUpdate("insert into cart(pname,price,image,customerid) values('"+pname +"','"+price +"','"+image +"','"+cid +"')");

if(x!=0){
%>
<script>
alert("Item added to cart seccuessfully");
window.open("customertabs.html","_self");
</script>
<%
}
			
}catch(Exception e){
out.println(e);
}


 %>
 
 
</body>
</html>
