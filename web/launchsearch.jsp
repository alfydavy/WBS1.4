<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>Web Book Store-MyAccount</title>
<link rel="stylesheet" type="text/css" href="style.css" />


<script language="JavaScript">

function capture_val() {
	
	/*
	var cat= document.getElementById("cat").value; 
	var auth= document.getElementById("auth").value; 
	var lang= document.getElementById("lang").value; 
	alert("Cat is " + cat);
	alert("auth  is " + auth);
	alert("lang is " + lang);
	
	*/
	
	if ((document.getElementById("cat").value =='null')  || (document.getElementById("auth").value =='null') || (document.getElementById("lang").value=='null'))
		{
		
		//var cat= document.getElementById("cat").value; 
	//alert(cat);
	//alert("you in err");
		alert ("You must choose one item from each of the drop down box");
	// document.form['search'].submit();

		}
	else {
		//alert("you gud");
		document.search.submit();
		//alert ("You must choose one item from each of the drop down box");
	}
	
	//onclick="capture_val();"
	//var lang = document.createElement("lang");
	
	//var auth = document.getElementById("auth"); 
	
	//var option = document.createElement("option")
	
	//document.getElementById(cat1).value=cat;
	//alert(document.getElementById(cat1).value);
	
}

</script>



</head>
<body>
<div id="wrap">

       <div class="header">
       		<div class="logo"><a href="index.jsp"><img src="images/WBS Logo.gif" width="128" height="40" alt="" title="" border="0"/></a></div>
            
            
            <div class="search">
          
          <table width="380" height="25" border="0">
            <tr class="searchtabl">
                    <td width="72"><h5>&nbsp;</h5></td>
              <td width="148"><label for="searchtextbox"></label></td>
                    <td width="37">&nbsp;</td>
                    <td width="105">&nbsp;</td>
            </tr>
                </table>
            </div>
            
            
            
   		 <div id="menu">
            <ul>                                                                       
            <li><a href="index.jsp">home</a></li>
            <li><a href="about.jsp">about us</a></li>
            <li><a href="category.jsp">books</a></li>
            <li><a href="specials.jsp">specials books</a></li>
            <li class="selected"><a href="login.jsp">my account</a></li>
            <li><a href="register.jsp">register</a></li>
            <li><a href="contact.jsp">contact</a></li>
            </ul>
        </div>     
            
            
       </div> 
       
       
       <div class="center_content">
       	<div class="left_content">
            <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>Search Book</div>
        
        	<div class="feat_prod_box_details">
            <p class="details">Please enter Book Name, Category, Language and Author of the Book</p>
            <p class="details">&nbsp;</p>
            <div class="contact_form">
              <div class="form_subtitle">Search for a Book selecting the criteria below</div>
              <form name="search" method="post" action="adsearch.jsp">
              
              
              
              <%


			try{
				Class.forName("com.mysql.jdbc.Driver");
				java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/WBS",
				"test1","test1");
				Statement st1= con.createStatement();
				Statement st2= con.createStatement();
				Statement st3= con.createStatement();
				
				
				String  querystmt1 = "select *  from category";
				String  querystmt2 = "select *  from lang";
				String  querystmt3 = "select *  from author";
				
				ResultSet rs1=st1.executeQuery(querystmt1);
				ResultSet rs2=st2.executeQuery(querystmt2);
				ResultSet rs3=st3.executeQuery(querystmt3);
				
				
				String ss1a;
				String ss1b;
				String ss2a;
				String ss2b;
				String ss3a;
				String ss3b;
				String ss3c;

    		%>
              
              
              
                        
                   <!--  <div class="form_row">
                    <label class="contact"><strong>Book Name:</strong></label>
                    <input type="text" name="userid" class="contact_input2" />
                    </div>   -->


                <div class="form_row">
                    <label class="contact"><strong>Category:</strong></label>
                    
                  <label for="select"></label>
                    <select name="cat" class="search_dropbox" id="cat">
                    
                    
                    <option selected="selected" value="null"> Category </option> 
			<%
				while(rs1.next())
					{
						ss1a= rs1.getString(2);
						ss1b=rs1.getString(1);
			%>
			 
			<option value= "<%= ss1b %>"><%= ss1a%></option> 
			<%
					} 
			%>
                    
                    
                    </select>
                    </div>
                    
                    
                    <div class="form_row">
                    <label class="contact"><strong>Language:</strong></label>
                    
                    <label for="select"></label>
                    <select name="lang" class="search_dropbox" id="lang">
                    
                    
                    
                    <option selected="selected" value="null"> Language </option>
			<%
				while(rs2.next())
					{
						ss2a= rs2.getString(1);
						ss2b= rs2.getString(2);
			%>
			 
			<option value= "<%= ss2a %>"><%= ss2b %></option> 
			<%
					} 
			%>
                    
                    
                    </select>
                    </div> 
                    
                    
                    <div class="form_row">
                    <label class="contact"><strong>Author:</strong></label>
                    
                    <label for="select"></label>
                    <select name="auth" class="search_dropbox" id="auth">
                    
                    
                    <option selected="selected" value="null"> Author </option>
			<%
				while(rs3.next())
					{
						ss3a= rs3.getString(2) ;
						//ss3b=rs3.getString(5) ;
						ss3c=rs3.getString(1) ;
			%>
			 
			<option value= "<%= ss3c%>"><%= ss3a  %></option> 
			<%
					} 
			%>
                    
                    
                    </select>
                    </div>

                    
                <div>
                <!--  <button type ="button" name="myButton1" value="Advanced Search"  onclick="capture_val() "></button> -->
                 <input type="button" value="Search"  onclick="capture_val()" />
                    <!--<input type ="button"  name="myButton2" value="Search"  src="images/search.png" alt="" title="" border="0"/> -->
                 </div>
 
                 <%	
				
	    st1.close();
	    st2.close();
	    st3.close();
       con.close();

				}
			catch(Exception e){}

