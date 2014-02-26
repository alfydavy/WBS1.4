
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">



<%@ page import="java.util.Enumeration"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="beans.cart.ShoppingCart" %>

<!-- Instantiate the ShoppingCart bean with an id of "cart" -->
<jsp:useBean id="cart" scope="session" class="beans.cart.ShoppingCart" />
<jsp:setProperty name="cart" property="*" />

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Confirm Order</title>
<style type="text/css">
body {
	margin-left: 0px;
	margin-top: 0px;
}
</style>
<link rel="stylesheet" type="text/css" href="style.css" />
	<link rel="stylesheet" href="lightbox.css" type="text/css" media="screen" />
	
	<script src="js/prototype.js" type="text/javascript"></script>
	<script src="js/scriptaculous.js?load=effects" type="text/javascript"></script>
	<script src="js/lightbox.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/java.js"></script>
</head>

<body>
<% 
         	 if (request.getParameter("myButton2") != null) {
									// button1 is pressed.
									 // go to confirm order page
								%>	 
									
									<jsp:forward page="payment.jsp"></jsp:forward>
									
									
								<%
								}
								 %>

<form action="confirmorder.jsp" method="post">
<table width="923" border="1" align="center" cellpadding="0" cellspacing="0" id="1" valign="top">
  <tr valign="top">
    <td width="919" height="896"><table width="911" height="" border="0" id="2">
      <tr valign="top">
        <td width="901" height="75" bgcolor="#003300"><div class="header">
       		<div class="logo"><a href="index1.jsp"><img src="images/WBS Logo.gif" width="128" height="40" alt="" title="" border="0"/></a></div>            
        <div id="menu">
            <ul>                                                                       
            <li class="selected"><a href="index1.jsp">home</a></li>
            <li><a href="about.jsp">about us</a></li>
            <li><a href="category.jsp">books</a></li>
            <li><a href="specials.jsp">specials books</a></li>
            <li><a href="myaccount.jsp">my account</a></li>
            <li><a href="register.jsp">register</a></li>
            <li><a href="contact.jsp">contact</a></li>
            </ul>
        </div>     
            
            
       </div></td>
      </tr>
      
      <tr valign="top">
        <td height="641" bgcolor="#FFFFFF"><table width="904" height="633" id="3">
          <tr valign="top">
            <td width="758" height="627" bgcolor="#FFFFFF">
              <table width="750" height="" border="0" id="4">
              <tr valign="top">
                
              </tr>
              <tr valign="top">
                <td height="">
                  <table width="740" height="" border="0" id="5">
                    <tr valign="top">
                      <td width="730" height=""><div class="title"></div><div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>My cart</div></td>
                     
                    </tr>
                    <tr valign="top">
                      <td height=""><div class="feat_prod_box_details">
                        <table width="730" border="0" id="5.1" bgcolor="#33CCCC">
                          <tr>
                            <td width="138">Image</td>
                            <td width="298">Name</td>
                            <td width="114">Price</td>
                            <td width="72">Qty</td>
                            <td width="74">Total</td>

                          </tr>
                        </table>
                        
                        <%

Enumeration al = cart.getEnumeration();

String[] tmpItem;

// Iterate over the cart

while (al.hasMoreElements()) {

tmpItem = (String[])al.nextElement();

%>
                        
                        <table width="730" border="0" class="cart_table2" id="5.2">
                          <tr>
                            <td width="137"><img src="<%= tmpItem[4]%>" alt="<%=tmpItem[1] %>" class="cart_thumb" title="" border="0" /></td>
                            <td width="298"><%=tmpItem[1] %></td>
                            <td width="113"><%=tmpItem[2] %></td>
                             <td width="72"><%=tmpItem[3] %></td>
                            <td width="76"> <%=cart.getCost() %></td>
                            
                            
                            
                          </tr>
                          
                            
                          
                          <tr>
                          </tr>
                        </table>

                        <%

							}

							%>
                      
                        <table width="730" border="0" id="5.2">
                        <form action="payment.jsp" method="post">
                          <tr>
                            <td width="85">Total Amount:</td>
                            <td width="211"><%= cart.getCost() %></td>
                            <td width="135">&nbsp;</td>
                             <td width="113">&nbsp;</td>
                            <td width="25">&nbsp;</td>
                            
                            
                            <td width="121"><button type ="submit"  name="myButton2" value="payment"><img src="images/payment.gif" alt="" title="" border="0"/></button></td>
                          </tr>
                      </table></td>
                    </tr>
                   </form>
                  </table>
                  <tr>
                  <td>
                   <div>
                  <a href="welcome1.jsp" class="view_cart"><img src="images/catalog.gif" alt="" title="" border="0"/></a>
              
              </div>
                </td>
                </tr>
                
            </table>
            </td>
            <td width="130" bgcolor="#FFFFFF">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
    </table>
      <table width="912" height="64" border="0" bgcolor="#FFFFFF">
        <tr valign="top">
          <td><div class="footer">
       	<div class="left_footer"><img src="images/WBS Logo bottom.gif" width="143" height="34" /><br />
       	</div>
        <div class="right_footer">
        <a href="#">home</a>
        <a href="#">about us</a>
        <a href="#">services</a>
        <a href="#">privacy policy</a>
        <a href="#">contact us</a>
       
        </div>
        
       
       </div></td>
        </tr>
      </table></td>
  </tr>
    </form>
</table>
</body>
</html>
