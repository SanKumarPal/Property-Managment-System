<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Form</title>
</head> 
<body>


<%@page import="java.sql.*" %>
<%
String mail=request.getParameter("mail");
String pass =request.getParameter("pass");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/records","root","mom#143");
Statement st = conn.createStatement();
ResultSet rs=st.executeQuery("select * from rg where mail = '"+mail+"' and pass='"+pass+"';");

if(rs.next()){

response.sendRedirect("index5.jsp");
}

else{

		 //out.println("Invalid login credential ");
	response.sendRedirect("index4.jsp");
		
}
}
catch(Exception e)
	{
		out.println("Something went wrong !! Please try again");
		//response.sendRedirect("index.html");
	}
	
%>



</body>
</html>