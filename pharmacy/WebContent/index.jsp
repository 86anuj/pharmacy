<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Sagar Pharmacy</title>
<link href="style.css" rel="stylesheet" type="text/css">
	<script type="text/javascript">
		function ctck() {
			var sds = document.getElementById("dum");
		}
	</script>
</head>

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
		<%
			if (request.getAttribute("order") != null) {
				out.print("<table>");
				out.print("<div width='200' align='center'>");
				out.print("<font color='blue'>" + request.getAttribute("order"));

				out.print("</div>");
				out.print("<table align='center'>");
			}
		%>
		<tr align="center">
			<td valign="top" width="220px"><img
				src="images/pharmacy_04.jpg" alt="" border="0" /> <br />

			</td>

			</td>
			<td valign="top"><img src="images/pharmacy_05.jpg"
				alt="" border="0" /></td>
			<td valign="top"><img src="images/pharmacy_06.jpg"
				alt="" border="0" /></td>
			<td valign="top"><img src="images/pharmacy_07.jpg"
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
