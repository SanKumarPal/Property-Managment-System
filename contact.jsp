<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<%
	
    //String id=request.getParameter("id");
     String name =request.getParameter("name");
     String mail=request.getParameter("mail");
     String tel=request.getParameter("tel");
     String mess=request.getParameter("mess");


     //out.println("insert into register(email,pass) values('"+email+"','"+pass+"');");
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/records","root","mom#143");
	Statement st = conn.createStatement();
    int s=st.executeUpdate("insert into contact (name,mail,tel,mess) values('"+name+"','"+mail+"','"+tel+"','"+mess+"');");
     out.println(s);
     if ( s > 0) 
     {

    	 response.sendRedirect("datarecord.html");
     } else

     {
	  response.sendRedirect("Already.html");
       //response.sendRedirect("index.jsp");
      }
     }

catch(Exception e)
{
	 response.sendRedirect("Already.html");
	//out.println("Some errors  !! Please try again");
	//response.sendRedirect("index.html");
}

%>
	
</body>
</html>