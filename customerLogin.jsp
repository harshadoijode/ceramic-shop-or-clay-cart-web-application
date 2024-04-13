<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<%@ include file="hometabs.html" %>
<%@ include file="db.jsp" %>
<title>Untitled Document</title>


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
<p>&nbsp;</p>
<p>&nbsp;</p>
<p align="center">&nbsp;</p>
<p align="center" class="style1">Registered Customer Login</p>
<div >
<form action="" method="get" name="form1" id="form1">
<p align="center">&nbsp;</p>
<p align="center">Enter email ID    
  <input type="text" name="username"  pattern=[/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/]{1,} title=" not valid email ID"/> 
 </p>
<p align="center">Enter Password
  <input type="password" name="password" pattern="[A-Za-z0-9]{6,}" title="minimum 6 letters "/>
</p>
<p align="center">
  <input type="submit" name="Submit" value="Login"  onclick="return validateForm()"/>
</p>
<p align="center"><a href="AddCustomer.jsp" >
  <input name="Input" type="button" value="New Customer Registration" />
</a></p>
<p align="center"><a href="fergot.jsp" target="mainFrame">Fergot Password</a></p>
</form>
</div>
</body>



<% 
if(request.getParameter("Submit")!=null){

try
{

String un=request.getParameter("username");
String pw=request.getParameter("password");
rst=stmt.executeQuery("select * from customer where email='"+un+"' and password='"+pw+"'");
						if(rst.next()){
							session.setAttribute("customername",un);
							
							%>
							<script>
							alert("login successssssss...!");
							window.open("showshops.jsp","_self");
							</script>
							<%
						}else{
						%>
							<script>
							alert("login failed...!");
							
							</script>
							<%
							
						}
}catch(Exception e){
out.println(e);
}

}
 %>
</html>
