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

		<tr>
			<td valign="top" width="220px"><img
				src="images/pharmacy_04.jpg" alt="" border="0" /> <br />

			</td>
			<td valign="top">
				<%
					if (request.getAttribute("order") != null) {
						out.print("<table>");
						out.print("<div width='200' align='center'>");
						out.print("<font color='blue'>" + request.getAttribute("order"));

						out.print("</div>");
						out.print("<table>");
					}
				%>
				<table width=700 border="0" cellspacing="10" cellpadding="0"
					align="center">
					<%
						try {
							String custid = (String) request.getParameter("custId");
							System.out.println("Cusd id in custorder " + custid);
							Connection con = GetCon.getCon();
							PreparedStatement ps = con
									.prepareStatement("Select ID,PRODTYPE,PRODUCTNAME,MANUFACTURER,ORDERQ,RATE,AMOUNT,STATUS from ORDERS where cust_id="
											+ custid);
							ResultSet rs = ps.executeQuery();

							out.print("<tr><th>ID</th><th>Product Type</th><th>Product Name</th><th>Manufacturer</th><th>Quantity</th><th>Rate</th><th>Amount</th><th>Status</th></tr>");
							while (rs.next()) {
								out.print("<tr align='center'>");
								out.print("<td>" + rs.getString(1) + "</td>");
								out.print("<td>" + rs.getString(2) + "</td>");
								out.print("<td>" + rs.getString(3) + "</td>");
								out.print("<td>" + rs.getString(4) + "</td>");
								out.print("<td>" + rs.getString(5) + "</td>");
								if (rs.getString(6) != null)
									out.print("<td>" + rs.getString(6) + "</td>");
								else
									out.print("<td>-</td>");
								if (rs.getString(7) != null)
									out.print("<td>" + rs.getString(7) + "</td>");
								else
									out.print("<td>-</td>");

								out.print("<td>" + rs.getString(8) + "</td>");

								out.print("</tr>");
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
