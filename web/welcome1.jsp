<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.Enumeration"%>
<%@ page import="java.util.*"%>

<%@ page import="beans.cart.ShoppingCart" %>

<!-- Instantiate the ShoppingCart bean with an id of "cart" -->
<jsp:useBean id="cart" scope="session" class="beans.cart.ShoppingCart" />
<jsp:setProperty name="cart" property="*" />




<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%!
public int nullIntconv(String str)
{   
    int conv=0;
    if(str==null)
    {
        str="0";
    }
    else if((str.trim()).equals("null"))
    {
        str="0";
    }
    else if(str.equals(""))
    {
        str="0";
    }
    try{
        conv=Integer.parseInt(str);
    }
    catch(Exception e)
    {
    }
    return conv;
}
%>
<%

    Connection conn = null;
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/WBS","test1", "test1");

    ResultSet rsPagination = null;
    ResultSet rsRowCnt = null;
    
    //added
    
    ResultSet rs2 =null;
    //ResultSet rs2=st2.executeQuery(querystmt2);
    
    PreparedStatement psPagination=null;
    PreparedStatement psRowCnt=null;
    
    //added
    
    		//PreparedStatement st2=null;
   // Statement st2= con.createStatement();
   
   //Query
   			//String  querystmt2 = "select *  from books";
   
    
    int iShowRows=5;  // Number of records show on per page
    int iTotalSearchRecords=10;  // Number of pages index shown
    
    int iTotalRows=nullIntconv(request.getParameter("iTotalRows"));
    int iTotalPages=nullIntconv(request.getParameter("iTotalPages"));
    int iPageNo=nullIntconv(request.getParameter("iPageNo"));
    int cPageNo=nullIntconv(request.getParameter("cPageNo"));
    
    int iStartResultNo=0;
    int iEndResultNo=0;
    
    if(iPageNo==0)
    {
        iPageNo=0;
    }
    else{
        iPageNo=Math.abs((iPageNo-1)*iShowRows);
    }
    

    
    String sqlPagination="SELECT SQL_CALC_FOUND_ROWS * FROM books limit "+iPageNo+","+iShowRows+"";

    psPagination=conn.prepareStatement(sqlPagination);
    rsPagination=psPagination.executeQuery();
    
    //// this will count total number of rows
     String sqlRowCnt="SELECT FOUND_ROWS() as cnt";
     psRowCnt=conn.prepareStatement(sqlRowCnt);
     rsRowCnt=psRowCnt.executeQuery();
     
     if(rsRowCnt.next())
      {
         iTotalRows=rsRowCnt.getInt("cnt");
      }
     
     
  
     if (request.getParameter("myButton1") != null) {
     String id = request.getParameter("bid");
		if ( id != null ) {
		String name = request.getParameter("bname");
		Float price = new Float(request.getParameter("bprice"));
		//Integer quantity = new Integer(request.getParameter("quantity"));
		final Integer quantity =1;
		String img = request.getParameter("bimg");
		cart.addItem(id, name, price.floatValue(), quantity.intValue(), img);
		}
     }
     
    /* 
     else if  (request.getParameter("myButton3") != null) {
    	// out.println("Goycha !");

    				<jsp:forward page="tsearch.jsp"></jsp:forward>

     }
     
     
     */
%>

            <SCRIPT LANGUAGE="JavaScript">
            <!--
            function button3()
            {
            	//alert("jack");
            	alert(document.form1.myButton3.value + "jack" );
                document.getElementByID(form1).myButton3.value = "Text Search";
                tsearch.submit();
            }    
            
            /*
            function button2()
            {
                document.form1.buttonName.value = "button 2"
                form1.submit()
            }    
            function button3()
            {
                document.form1.buttonName.value = "button 3"
                form1.submit()
            }  
            */
            // --> 
        </SCRIPT>







<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Welcome</title>
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

 <!-- Print the current quantity of the ShoppingCart -->
 <!--  <a href="cart.jsp">Shopping Cart Quantity:</a>-->
    <%//=cart.getNumOfItems() %> 

 <% String user=session.getValue("userid").toString(); %>   

