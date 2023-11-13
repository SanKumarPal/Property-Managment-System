<%@ page language="java"  import="java.sql.*"  contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Form</title>
</head>
<body>


<%
    //String id=request.getParameter("id");
     String user =request.getParameter("user");
     String mail=request.getParameter("mail");
     String pass=request.getParameter("pass");
     String cfpass=request.getParameter("cfpass");
     String chk1=request.getParameter("chk1");

     //out.println("insert into register(email,pass) values('"+email+"','"+pass+"');");
try
{
Class.forName("com.mysql.jdbc.Driver");
     Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/records","root","mom#143");
     Statement st = conn.createStatement();
int s=st.executeUpdate("insert into rg (user,mail,pass,cfpass,chk1) values('"+user+"','"+mail+"','"+pass+"','"+cfpass+"','"+chk1+"');");
out.println(s);
   //out.println("insert into register(email,pass) values('"+email+"','"+pass+"');");

if ( s > 0) 
      {

	response.sendRedirect("popup.html");
      }// else

     // {
	//response.sendRedirect("emailalready.html");
        //response.sendRedirect("index.jsp");
      //}
}
 catch(Exception e)
{
	 response.sendRedirect("emailalready.html");
	//response.sendRedirect("index.html");
}

     %>


</body>
</html>