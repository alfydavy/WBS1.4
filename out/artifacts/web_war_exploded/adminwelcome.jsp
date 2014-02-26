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
<title>Admin Welcome</title>
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
            <li><a href="reports.jsp">reports</a></li>
            <li><a> </a></li>
            <li><a> </a></li>
            
            
            <li><a href="adminwelcome.jsp"><%
String user=session.getValue("adminid").toString();
%>welcome <%=user.toUpperCase()%></a></li>
            <li><a href="index.jsp">logout</a></li>
            
            </ul>
        </div>     
            
            
       </div> 
       
       
       <div class="center_content">
       	<div class="left_content">
        	
            <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>Manage Accounts</div>
            <div class="feat_prod_box">
        	  <div class="clear">
        	    <ul class="list">
        	      <li><a href="manageusers.jsp">Add User</a></li>
        	      <li><a href="#"> Update User details</a></li>
        	      <li><a href="#">Delete user</a></li>
      	      </ul>
        	    <p>&nbsp;</p>
        	  </div>
            </div>
            
            <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>Manage Books</div>
            
          <div class="feat_prod_box">
        	  <div class="clear">
        	    <ul class="list">
        	      <li><a href="managebooks.jsp">Add Book</a></li>
        	      <li><a href="#"> Update Book Details</a></li>
        	      <li><a href="#">Delete Book</a></li>
                  <li><a href="managecategory.jsp">Add Category</a></li>
                  <li><a href="#">Update Category</a></li>
                  <li><a href="#">Delete Category</a></li>
                  <li><a href="managefeaturebook.jsp">Add Featured Books</a></li>
                  <li><a href="#">Update Featured Books</a></li>
                  <li><a href="#">Delete Featured Books</a></li>
                  <li><a href="managelanguage.jsp">Add Language</a></li>
                  <li><a href="#">Update Language</a></li>
                  <li><a href="#">Delete Language</a></li>
      	      </ul>
        	    <p>&nbsp;</p>
       	    </div>
            </div>
          <div class="clear"></div>
        </div><!--end of left content-->
        
        <div class="right_content">
          <div class="cart"></div>
                       
            	
        
        
             <div class="title"><span class="title_icon"><img src="images/bullet3.gif" alt="" title="" /></span>About Our Store</div> 
             <div class="about">
             <p>
             <img src="images/about.gif" alt="" title="" class="right" />WBS  is an online web application where the customer can purchase books online.  Through a web browser the you can search for a book by its title or  author, later can add to the shopping cart and finally purchase through  different modes of payment. You can login using your credentials  or sign up...</p>
             
          </div>
             <div class="right_box">
             
           	   <div class="title"><span class="title_icon"><img src="images/bullet5.gif" alt="" title="" /></span>Quick Link</div> 
                
                <ul class="list">
                  <li><a href="manageusers.jsp">Manage Users</a></li>
                  <li><a href="managebooks.jsp">Manage Books</a></li>
                  <li><a href="manageauthors.jsp">Add Authors</a></li>
                  <li><a href="managecategory.jsp">Add Category</a></li>
                  <li><a href="managefeaturebook.jsp">Featured Books</a></li>
                  <li><a href="managelanguage.jsp">Add Language</a></li>
                  <li></li>
                  <li></li>                                              
                </ul>
                
           	   <div class="title"><span class="title_icon"><img src="images/bullet6.gif" alt="" title="" /></span>Partners</div> 
                
                <ul class="list">
                <li><a href="#">accesories</a></li>
                <li><a href="#">books gifts</a></li>
                <li><a href="#">specials</a></li>
                <li><a href="#">hollidays gifts</a></li>
                <li><a href="#">accesories</a></li>
                <li><a href="#">books gifts</a></li>
                <li><a href="#">specials</a></li>
                <li><a href="#">hollidays gifts</a></li>
                <li><a href="#">accesories</a></li>                              
                </ul>      
             
             </div>         
             
        
        </div><!--end of right content-->
        
        
       
       
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