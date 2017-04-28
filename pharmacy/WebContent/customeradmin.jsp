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

	<table width="1200" border="0" cellspacing="10" cellpadding="0"
		align="center">

		<%
			if (request.getAttribute("deleted") != null) {
				out.print("<table>");
				out.print("<div width='200' align='center'>");
				out.print("<font color='blue'>"
						+ request.getAttribute("deleted"));

				out.print("</div>");
				out.print("<table>");
			}
		%>

		<table width=900 border="0" cellspacing="10" cellpadding="0"
			align="center">
			<%
				try {
					Connection con = GetCon.getCon();
					Statement ps = con.createStatement();
					//ps.setString(1,uname);
					ResultSet rs = ps
							.executeQuery("Select ID,Name,Username,password,adderess,cityname,statename,country,Phone,email from CUSTOMER");

					out.print("<td><a href='Deletecustomer.jsp'>Delete</a></td>");
					out.print("<td><a href='Register.jsp'>New</a></td>");

					out.print("<tr><th>ID</th><th>Name</th><th>Login ID</th><th>Password</th><th>Address</th><th>City</th><th>State</th><th>Country</th><th>Phone</th><th>Email</th></tr>");
					while (rs.next()) {
						int id = rs.getInt(1);
						session.setAttribute("id", id);
						out.print("<tr align='center'>");
						out.print("<td>" + rs.getString(1) + "</td>");
						out.print("<td>" + rs.getString(2) + "</td>");
						out.print("<td>" + rs.getString(3) + "</td>");
						out.print("<td>" + rs.getString(4) + "</td>");
						out.print("<td>" + rs.getString(5) + "</td>");
						out.print("<td>" + rs.getString(6) + "</td>");
						out.print("<td>" + rs.getString(7) + "</td>");
						out.print("<td>" + rs.getString(8) + "</td>");
						out.print("<td>" + rs.getString(9) + "</td>");
						out.print("<td>" + rs.getString(10) + "</td>");
						out.print("</tr>");
					}
				} catch (SQLException e) {
					e.printStackTrace();
				}
			%>
		</table>
		<%
			
		%>

		<%@ page import="java.sql.*"%>
		<%@ page import="java.io.*"%>
		<%@ page import="javax.servlet.*"%>
		<%@ page import="com.pharmacy.*"%>
		</td>

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
