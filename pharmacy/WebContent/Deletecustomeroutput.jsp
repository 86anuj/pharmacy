<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="com.pharmacy.GetCon"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Sagar Pharmacy</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	function ctck() {
		var sds = document.getElementById("dum");
	}
</script>

<SCRIPT LANGUAGE="JavaScript">
	function dil(form) {
		for (var i = 0; i < form.elements.length; i++) {
			if (form.elements[i].value == "") {
				alert("Please fill in all fields")
				document.F1.accountno.focus()
				return false
			}
		}

		if (!isNaN(document.F1.username.value)) {
			alert("User Name  must  be  char's & can't be null")
			document.F1.username.value = ""
			document.F1.username.focus()
			return false
		}

		if (!isNaN(document.F1.password.value)) {
			alert("Password  must  be  char's & can't be null")
			document.F1.password.value = ""
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
	function ctck() {
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

	<table width="960" border="0" cellspacing="10" cellpadding="0"
		align="center">
		<tr align="justify">
			<td valign="top" width="220px"><img
				src="images/pharmacy_04.jpg" alt="" border="0" /> <br />

			</td>
			<td valign="top">
				<%-- <table cellspacing="10" cellpadding="8">	--%> <%
 	
 %>
				<table>
					<%
						String ph = request.getParameter("custid");

						double id = Double.parseDouble(ph);

						Connection con = GetCon.getCon();

						boolean status = VerifyCustomerAvailability.checkCustomer(id);
						if (status == true) {

							try {
								PreparedStatement ps = con
										.prepareStatement("delete  from CUSTOMER where id = '"
												+ id + "' ");

								int x = ps.executeUpdate();

								if (x > 0) {
									out.print("Customer has been deleted");
									request.setAttribute("deleted",
											"Customer has been deleted");
					%>
					<jsp:forward page="customeradmin.jsp"></jsp:forward>
					<%
						}

							} catch (SQLException e) {
								e.printStackTrace();
							}

						} else {
							out.println("your given id is wrong");
							request.setAttribute("wrong", "Customer does not exist");
					%>
					<jsp:forward page="Deletecustomer.jsp"></jsp:forward>
					<%
						}
					%>
				</table>
				<%
					
				%> <%@ page import="java.sql.*"%> <%@ page
					import="java.io.*"%> <%@ page
					import="javax.servlet.*"%> <%@ page
					import="com.pharmacy.*"%>

			</td>
			<td valign="top"><img src="images/pharmacy_06.jpg"
				alt="" border="0" /></td>

		</tr>
		<tr>
			<td colspan="4" style="border-bottom: 1px solid #CCCCCC;"></td>
		</tr>
	</table>


	<div id="footer">
		<div id="footer_1">
			<ul>
				<li><a href="#"></a></li>
				<li><a href="#"></a></li>
				<li><a href="#"></a></li>
				<li><a href="#"></a></li>
				<li><a href="#"></a></li>
			</ul>
			<br /> <span id="design">Designed & Developed By Sagar Mali</span>
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
		<div id="footer_navigation"></div>

		<script type="text/javascript">
			document.onload = ctck();
		</script>
	</div>

</body>
</html>
