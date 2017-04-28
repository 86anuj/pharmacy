<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
				alert("Fill out all Fields")
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
				<%
					
				%>
				<table width="300" border="0" cellspacing="10" cellpadding="0"
					align="center">
					<%
						String custid = (String) request.getParameter("custId");
						System.out.println("Customer ID in OD" + custid);
						long custId = Long.parseLong(custid);

						String ProdType = request.getParameter("ProdType");
						String productname = request.getParameter("productname");

						String order = request.getParameter("orderq");
						long orderq = Long.parseLong(order);

						String manufacturer = request.getParameter("manufacturer");

						try {
							Connection con = GetCon.getCon();
							PreparedStatement ps = con
									.prepareStatement("insert into ORDERS (CUST_ID, PRODTYPE, PRODUCTNAME,MANUFACTURER,ORDERQ) values(?,?,?,?,?)");
							ps.setLong(1, custId);
							ps.setString(2, ProdType);
							ps.setString(3, productname);
							ps.setString(4, manufacturer);
							ps.setLong(5, orderq);
							int x = ps.executeUpdate();

							if (x > 0) {

								out.print("your order has placed");
								request.setAttribute("order", "Your order has been booked");
					%>
					<jsp:forward page="index.jsp"></jsp:forward>
					<%
						}

							else {

								out.print("sorry try later");
					%>
					<jsp:forward page="index.jsp"></jsp:forward>
					<%
						}
						} catch (SQLException e) {
							e.printStackTrace();
						}
					%>
				</table>
				<%
					
				%> <%@ page import="java.sql.*"%> <%@ page
					import="java.io.*"%> <%@ page
					import="javax.servlet.*"%> <%@ page
					import="com.pharmacy.*"%>
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
