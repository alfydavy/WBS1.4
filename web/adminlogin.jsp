<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>Admin Login</title>
<link rel="stylesheet" type="text/css" href="adminstyle.css" />
</head>
<body>
<div id="wrap">

       <div class="header">
       		<div class="logo"><a href="index.jsp"><img src="images/WBS Logo.gif" width="128" height="40" alt="" title="" border="0"/></a></div>
       </div> 
       
       
       <div class="center_content">
       	<div class="left_content2">
            <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>My account</div>
        
        	<div class="feat_prod_box_details2">
            <p class="details">
             If you have registered with us, you may login using your username and password. If you are new to this site, you may register with us by going to registration page.           	  </p>
            <p class="details">&nbsp;</p>
            <div class="contact_form2">
              <div class="form_subtitle">Please login to manage the site</div>
                 <form name="register" method="post">          
                    <div class="form_row2">
                    <label class="contact"><strong>Username:</strong></label>
                    <input type="text" name="adminid" class="contact_input2" />
                    </div>  


                    <div class="form_row2">
                    <label class="contact"><strong>Password:</strong></label>
                    <input type="password" name="pass" class="contact_input2" />
                    </div>                     

                    <div class="form_row2">
                        <div class="terms">
                        <input type="checkbox" name="terms" />
                        Remember me
                        </div>
                    </div> 

                    
                    <div class="form_row2">
                    <input type="submit" class="register" value="login" />
                    </div>
                    
                    
                    
<%

String user=request.getParameter("adminid");
String pass=request.getParameter("pass");
session.putValue("adminid",user);

     try{
    
    	 Class.forName("com.mysql.jdbc.Driver");
    	 java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/WBS",
    	 "test1","test1");
    	 Statement st= con.createStatement();
    	 //ResultSet rs;
     ResultSet rs=st.executeQuery("select userid, password from adminuser");
     while(rs.next())
         {
         String username=rs.getString(1);
         String password=rs.getString(2);
         if(user.equals(username) && pass.equals(password))
         {
         	%>
             <jsp:forward page="adminwelcome.jsp"></jsp:forward>
         	<%
         }
         else
         out.println("Login Failed, Please try Again");
         %>
        
         <%
     }
}catch(Exception e1)
{}

%>
                    
                    
                    
                    </form>     
                    
                </div>  
            
            </div>	
            
              

            

            
        <div class="clear"></div>
        </div><!--end of left content-->
        
        <div class="right_content2">
        
                	<div class="languages_box"></div>
           	 <div class="title"><span class="title_icon"><img src="images/bullet3.gif" alt="" title="" /></span>About Our Store</div> 
             <div class="about">
             <p>
             <img src="images/about.gif" alt="" title="" class="right" />WBS  is an online web application where the customer can purchase books online.  Through a web browser the you can search for a book by its title or  author, later can add to the shopping cart and finally purchase through  different modes of payment. You can login using your credentials  or sign up...</p>
             
             </div>
             <div class="right_box">
             
           	   <div class="title"><span class="title_icon"><img src="images/bullet5.gif" alt="" title="" /></span>Categories</div> 
                
                <ul class="list">
                <li><a href="#">academic</a></li>
                <li><a href="#">biographies</a></li>
                <li><a href="#">computers</a></li>
                <li><a href="#">comics</a></li>
                <li><a href="#">fiction</a></li>
                <li><a href="#">religion</a></li>
                <li><a href="#">crafts</a></li>
                <li><a href="#">music</a></li>
                <li><a href="#">travel</a></li>
                <li><a href="#">health</a></li>
                <li><a href="#">nature</a></li>                                              
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