%> 
                 
              </form>     
                    
                </div>  
                
           <div>
                   <a href="welcome1.jsp" > <img src="images/catalog.gif" alt="" title="" border="0"/></a>
               </div>
            
            </div>	
            
              

            

            
        <div class="clear"></div>
        </div><!--end of left content-->
        
        <div class="right_content">
        
                	<div class="languages_box"></div>
           	 <div class="title"><span class="title_icon"><img src="images/bullet3.gif" alt="" title="" /></span>About Our Store</div> 
             <div class="about">
             <p>
             <img src="images/about.gif" alt="" title="" class="right" />WBS  is an online web application where the customer can purchase books online.  Through a web browser the you can search for a book by its title or  author, later can add to the shopping cart and finally purchase through  different modes of payment. You can login using your credentials  or sign up...</p>
             
             </div>
             
             <div class="right_box">
             
             	<div class="title"><span class="title_icon"><img src="images/bullet4.gif" alt="" title="" /></span>Promotions</div> 
                    <div class="new_prod_box">
                        <a href="Trial.jsp">product name</a>
                        <div class="new_prod_bg">
                        <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span>
                        <a href="Trial.jsp"><img src="images/thumb1.gif" alt="" title="" class="thumb" border="0" /></a>
                        </div>           
                    </div>
                    
                    <div class="new_prod_box">
                        <a href="Trial.jsp">product name</a>
                        <div class="new_prod_bg">
                        <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span>
                        <a href="Trial.jsp"><img src="images/thumb2.gif" alt="" title="" class="thumb" border="0" /></a>
                        </div>           
                    </div>                    
                    
                    <div class="new_prod_box">
                        <a href="Trial.jsp">product name</a>
                        <div class="new_prod_bg">
                        <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span>
                        <a href="Trial.jsp"><img src="images/thumb3.gif" alt="" title="" class="thumb" border="0" /></a>
                        </div>           
                    </div>               
             
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