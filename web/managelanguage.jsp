<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>Enter Language</title>
<link rel="stylesheet" type="text/css" href="adminstyle.css" />
</head>
<body>

<%
String adminid=session.getValue("adminid").toString();%>

<div id="wrap">

       <div class="header">
       		<div class="logo"><a href="index.jsp"><img src="images/WBS Logo.gif" width="128" height="40" alt="" title="" border="0"/></a></div>
            
            
        <div class="search">
              <form id="form1" name="form1" method="post" action="details.jsp">
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
            <li><a href="adminwelcome.jsp">home</a></li>
            <li><a href="managebooks.jsp">books</a></li>
            <li><a href="manageusers.jsp">users</a></li>
            <li><a href="managecategory.jsp">categories</a></li>
            <li><a href="managefeaturebook.jsp">featured books</a></li>
            <li class="selected"><a href="managelanguage.jsp">language</a></li>
            <li><a> </a></li>
            <li><a> </a></li>
            <li><a> </a></li>
            <li><a> </a></li>
            <li><a> </a></li>
            <li><a> </a></li>
            <li><a href="adminwelcome.jsp">welcome <%=adminid.toUpperCase()%></a></li>
            <li><a href="index.jsp">logout</a></li>
            
            </ul>
        </div>     
            
            
       </div> 
       
       
       <div class="center_content">
       	<div class="left_content">
            <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>Enter Language of the Books</div>
        
        	<div class="feat_prod_box_details">
            <p class="details">Enter the book details here:</p>
            <p class="details">&nbsp; </p>
            <div class="contact_form">
              <div class="form_subtitle">enter all the details</div>
                 <form id="register" name="register" method="post" action="addlanguage.jsp">          
                    <div class="form_row">
                    <label class="contact"><strong>Language ID:</strong></label>
                    <input type="text" name="languageid" class="contact_input" />
                    </div>  


                    <div class="form_row">
                    <label class="contact"><strong>Language:</strong></label>
                    <input type="text" name="languagename" class="contact_input" />
                    </div>
                    <div class="form_row">
                    </div> 

                    
                    <div class="form_row">
                    <input type="submit" class="register" value="Submit" />
                    </div>   
                  </form>     
                </div>  
            
          </div>	
            
              

            

            
        <div class="clear"></div>
        </div><!--end of left content-->
        
        <div class="right_content">
        
                	<div class="languages_box"></div>
           	 <div class="right_box">
             
           	   <div class="title"><span class="title_icon"><img src="images/bullet5.gif" alt="" title="" /></span>Quick Link</div> 
                
                <ul class="list">
                  <li><a href="manageusers.jsp">Manage Users</a></li>
                  <li><a href="managebooks.jsp">Add Books</a></li>
                  <li><a href="manageauthors.jsp">Add Authors</a></li>
                  <li><a href="managecategory.jsp">Add Category</a></li>
                  <li><a href="managefeaturebook.jsp">Featured Books</a></li>
                </ul>
                <p>&nbsp;</p>
                
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