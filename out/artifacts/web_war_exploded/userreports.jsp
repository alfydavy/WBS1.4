<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>

<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="beans.cart.ShoppingCart" %>
<%@ page errorPage="errorpage.jsp" %>
<%@ page import="java.util.Enumeration"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>Book Reports</title>
<link rel="stylesheet" type="text/css" href="adminstyle.css" />

</head>
<body>
<div id="wrap">

       <div class="header">
       		<div class="logo"><a href="index.jsp"><a href="index.jsp"><img src="images/WBS Logo.gif" width="128" height="40" alt="" title="" border="0"/></a></div> 
            
            <div class="search">
              <form id="form1" name="form1" method="post" action="Trial.jsp">
                <table width="250" height="25" border="0">
                  <tr>
                    <td>search</td>
                    <td><label for="searchtextbox"></label>
                    <input name="searchtextbox" type="text" id="searchtextbox" maxlength="50" bgcolor/></td>
                    <td><img name="" src="" width="23" height="23" alt="" /></td>
                  </tr>
                </table>
              </form>
            </div>
            
                       
        <div id="menu">
            <ul>                                                                       
            <li class="selected"><a href="adminwelcome.jsp">home</a></li>
            <li><a href="managebooks.jsp">books</a></li>
            <li><a href="manageusers.jsp">users</a></li>
            <li><a href="managecategory.jsp">categories</a></li>
            <li><a href="managefeaturebook.jsp">featured books</a></li>
            <li><a href="managelanguage.jsp">language</a></li>
            <li><a href="contact.jsp">contact</a></li>
            <li class="selected"><a href="reports.jsp">reports</a></li>
            <li><a> </a></li>
            
            
            
            <li><a href="adminwelcome.jsp"><%
String user=session.getValue("adminid").toString();
%>welcome <%=user.toUpperCase()%></a></li>
            <li><a href="index.jsp">logout</a></li>
            
            </ul>
        </div>     
            
            
       </div> 
       
       
       <div class="center_content">
       	<div class="report_content">
       	  <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>Book Reports</div>
            
          <div class="feat_prod_box">
        	  <div class="clear">
<table width="829" border="0" id="5.1" bgcolor="#33CCCC">
  <tr>
    <td width="87">First name</td>
    <td width="108">Last name</td>
    <td width="130">Email Id</td>
    <td width="91">Address</td>
    <td width="70">Phone</td>
    <td width="75">City</td>
    <td width="81">State</td>
    <td width="64">Country</td>
    <td width="85">Pin</td>
  </tr>
</table>

<%  	
  try{
	
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/WBS",
"test1","test1");
Statement st= con.createStatement();
ResultSet rs=null;

	// RETREIEVING BOOKS FOR DISPLAY
 rs=st.executeQuery("SELECT * FROM user");
 while(rs.next()){
  %>


<table width="829" height="56" border="0" class="cart_table2" id="5.2">
  <tr>
    <td width="89"><%= rs.getString("firstname")%></td>
    <td width="107"><%= rs.getString("lastname")%></td>
    <td width="130"><%= rs.getString("email")%></td>
    <td width="90"><%= rs.getString("address")%></td>
    <td width="71"><%= rs.getString("phone")%></td>
    <td width="73"><%= rs.getString("city")%></td>
    <td width="82"><%= rs.getString("state")%></td>
    <td width="64"><%= rs.getString("country")%></td>
    <td width="85"><%= rs.getString("zip")%></td>
  </tr>
  <tr></tr>
</table>
<%
 }		    
 st.close();
 con.close();
			}
			catch(Exception e)
			      {
			  }
			%>
<p>&nbsp;</p>
       	    </div>
            </div>
          <div class="clear"></div>
        </div><!--end of left content--><!--end of right content-->
        
        
       
       
       <div class="clear"></div>
       </div><!--end of center content-->
       
              
       <div class="footer">
       	<div class="left_footer"><img src="images/WBS Logo bottom.gif" width="143" height="34" /><br />
       	</div>
        <div class="right_footer">
        <a href="#">home</a>
        <a href="#">about us</a>
        <a href="#">services</a>
        <a href="#">privacy policy</a>
        <a href="#">contact us</a>
       
        </div>
        
       
       </div>
    

</div>
</body>
</html>