<table width="923" border="1" align="center" cellpadding="0" cellspacing="0" id="1" valign="top">
  <tr valign="top">
    <td width="919" height="1062" ><table width="911" height="1076" border="1" id="2">
      <tr valign="top">
        <td width="901" ><div class="header">
       		<div class="logo"><a href="index1.jsp"><img src="images/WBS Logo.gif" width="128" height="40" alt="" title="" border="0"/></a></div>           
       		
       		<!-- Search  -->
       				 <div class="search">
              <form id="tsearch" name="tsearch" method="post" action="tsearch.jsp">
                <table width="250" height="25" border="0">
                  <tr>
                    <td>search</td>
                    <td><label for="searchtextbox"></label>
                    <input name="searchtextbox" type="text" id="searchtextbox" maxlength="50" bgcolor/></td>
                    <!--  <td><img name="" src="" width="23" height="23" alt="" /></td>-->
                    <!--  <td>   <input type="submit" class="tsearch" value="Search"  onclick="button3();"/></td>-->
                  </tr>
                </table>
              </form>
            </div>
                 <div class="clear"></div>   
                  <div class="search">
                  <a href="launchsearch.jsp"><input type ="button"  name="myButton2" value="Advanced Search"  src="images/search.png" alt="" title="" border="0"/></a>
                  </div>
                  <div class="clear"></div>       
       		 
        <div id="menu">
            <ul>                                                                       
            <li class="selected"><a href="index1.jsp">home</a></li>
            <li><a href="about.jsp">about us</a></li>
            <li><a href="category.jsp">books</a></li>
            <li><a href="specials.jsp">specials books</a></li>
            <li><a href="myaccount.jsp">my account</a></li>
            <li><a href="contact.jsp">contact</a></li>
            <li><a> </a></li>
            <li><a> </a></li>
            <li><a href="welcome1.jsp">welcome  <%=user.toUpperCase()%></a></li>
            <li><a href="index.jsp">logout</a></li>
            </ul>
        </div>     
            
            
       </div></td>
      </tr>
      
      <tr valign="top">
        <td height="834"><table width="904" height="826" border="1" id="3">
          <tr valign="top">
            <td width="530" height="820" bgcolor="#FFFFFF">
              <table width="526" height="743" border="1" id="4">
              <tr valign="top">
                <td width="516" height="38"><div class="crumb_nav">
                  <a href="index1.jsp">home</a> &gt;&gt; product name
                  </div></td>
              </tr>
              <tr valign="top">
                <td height="269">
                  <form name="frm"  action="" method="">
  
  <input type="hidden" name="iPageNo" value="<%=iPageNo%>">
<input type="hidden" name="cPageNo" value="<%=cPageNo%>">
<input type="hidden" name="iShowRows" value="<%=iShowRows%>">

                   <%  	
                   while(rsPagination.next())
                   {
  %>
             	  <form name ="form2" action="welcome1.jsp" method="post">
                
                  <table width="514" height="215" border="1" id="5">
                    <tr valign="top">
                      <td width="504" height="43"><div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span><%= rsPagination.getString("book_name")%></div></td>
                    </tr>
                    <tr valign="top">
                      <td height="164"><div class="feat_prod_box_details">
                      <div class="feat_prod_box_details">
        	
           	
        	
            
            	<div class="prod_img"><a href="#"><img src="<%= rsPagination.getString("book_img")%>" alt="" title="" border="0" /></a>
                <br /><br />
                <a href="<%= rsPagination.getString("book_img1")%>"" rel="lightbox"><img src="images/zoom.gif" alt="" title="" border="0" /></a>
                </div>
         
  
                <div class="prod_det_box">
                	<div class="box_top"></div>
                    <div class="box_center">
                    <div class="prod_title">Details</div>
                    <p class="details"><%= rsPagination.getString("book_desc")%></p>
                    <div class="price"><strong>Price:</strong> <span class="red"> <%= rsPagination.getString("book_price")%> $</span>
                    </div>
                    <div class="price"><strong>     </strong></div>
                    <!-- <div class="quantity"><strong>Quantity:</strong> <span class="red"><input type="text" id="quantity" name="quantity"> Nos</span>
                    </div> -->
                    <div class="quantity"><strong>     </strong></div>
                    <button type ="submit" name="myButton1" value="Add to cart" ><img src="images/addtocart.gif" alt="" title="" border="0"/></button>
                    <div class="clear"></div>
                    </div>
           
                    <div class="box_bottom"></div>
                </div>    
            <div class="clear"></div>
            </div>
                      </td>
                    </tr>
                  </table>
        					<input type="hidden" name="bid" value="<%= rsPagination.getString("book_id")%>">
         				<input type="hidden" name="bname" value="<%= rsPagination.getString("book_name")%>">
        				<input type="hidden" name="bprice" value="<%= rsPagination.getString("book_price")%>">
        				<input type="hidden" name="bimg" value="<%= rsPagination.getString("book_img")%>">
        			</form>
         
                <% 
 }
 %>
