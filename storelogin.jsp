<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="style.css">
  <link rel="stylesheet" href="buttonstyles.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
<style type="text/css">
<!--
body {
	background-color: #6699FF;
}
.style4 {
	color: #000033;
	font-weight: bold;
}
.style5 {color: #000033}
-->
</style>
  
</head>
<body>
<%@ include file="hometabs.html" %>
   
<%@ include file="db.jsp" %>
     
<%
if(request.getParameter("Submit")!=null){
try
{

String un=request.getParameter("username");
String pw=request.getParameter("password");


rst=stmt.executeQuery("select * from stores where storemobileno='"+un+"' and password='"+pw+"'");
if(rst.next()){
session.setAttribute("user",un);
session.setAttribute("storename",rst.getString(2));
response.sendRedirect("storetabs.html");

	}else{
				
				%>	
					<script>
					
						alert("login failured");
					</script>	
						
	<%
	
	}	

}catch(Exception e){
out.println(e);
}
}
%>
<table   width="1185" height="426" border="0" align="center">
  <tr>
   <td width="719" height="416"> <center><div  class="w3-content w3-section" style="max-width:500px"  > <img class="mySlides w3-animate-top" src="images/1.jpg" style="width:100%" /> <img class="mySlides w3-animate-bottom" src="images/2.jpg" style="width:100%" /> <img class="mySlides w3-animate-top" src="images/3.jpg" style="width:100%" /> </div> </center></td>
    <td width="456"><center><br>
<br>
<br>
<h2 style="color:#FF0000;">Seller Login </h2>
 <form id="form1" name="form1" method="post" action="">
  <table width="425" height="242" border="0" align="center" bgcolor="#CCCCCC"  style="border-radius:20px; " >
    <tr>
      <td width="203" height="86"><div align="right" class="style4">Enter Seller Phone </div></td>
      <td width="203"><input type="text" name="username" /></td>
    </tr>
    <tr>
      <td height="59"><div align="right" class="style4">Enter Password </div></td>
      <td><input type="password" name="password" /></td>
    </tr>
  
    <tr>
      <td><span class="style5"></span></td>
      <td><input type="submit" name="Submit" value="Submit" /><br>

	<a href="addstore.jsp">Click here for new Regigistration</a>      </td>
    </tr>
  </table>
</form>
</center></td>
   
  </tr>
</table>

<script>
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 2500);    
}
</script>

 
 
 
 
 
 <script src="js/jquery-latest.min.js"></script>
<script>
	$(function(){
		$(".password-show").click(function(event) {
			$(this).toggleClass('fa-eye-slash');
			var x = $(".input-control").attr("type"); //getting attribute in variable
			if (x == "password") 
			{
				$(".input-control").attr("type","text"); //setting attribute on condition
			}
			else
			{
				$(".input-control").attr("type","password");
			}
		});
	})
</script>
</body>
</html>
