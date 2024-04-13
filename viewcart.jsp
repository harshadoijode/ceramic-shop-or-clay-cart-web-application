<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<%@ include file="customerbuyproducttabs.html" %>
<link rel="stylesheet" href="mystyles.css" type="text/css" />
<title>Untitled Document</title>
<style type="text/css">
<!--
body {
	background-color: #DADADA;
}
.style1 {
	color: #FF0000;
	font-weight: bold;
}
body,td,th {
	color: #000033;
	font-weight: bold;
}

-->
</style></head>

<body>
<%@ include file="db.jsp"  %>

<div align="center">
  <p>My Cart</p>
  <p>&nbsp;</p>
</div>


<% 

String cid=(String)session.getAttribute("customername");
//out.print("pname is:"+pname);

rst=stmt.executeQuery("select * from cart where customerid='"+cid+"'  ");
while(rst.next()){

 %>
 
<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="img_5terre.jpg">
      <img src="<%=rst.getString(3) %>" alt="Cinque Terre" width="600" height="400">
    </a>
  
	
	 
	 
	  <div class="desc"> 
	    <p style="color:white;"><%=rst.getString(1) %><br />
	  price:<%=rst.getString(2) %><br />
    
	
	   <a href="buy.jsp?p=<%= rst.getString(1) %>" >Buy</a>    </p>
	    <a href="viewcart.jsp?p=<%= rst.getString(1) %>" >Remove From cart</a>    </p>
    </div>
		  
  </div>
</div>

<%

}


%>

<% 
if(request.getParameter("p")!=null){

String p=request.getParameter("p");
String s2=request.getParameter("pw");



int x=stmt.executeUpdate("delete from cart where pname='"+p+"' and customerid='"+cid+"'");
if(x!=0){

%>
<script>

alert("removed from cart Successfull");
window.open("viewcart.jsp","_self");
</script>
<%
}




}
 %>
</body>
</html>
