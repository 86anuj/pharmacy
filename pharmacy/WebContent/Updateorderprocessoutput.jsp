


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Sagar Pharmacy</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
function ctck()
{
var sds = document.getElementById("dum");
}
</script>

<SCRIPT LANGUAGE="JavaScript">
function dil(form)
{
   for(var i=0; i<form.elements.length; i++)
   {
		if(form.elements[i].value == "")
		{
		   alert("Please fill in all Fields")
		   document.F1.accountno.focus()
		   return false
		}
   }

   if(isNaN(document.F1.accountno.value))
   {
       alert("Account number must  be  number & can't be null")
	   document.F1.accountno.value=""
	   document.F1.accountno.focus()
	   return false
   }
   if(!isNaN(document.F1.username.value))
   {
       alert("User Name  must  be  char's & can't be null")
	   document.F1.username.value=""
	   document.F1.username.focus()
	   return false
   }

   if(!isNaN(document.F1.password.value))
   {
       alert("Password  must  be  char's & can't be null")
	   document.F1.password.value=""
	   document.F1.password.focus()
	   return false
   }
   
   return true   
}
</SCRIPT>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Global Banking ..</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
function ctck()
{
var sds = document.getElementById("dum");

}
</script>
<body>
<div id="header">
	<div id="navigation">
    	<ul>
        	<li><a href="index.jsp">HOME</a></li>
            <li><a href="about.jsp">ABOUT US</a></li>
            <li><a href="admin.jsp">DISTRIBUTOR </a></li>
            <li><a href="customer.jsp">CUST0MER</a></li>
            <li><a href="contactus.jsp">CONTACT US</a></li>
        </ul>	
    </div>
</div>

<table width="960" border="0" cellspacing="10" cellpadding="0" align="center">
  <tr align="justify">
    <td valign="top" width="220px">
    	<img src="images/pharmacy_04.jpg" alt="" border="0" /> <br /> 
      
    </td> <td valign="top">
    	
				
    	<% 
%>
<table width="300" border="0" cellspacing="10" cellpadding="0" align="center"><%
        double custid=(Double)session.getAttribute("custid");
		System.out.println("OID in UOP1: "+custid);
       
        String order=request.getParameter("orderq");  
        double orderq=Double.parseDouble(order);
        
        String rate=request.getParameter("rate");
		double rateVal=Double.parseDouble(rate);
        
        String amoun=request.getParameter("amount");
        double amount=Double.parseDouble(amoun);
	    
	    String status=request.getParameter("status");
	    
		try 
		{
		    Connection con=GetCon.getCon();
			PreparedStatement ps=con.prepareStatement("update ORDERS set orderq=?,rate=?,amount=?,status=? where id =?");
           			ps.setDouble(1,orderq);
           			ps.setDouble(2,rateVal);
           			ps.setDouble(3,amount);
           			ps.setString(4,status);
           			ps.setDouble(5,custid);
           			int x=ps.executeUpdate();
           		    
           	if(x>0){
				out.print("Order has been updated");
				request.setAttribute("order","Order has been updated");
				%>			
				<jsp:forward page="ordersadmin.jsp"></jsp:forward> 
				<% 
			}
           			
		  /* else{
		  
			out.print("sorry try later");
			
			%>
			<jsp:forward page="index.jsp"></jsp:forward> 
			<% 
			
			}*/
		} catch (SQLException e) {
			e.printStackTrace();
		}
	
		%></table><%
%>
 

<%@ page import="java.sql.*"%>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.*"%>
<%@ page import="com.pharmacy.*" %>
  
        
    </td>
    <td valign="top">
    	<img src="images/pharmacy_06.jpg" alt="" border="0" />
        
    </td>
    
  </tr>
  <tr><td colspan="4" style="border-bottom:1px solid #CCCCCC;"></td></tr>
</table>


<div id="footer">
  <div id="footer_1">
   		<ul>
        	<li><a href="#"></a></li>
            <li><a href="#"></a></li>
            <li><a href="#"></a></li>
            <li><a href="#"></a></li>
            <li><a href="#"></a></li>
        </ul>	<br />
    <span id="design">Designed & Developed By Sagar Mali</span>
    <script type="text/javascript">
    document.onload = ctck();
    </script>
  </div>
</div>
</body>
</html>

</head>

<body>






	
    
<div id="footer_top">
  <div id="footer_navigation">
  

  </div>
  
<script type="text/javascript">
document.onload = ctck();
</script>
</div>

</body>
</html>
