<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>

<%@ page import="com.oreilly.servlet.MultipartRequest" %>

<%@ include file="db.jsp" %>

<% 

try{
MultipartRequest m = new MultipartRequest(request, "C:/Program Files (x86)/Apache Software Foundation/Tomcat 5.5/webapps/GFGC_Claycat/images");

String path="images/";
String category=m.getParameter("category");
String productname=m.getParameter("productname");
String productprice=m.getParameter("productprice");
String quantity=m.getParameter("quantity");
String image=path+m.getOriginalFileName("image");
String desc=m.getParameter("desc");
String charity="0";
String storephone=m.getParameter("storephone");
String gst="0";
String ptype=m.getParameter("ptype");
int x=stmt.executeUpdate("insert into product(category,productname,productprice,quantity,image,description,discount,storephone,gst,ptype,storename) values('"+category +"','"+productname +"','"+productprice +"','"+quantity +"','"+image+"','"+desc+"','"+charity+"','"+storephone+"','"+gst+"','"+ptype+"','"+session.getAttribute("storename")+"')");
if(x!=0){

%>
<script>

alert("successfully uploaded");

window.open("addProduct.jsp","_self");
</script>
<%
}
}catch(Exception e){
out.print("this location already exist"+e);

}
 %>




 
 
 
</body>
</html>
