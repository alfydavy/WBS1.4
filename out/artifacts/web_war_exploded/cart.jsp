
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
<title>Cart</title>
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

  <!-- Code by alfydavy-->
  <!-- If there is a new item on the request add it to the cart -->
 <%
          if (request.getParameter("myButton1") != null ){
						String id = request.getParameter("bid");


								if ( id != null ) {
								String name = request.getParameter("bname");
								Float price = new Float(request.getParameter("bprice"));
								//Integer quantity = new Integer(request.getParameter("quantity"));
								final Integer quantity =1;
								String img = request.getParameter("bimg");
								//cart.addItem(id, name, price.floatValue(), quantity.intValue(), img);
								cart.updateQuantity(id, quantity.intValue());
								}
          }
								
          	else if (request.getParameter("myButton2") != null) {
									// button1 is pressed.
									 // go to confirm order page
								%>	 
									
									<jsp:forward page="confirmorder.jsp"></jsp:forward>
									
									
								<%
								}
								 %>
								 <%
        /*
          }
			else if((request.getParameter("myButton1") != null || request.getParameter("myButton2") != null)) {
							String id1 = request.getParameter("bid1");
						 String name1 = request.getParameter("bname1");
							Float price1= new Float(request.getParameter("bprice1"));
							Integer quantity1 = new Integer(request.getParameter("quantity1"));
							String img1 = request.getParameter("bimg1");
					
						
								if (request.getParameter("myButton1") != null) {
									// button1 is pressed.
									//cart.addItem(id1, name1, price1.floatValue(), quantity1.intValue(), img1);
									//Integer quantity1 = new Integer(request.getParameter("quantity1"));
									cart.updateQuantity(id1, quantity1.intValue());
									//cart.removeItem(id);
									}
								else if (request.getParameter("myButton2") != null) {
								    // button2 is pressed.
								
								cart.removeItem(id1);
										}
						}
						*/
          
						%>

 <% String user=session.getValue("userid").toString(); %>   

<table width="923" border="1" align="center" cellpadding="0" cellspacing="0" id="1" valign="top">
  <tr valign="top">
    <td width="919" height="1000"><table width="911" height="1002" border="1" id="2">
      <tr valign="top">
        <td width="901" height="75"><div class="header">
       		<div class="logo"><a href="index1.jsp"><img src="images/WBS Logo.gif" width="128" height="40" alt="" title="" border="0"/></a></div>            
        <div id="menu">
            <ul>                                                                       
            <li class="selected"><a href="index1.jsp">home</a></li>
            <li><a href="about.jsp">about us</a></li>
            <li><a href="category.jsp">books</a></li>
            <li><a href="specials.jsp">specials books</a></li>
            <li><a href="myaccount.jsp">my account</a></li>
            <li><a href="register.jsp">register</a></li>
            <li><a href="Trial.jsp">prices</a></li>
            <li><a href="contact.jsp">contact</a></li>
            </ul>
        </div>     
            
            
       </div></td>
      </tr>
      
      <tr valign="top">
        <td height="769"><table width="904" height="927" border="1" id="3">
          <tr valign="top">
            <td width="530" height="921" bgcolor="#FFFFFF">
              <table width="526" height="658" border="1" id="4">
              <tr valign="top">
                <td width="516" height="38"><div class="crumb_nav">
                  <a href="index1.jsp">home</a> &gt;&gt; product name
                  </div></td>
              </tr>
              <tr valign="top">
                <td height="612">
                  <table width="514" height="215" border="1" id="5">
                    <tr valign="top">
                      <td width="504" height="43"><div class="title"></div><div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>My cart</div></td>
						<!-- <td> Items : <%//=cart.getNumOfItems() %></td>   -->                  
                    </tr>
                    <tr valign="top">
                      <td height="164"><div class="feat_prod_box_details">
                        <table width="503" border="1" id="5.1" bgcolor="#33CCCC">
                          <tr>
                            <td>Image</td>
                            <td>Name</td>
                            <td>Price</td>
                            <td>Qty</td>
                            <td>Total</td>
                          </tr>
                        </table>
                        
                        <%

