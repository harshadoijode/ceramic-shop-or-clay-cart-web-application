<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="customerbuyproducttabs.html" %>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="mystyles.css" type="text/css" />
<title>Untitled Document</title>
<style type="text/css">
<!--

.style1 {
	color: #FF0000;
	font-weight: bold;
}
body,td,th {
	color: white;
	
}
-->

<style>
* {
  box-sizing: border-box;
}

/* Create two equal columns that floats next to each other */
.column {
  float: left;
  width: 50%;
  padding: 10px;
  height: 300px; /* Should be removed. Only for demonstration */
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}
</style>
</style></head>

<body>
<%@ include file="db.jsp"  %>

<div align="center">Shoping View </div>

<form action="" method="get">
  <div align="center">
  <input name="pname" type="text" size="50">
  <input name="Search" type="submit" value="Search for product" />
   <input name="showall" type="submit" value="show all Products" />
  </div>
</form>

<% 
if(request.getParameter("Search")!=null && request.getParameter("pname")!=null){
String pname=request.getParameter("pname");
out.print("pname is:"+pname);
if(pname==""){
out.print("no match found");

}else{
rst=stmt.executeQuery("select productname,productprice,image,description,productid from product where   productname like '%"+pname+"%' and storephone='"+session.getAttribute("storeno")+"' ");
while(rst.next()){

 %>
<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="img_5terre.jpg">
      <img src="<%=rst.getString(3) %>" alt="Cinque Terre" width="600" height="400">
    </a>
  
	
	 
	 
	  <div class="desc"> <%=rst.getString(1) %><br />
	  price:<%=rst.getString(2) %><br />
    
	 Descriotion: <%=rst.getString(4) %><br />
	   <a href="cbuy.jsp?p=<%= rst.getString(1) %>" >Buy</a>
	     <p><a href="cart.jsp?p=<%= rst.getString(1)%> & q=<%= rst.getString(2)%> & r=<%= rst.getString(3)%>" >Add to cart</a></p>
    </div>
		  
  </div>
</div>
<%
}
}
}




if(request.getParameter("showall")!=null ){
rst=stmt.executeQuery("select productname,productprice,image,description,productid from product where   storephone='"+session.getAttribute("storeno")+"'   ");
while(rst.next()){

 %>
<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="img_5terre.jpg">
      <img src="<%=rst.getString(3) %>" alt="Cinque Terre" width="600" height="400">
    </a>
  
	
	 
	 
	  <div class="desc"> <%=rst.getString(1) %><br />
	  price:<%=rst.getString(2) %><br />
    
	 Descriotion: <%=rst.getString(4) %><br />
	   <a href="cbuy.jsp?p=<%= rst.getString(1) %>" >Buy</a>
	     <p><a href="cart.jsp?p=<%= rst.getString(1)%>&q=<%= rst.getString(2)%>&r=<%= rst.getString(3)%>" >Add to cart</a></p>
    </div>
		  
  </div>
</div>
<%
}

}

%>

<% 
if(request.getParameter("rating")!=null){

try{
String pname=request.getParameter("pname");
int rate=Integer.parseInt(request.getParameter("rate"));
int x=stmt.executeUpdate("insert into rating values( '"+pname+"',"+rate+" ) ");
if(x!=0){
%>
<script>alert("rating is done successfully");</script>

<%

}
}catch(Exception e){
%>
<script>alert("error is :"+<%= e %>);</script>

<%
}
}

 %>



</body>
</html>
