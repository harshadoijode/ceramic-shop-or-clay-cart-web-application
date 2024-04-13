<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
 body {
	background-image: url(images/t1.jpg);
}
.style1 {color: #FFFF00}
.style2 {
	color: #FFFFFF;
	font-weight: bold;
}
.style3 {color: #FFFFFF}

-->
</style>
</head>

<body>
<%@ include file="admintabs.html" %>
<p align="center">
  <%@ include file="db.jsp" %> 
 Customer Feedback</p>
<table  border="1" align="center">
  <tr bgcolor="#999999">
    <td width="216" height="23" bgcolor="#330000" align="center"><span class="style2">Name</span></td>
    <td width="162" bgcolor="#330000"align="center"><span class="style3"><strong>Place </strong></span></td>
    <td width="157" bgcolor="#330000" align="center"><span class="style3"><strong >Feedback</strong></span></td>
  </tr>
  
  <% 
  
  rst=stmt.executeQuery("select * from Feedback ");
  while(rst.next()){
  
   %>
  
  <form action="" method="get">
  <tr bgcolor="#003399">
    <td height="36" bgcolor="#CCCC33"><span class="style3 style1">
      <input name="e1" type="text"  value="<%= rst.getString(1) %>"/>
    </span></td>
    <td bgcolor="#CCCC00"><span class="style3 style1">
      <input name="e2" type="text" value="<%= rst.getString(2) %>"/></span></td>
    <td bgcolor="#CCCC00"><span class="style3 style1">
      <input name="e3" type="text" value="<%= rst.getString(3) %>"/></span></td>
  </tr>
  </form>
  <% } %>
</table>


<% 
if(request.getParameter("update")!=null){
try{
int x=stmt.executeUpdate("update stores set storename='"+request.getParameter("e2")+"',address='"+request.getParameter("e3")+"',storemobileno='"+request.getParameter("e4")+"',password='"+request.getParameter("e5")+"' where storeid='"+request.getParameter("e1")+"' ");
if(x!=0)
{
%>
<script>
alert("Date Updated");
window.open("viewstores.jsp","_self");

</script>
<%
//response.sendRedirect("viewstores.jsp");


}

}catch(Exception e){
out.print("error"+e);
}
}




if(request.getParameter("delete")!=null){
try{
int x=stmt.executeUpdate("delete from stores where storeid='"+request.getParameter("e1")+"'");
if(x!=0){

%>
<script>
alert("Date Deleted successfully");
window.open("viewstores.jsp","_self");

</script>
<%

}

}catch(Exception e){
out.print("error"+e);
}
}
 %>
 
 
 <% 
if(request.getParameter("Accept")!=null){
try{
int x=stmt.executeUpdate("update stores set status='Accepted' where storeid='"+request.getParameter("e1")+"' ");
if(x!=0)
{
%>
<script>
alert("Date Updated");
window.open("viewstores.jsp","_self");

</script>
<%
//response.sendRedirect("viewstores.jsp");


}

}catch(Exception e){
out.print("error"+e);
}
}
%>


<% 
if(request.getParameter("Reject")!=null){
try{
int x=stmt.executeUpdate("update stores set status='Rejected' where storeid='"+request.getParameter("e1")+"' ");
if(x!=0)
{
%>
<script>
alert("Date Updated");
window.open("viewstores.jsp","_self");

</script>
<%
//response.sendRedirect("viewstores.jsp");


}

}catch(Exception e){
out.print("error"+e);
}
}
%>


</body>
</html>
