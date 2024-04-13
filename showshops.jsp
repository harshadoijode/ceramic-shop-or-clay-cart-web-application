<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style>


.topnav {
  overflow: hidden;
  background-image: linear-gradient(grey,black,grey);
}

.topnav a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #04AA6D;
  color: white;
}

.topnav .icon {
  display: none;
}

@media screen and (max-width: 600px) {
  .topnav a:not(:first-child) {display: none;}
  .topnav a.icon {
    float: right;
    display: block;
  }
}

@media screen and (max-width: 600px) {
  .topnav.responsive {position: relative;}
  .topnav.responsive .icon {
    position: absolute;
    right: 0;
    top: 0;
  }
  .topnav.responsive a {
    float: none;
    display: block;
    text-align: left;
  }
}
body,td,th {
	color: #FFFFFF;
}
.style5 {font-size: 36px}
</style>
<style>
* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
</style>
<style>
body, html {
  height: 100%;
}
body {
	margin: 0;
	font-family: Arial, Helvetica, sans-serif;
	background-color: #330000;
}
body  {
  background-image: url("images/bg.jpg");
  background-repeat: no-repeat;
  background-attachment: fixed;
    background-size: cover;
}
a:link {
  text-decoration: none;
  color:white;
}
a:hover {
  color: grey;
 
  
}

.topnav {
  overflow: hidden;
  background-image: linear-gradient(grey,black,grey);
}

.topnav a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #04AA6D;
  color: white;
}

.topnav .icon {
  display: none;
}

input[type=button] {
  width: auto;
  background-image: linear-gradient(red, black);
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: 1;
  border-color:white;
  border-radius: 20px;
  cursor: pointer;
}
input[type=button]:hover {
  background-image: linear-gradient(black, blue);
}

input[type=submit] {
  width: auto;
  background-image: linear-gradient(red, black);
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: 1;
  border-color:white;
  border-radius: 20px;
  cursor: pointer;
}
input[type=submit]:hover {
  background-image: linear-gradient(black, blue);
}


input[type=reset] {
  width: auto;
  background-image: linear-gradient(red, black);
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: 1;
  border-color:white;
  border-radius: 20px;
  cursor: pointer;
}
input[type=reset]:hover {
  background-image: linear-gradient(black, blue);
}


@media screen and (max-width: 600px) {
  .topnav a:not(:first-child) {display: none;}
  .topnav a.icon {
    float: right;
    display: block;
  }
}

@media screen and (max-width: 600px) {
  .topnav.responsive {position: relative;}
  .topnav.responsive .icon {
    position: absolute;
    right: 0;
    top: 0;
  }
  .topnav.responsive a {
    float: none;
    display: block;
    text-align: left;
  }
}
body,td,th {
	color: #FFFFFF;
}
.style5 {font-size: 36px}
</style>
<style>
* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
</style>
</head>

<body>
<p align="center">
  <%@ include file="db.jsp" %> 
  <span class="style2">Choose your shop for shopping </span></p>
<table width="683" border="1" align="center">
  <tr bgcolor="#999999">
    <td width="162"><strong>Store name </strong></td>
    <td width="157"><strong>Address</strong></td>
    
    <td width="167"><strong>phone number </strong></td>
   
    <td width="169">&nbsp;</td>
    
  </tr>
  
  <% 
  
  rst=stmt.executeQuery("select * from stores");
  while(rst.next()){
  
   %>
  
  <form action="" method="get">
  <tr bgcolor="#003399">
    <td><span class="style3 style1"><%= rst.getString(2) %></span></td>
    <td><span class="style3 style1"><%= rst.getString(3) %></span></td>
    <td><span class="style3 style1"><input name="e4" type="text" value="<%= rst.getString(4) %>"/></span></td>
    <td><input type="submit" name="Submit" value="Go for shopping" /></td>
    
  </tr>
  </form>
  <% } %>
</table>


<p>&nbsp;</p>
<form action="" method="get">
<table width="348" border="1" align="center">
  <tr>
    <td><strong>Shop Name </strong></td>
    <td><strong>Rating</strong></td>
  </tr>
  <%
   rst=stmt.executeQuery("select storename from stores"); 

%>
  <tr>
    <td><span class="style7">
      <select name="s1">
	  <% while(rst.next()){ %>
	  <option><%= rst.getString(1) %></option>
	   <%  
}
	
	%>
      </select>
    </span></td>
   
    <td><select name="s2">
      <option>1</option>
      <option>2</option>
      <option>3</option>
      <option>4</option>
      <option>5</option>
    </select>    </td>
  </tr>
  <tr>
    <td colspan="2"><div align="center">
      <input type="submit" name="rating" value="Submit" />
    </div></td>
    </tr>
</table>
</form>
<p>
  <% 
if(request.getParameter("Submit")!=null){
session.setAttribute("storeno",request.getParameter("e4"));

response.sendRedirect("Customer_GO_Shopping.jsp");
}
%>
</p>

<% 
if(request.getParameter("rating")!=null){
try{
int x=stmt.executeUpdate("insert into shoprating values('"+request.getParameter("s1")+"',"+request.getParameter("s2")+")");
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





   <%

rst=stmt.executeQuery("select shopname, avg(rate) from shoprating where rate > 0 group by shopname");
%>
	 
	 
<p align="center" class="style8">Product Rating </p>
<table width="348" border="1" align="center">
  <tr>
    <td><strong>Shop Name </strong></td>
    <td><strong>Rating</strong></td>
  </tr>
 



<%
while(rst.next()){
%>
 <tr>
    <td><span class="style7"><%= rst.getString(1) %></span></td>
	<%  
	float m=Float.parseFloat(rst.getString(2));
	
	%>
	
    <td><span class="style7">
      <% for(int i=1; i<=m; i++){
	%>
	  <img src="images/star.PNG" width="24" height="22" />
	  <% } %>    
    </span></td>
  </tr>
  
  <%



}

   %>
</table>

</body>
</html>
