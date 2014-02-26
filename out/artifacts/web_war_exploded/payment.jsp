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
String user=session.getValue("userid").toString();
%>welcome <%=user.toUpperCase()%></a></li>
            <li><a href="index.jsp">logout</a></li>
            
            </ul>
        </div>     
            
            
       </div> 
       
       
       <div class="center_content">
       	<div class="report_content">
       	  <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>Payment</div>
       	  <div class="feat_prod_box">
       	    <table width="614" height="201">
       	      <tr>
       	        <td width="82" height="40">&nbsp;</td>
       	        <td width="384"><div class="title"> Customer Information</div></td>
       	        <td width="126">&nbsp;</td>
   	          </tr>
       	      <tr>
       	        <td><label class="contact"><strong> Name:</strong></label></td>
       	        <td><label for="name"></label>
   	            <input name="name" type="text" class="textfield" id="name" /></td>
       	        <td>&nbsp;</td>
   	          </tr>
       	      <tr>
       	        <td><label class="contact"><strong> Address:</strong></label></td>
       	        <td><input name="name2" type="text" class="textfield" id="name2" /></td>
       	        <td>&nbsp;</td>
   	          </tr>
       	      <tr>
       	        <td><label class="contact"><strong> Phone:</strong></label></td>
       	        <td><input name="name3" type="text" class="textfield" id="name3" /></td>
       	        <td>&nbsp;</td>
   	          </tr>
       	      <tr>
       	        <td><label class="contact"><strong> Email:</strong></label></td>
       	        <td><input name="name4" type="text" class="textfield" id="name4" /></td>
       	        <td>&nbsp;</td>
   	          </tr>
   	        </table>
       	    <p>&nbsp;</p>
       	    <table width="613" height="317">
       	      <tr>
       	        <td width="83" height="40">&nbsp;</td>
       	        <td width="383"><div class="title">Card Details</div></td>
       	        <td width="125">&nbsp;</td>
   	          </tr>
       	      <tr>
       	        <td><label class="contact"><strong> Bank Name:</strong></label></td>
       	        <td><input name="name5" type="text" class="textfield" id="name5" /></td>
       	        <td>&nbsp;</td>
   	          </tr>
       	      <tr>
       	        <td><label class="contact"><strong> Card Type:</strong></label></td>
       	        <td><input name="name6" type="text" class="textfield" id="name6" /></td>
       	        <td>&nbsp;</td>
   	          </tr>
       	      <tr>
       	        <td><label class="contact"><strong> Card Number:</strong></label></td>
       	        <td><input name="name7" type="text" class="textfield" id="name7" /></td>
       	        <td>&nbsp;</td>
   	          </tr>
       	      <tr>
       	        <td><label class="contact"><strong> Pin Number:</strong></label></td>
       	        <td><input name="name8" type="text" class="textfield" id="name8" /></td>
       	        <td>&nbsp;</td>
   	          </tr>
       	      <tr>
       	        <td><label class="contact"><strong> Expiry Date:</strong></label></td>
       	        <td><input name="name9" type="text" class="textfield" id="name9" /></td>
       	        <td>&nbsp;</td>
   	          </tr>
       	      <tr>
       	        <td>&nbsp;</td>
       	        <td><input type="submit" class="register" value="Payment" /></td>
       	        <td>&nbsp;</td>
   	          </tr>
   	        </table>
            
            
            <div>
                  <a href="welcome1.jsp" class="view_cart"><img src="images/Catalog.gif" alt="" title="" border="0"/></a>
              
              </div>
            
       	    <p>&nbsp;</p>
       	    <p>&nbsp;</p>
       	    <p>&nbsp;</p>
       	    <p>&nbsp;</p>
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