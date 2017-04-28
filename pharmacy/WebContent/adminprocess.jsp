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

	<table width="960" border="0" cellspacing="10" cellpadding="0"
		align="center">
		<tr align="justify">
			<td valign="top" width="220px"><img
				src="images/pharmacy_04.jpg" alt="" border="0" /> <br />

			</td>
			<td valign="top">
				<table width="300" border="0" cellspacing="10" cellpadding="0"
					align="center">
					<%
						String username = request.getParameter("username");
						String password = request.getParameter("password");
						boolean status = VerifyAdminLogin.checkLogin(username, password);

						try {
							if (status == true) {
								out.print("<font color='blue'>Welcome    " + username);
								out.println("<br><br><a href='customeradmin.jsp'> Customer Administration </a><br>");
								out.println("<br><a href='ordersadmin.jsp'> Orders Administration </a><br>");

								Connection con = GetCon.getCon();
								PreparedStatement ps = con.prepareStatement("");

							} else {
								out.print("Please check your Username and Password");
								request.setAttribute("aa",
										"Please check your Username and Password");
					%>
					<jsp:forward page="admin.jsp"></jsp:forward>
					<%
						}
						} catch (SQLException e) {
							e.printStackTrace();
						}

					%>
				</table>
				<%
					
				%> <%-- </table>--%> <%@ page import="java.sql.*"%>
				<%@ page import="java.io.*"%> <%@ page
					import="javax.servlet.*"%> <%@ page
					import="com.pharmacy.*"%> <%--</table>--%>

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