Enumeration e = cart.getEnumeration();

String[] tmpItem;

// Iterate over the cart

while (e.hasMoreElements()) {

tmpItem = (String[])e.nextElement();

%>
                        <form action="removefromcart.jsp" method="get">
                        <table width="503" border="1" id="5.2">
                          <tr>
                            <td><img src="<%= tmpItem[4]%>" alt="<%=tmpItem[1] %>" title="" border="0" /></td>
                            <td><%=tmpItem[1] %></td>
                            <td><%=tmpItem[2] %></td>
                            <td><%=tmpItem[3] %></td>
                           <!--  <td><input type="text" id="quantity1" name="quantity1" ></td>  -->
                            <td> <%=cart.getCost() %></td>
                            <td><button type ="submit"  name="myButton1" value="Add to Cart"><img src="images/remove.gif" alt="" title="" border="0"/></button></td>
                            <td>&nbsp;</td>
                             <td><button type ="submit"  name="myButton2" value="Clear Cart"><img src="images/confirm.gif" alt="" title="" border="0"/></button></td> 
                          </tr>
                        </table>
                        <input type="hidden" name="bid1" value="<%=tmpItem[0] %>">
						<!--  <input type="hidden" name="quantity" value="3">-->
                        <input type="hidden" name="bname1" value="<%=tmpItem[1] %>">
						<input type="hidden" name="bimg1" value="<%=tmpItem[4] %>">
                        <input type="hidden" name="bprice1" value="<%=tmpItem[2] %>">
                        </form>
                        <%

}

%>
                        <p>&nbsp;</p></td>
                        <!-- <td><button type ="submit"  name="myButton2" value="Confirm Order"><img src="images/addtocart.gif" alt="" title="" border="0"/></button></td> -->
                    </tr>
                  </table>
                 <tr>
                  <td>
                   <a href="welcome1.jsp" > <img src="images/catalog.gif" alt="" title="" border="0"/></a>
                </td>
                </tr>
            </table></td>
            <td width="358" bgcolor="#FFFFFF"><table width="354" height="743" border="1" align="right" id="3-1">
              <tr valign="top">
                <td colspan="2">
                
                <div class="cart">
                  <div class="title"><span class="title_icon"><img src="images/cart.gif" alt="" title="" /></span>My cart
                  </div>
                  <div class="home_cart_content">
                  <%=cart.getNumOfItems() %> <span class="red">TOTAL: $ <%= cart.getCost() %></span>
                  </div>
                  <a href="cart.jsp" class="view_cart">VIEW CART</a>
              
              </div>
              
              </td>
              </tr>
              <tr valign="top">
                <td colspan="2">
                <div class="title"><span class="title_icon"><img src="images/bullet3.gif" alt="" title="" /></span>About Our Store</div>
                <div class="about">
             <p>
             <img src="images/about.gif" alt="" title="" class="right" />WBS  is an online web application where the customer can purchase books online.  Through a web browser the you can search for a book by its title or  author, later can add to the shopping cart and finally purchase through  different modes of payment. You can login using your credentials  or sign up...</p>
             
             </div>
                
                
                
                </td>
              </tr>
              <tr valign="top">
                <td width="189" height="43">
                <div class="title"><span class="title_icon"><img src="images/bullet4.gif" alt="" title="" /></span>Promotions		</div>
                <p>&nbsp;</p></td>
                <td width="149"><div class="title"><span class="title_icon"><img src="images/bullet5.gif" alt="" title="" /></span>Categories</div></td>
              </tr>
              <tr valign="top">
              <td height="386">  
              </td>
              <td width="149">
              
              
              <ul class="list">
               
                

  
  
              
              
              </td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
    </table>
    <p>&nbsp;</p></td>
  </tr>
</table>
</body>
</html>