<%
  //// calculate next record start record  and end record 
        try{
            if(iTotalRows<(iPageNo+iShowRows))
            {
                iEndResultNo=iTotalRows;
            }
            else
            {
                iEndResultNo=(iPageNo+iShowRows);
            }
           
            iStartResultNo=(iPageNo+1);
            iTotalPages=((int)(Math.ceil((double)iTotalRows/iShowRows)));
        
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }

%>

          
                
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
              
              
              
              
              <table width="188" border="1" id="3-1-1">
                  <tr>
                    <td height="175">
                    
                    
                    <div class="new_prod_box">
                        <a href="#">Dummy Text</a>
                        <div class="new_prod_bg">
                        <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span>
                     
                        </div>           
                    </div>
                    
                    
                    </td>
                  </tr>
                </table>
                

                
                
                </td>
              <td width="149">
              
              
              <ul class="list">
               
                
                
                
        
                
     
                                                         
                </ul>
                
                

  
  
              
              
              </td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
    </table>
    <p></p></td>
  </tr>
  <tr valign="top">
  <td height="144" valign="middle" bgcolor="#FFFFFF">
  <div align="top">
  
    <div class="pagination">
<%
        //// index of pages 
        
        int i=0;
        int cPage=0;
        if(iTotalRows!=0)
        {
        cPage=((int)(Math.ceil((double)iEndResultNo/(iTotalSearchRecords*iShowRows))));
        
        int prePageNo=(cPage*iTotalSearchRecords)-((iTotalSearchRecords-1)+iTotalSearchRecords);
        if((cPage*iTotalSearchRecords)-(iTotalSearchRecords)>0)
        {
         %>
          <a href="welcome1.jsp?iPageNo=<%=prePageNo%>&cPageNo=<%=prePageNo%>"> <img src="images/prev.gif" alt="" title="" /></a>
         <%
        }
        
        for(i=((cPage*iTotalSearchRecords)-(iTotalSearchRecords-1));i<=(cPage*iTotalSearchRecords);i++)
        {
          if(i==((iPageNo/iShowRows)+1))
          {
          %>
           <a href="welcome1.jsp?iPageNo=<%=i%>" ><b><%=i%></b></a>
          <%
          }
          else if(i<=iTotalPages)
          {
          %>
           <a href="welcome1.jsp?iPageNo=<%=i%>"><%=i%></a>
          <% 
          }
        }
        if(iTotalPages>iTotalSearchRecords && i<iTotalPages)
        {
         %>
         <a href="welcome1.jsp?iPageNo=<%=i%>&cPageNo=<%=i%>"> <img src="images/next.gif" alt="" title="" /></a> 
         <%
        }
        }
      %>
<b>Rows <%=iStartResultNo%> - <%=iEndResultNo%>   Total Result  <%=iTotalRows%> </b>
</div> 
</div></td></tr>
</table>
</form> 
</body>
</html>
<%
    try{
         if(psPagination!=null){
             psPagination.close();
         }
         if(rsPagination!=null){
             rsPagination.close();
         }
         
         if(psRowCnt!=null){
             psRowCnt.close();
         }
         if(rsRowCnt!=null){
             rsRowCnt.close();
         }
         
         if(conn!=null){
          conn.close();
         }
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
%>
