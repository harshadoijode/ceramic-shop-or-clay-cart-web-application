<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<%@ include file="db.jsp" %>
<% 


try
{

String un=request.getParameter("username");
String pw=request.getParameter("password");
rst=stmt.executeQuery("select * from adminuser where username='"+un+"' and password='"+pw+"'");
						if(rst.next()){
							//out.println("login successssssss...!");
							response.sendRedirect("mainadmin.html");
						}else{
						rst=stmt.executeQuery("select * from stores where storemobileno='"+un+"' and password='"+pw+"'");
						if(rst.next()){
							//out.println("login successssssss...!");
							session.setAttribute("user",un);
							response.sendRedirect("adminpage.html");
							
						}else{
						out.println("login failure...!");
						}
						}
}catch(Exception e){
out.println(e);
}

 %>
</body>
</html>
