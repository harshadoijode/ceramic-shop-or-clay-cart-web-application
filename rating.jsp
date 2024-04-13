<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
    
	<%@ include file="db.jsp"  %>
	 <%

rst=stmt.executeQuery("select productID, avg(rating) from rating where rating > 0 group by productID");
%>
	 <style type="text/css">
<!--
body {
	background-color: #AEAEAE;
	background-image: url(images/t3.jpg);
}
.style7 {color: #FF0000; font-size: 18px; font-weight: bold; }
.style8 {
	font-size: 24px;
	font-weight: bold;
}
-->
     </style>
	 
<p align="center" class="style8">Product Rating </p>
<table width="348" border="1" align="center">
  <tr>
    <td><strong>Book Name </strong></td>
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
<div align="center"></div>
	 