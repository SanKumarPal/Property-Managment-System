<%@ page language="java"  import="java.sql.*"  contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sell Form</title>
</head>
<body>


<%
    //String id=request.getParameter("id");
     String ID_Type =request.getParameter("ID_Type");
     String ID_Number =request.getParameter("ID_Number");
     String Land =request.getParameter("Land");
     String Building =request.getParameter("Building");
     String BHK =request.getParameter("BHK");
     String Aminities=request.getParameter("Aminities");
     String Bedrooms=request.getParameter("Bedrooms");
     String Bathrooms=request.getParameter("Bathrooms");
     String Area_Type=request.getParameter("Area_Type");
     String Area=request.getParameter("Area");
     String Location=request.getParameter("Location");
     String Land_Mark=request.getParameter("Land_Mark");
     String Upper_Price=request.getParameter("Upper_Price");
     String Lower_Price=request.getParameter("Lower_Price");
     String Name=request.getParameter("Name");
     String Address=request.getParameter("Address");
     String Contact_No=request.getParameter("Contact_No");
     String choose_Photo=request.getParameter("choose_Photo");

     //out.println("insert into register(email,pass) values('"+email+"','"+pass+"');");
try
{
Class.forName("com.mysql.jdbc.Driver");
     Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/records","root","mom#143");
     Statement st = conn.createStatement();
int s=st.executeUpdate("insert into sell (ID_Type,ID_Number,Land,Building,BHK,Aminities,Bedrooms,Bathrooms,Area_Type,Area,Location,Land_Mark,Upper_Price,Lower_Price,Name,Address,Contact_No,choose_Photo) values('"+ID_Type+"','"+ID_Number+"','"+Land+"','"+Building+"','"+BHK+"','"+Aminities+"','"+Bedrooms+"','"+Bathrooms+"','"+Area_Type+"','"+Area+"','"+Location+"','"+Land_Mark+"','"+Upper_Price+"','"+Lower_Price+"','"+Name+"','"+Address+"','"+Contact_No+"','"+choose_Photo+"');");
out.println(s);
   //out.println("insert into register(email,pass) values('"+email+"','"+pass+"');");

if ( s > 0) 
      {

	response.sendRedirect("Submitted.html");
      }// else

     // {
	//response.sendRedirect("emailalready.html");
        //response.sendRedirect("index.jsp");
      //}
}
 catch(Exception e)
{
	 response.sendRedirect("something.html");
	//response.sendRedirect("index.html");
}

     %>


</body>
</html>