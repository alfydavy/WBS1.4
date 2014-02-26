

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book Store</title>
</head>
<body>


<%
String featuredid=request.getParameter("featuredid");
//session.putValue("userid",userid);
String bookid=request.getParameter("bookid");
String quantity=request.getParameter("quantity");

//out.println("userid");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/WBS",
"test1","test1");
Statement st= con.createStatement();
ResultSet rs;


int i=st.executeUpdate("insert into featured_books values ('"+featuredid+"','"+bookid+"','"+quantity+"')");
st.close();
con.close();
%>
<jsp:forward page="managefeaturebook.jsp"></jsp:forward>

</body>
</html>