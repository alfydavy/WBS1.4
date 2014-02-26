

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
String bookid=request.getParameter("bookid");
//session.putValue("userid",userid);
String bookname=request.getParameter("bookname");
String categoryid=request.getParameter("categoryid");
String authorid=request.getParameter("authorid");
String languageid=request.getParameter("languageid");
String description=request.getParameter("description");
String price=request.getParameter("price");
String quantity=request.getParameter("quantity");
String image=request.getParameter("image");


//out.println("userid");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wbs",
"root","");
Statement st= con.createStatement();
ResultSet rs;


int i=st.executeUpdate("insert into books values ('"+bookid+"','"+bookname+"','"+categoryid+"','"+authorid+"','"+languageid+"','"+description+"','"+price+"','"+quantity+"','"+image+"')");
st.close();
con.close();
%>
<jsp:forward page="managebooks.jsp"></jsp:forward>

</body>
</html>