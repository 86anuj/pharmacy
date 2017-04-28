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
<head>
<SCRIPT LANGUAGE="JavaScript">
	function dil(form) {
		for (var i = 0; i < form.elements.length; i++) {
			if (form.elements[i].value == "") {
				alert("Please fill in all fields")
				document.F1.custid.focus()
				return false
			}
		}

		if (isNaN(document.F1.custid.value)) {
			alert("Customer id must  be  number & can't be null")
			document.F1.custid.value = ""
			document.F1.custid.focus()
			return false
		}

		return true
	}
</SCRIPT>

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

			<form name=F1 onSubmit="return dil(this)"
				action="Deletecustomeroutput.jsp">
				<table cellspacing="5" cellpadding="3">

					<%
						if (request.getAttribute("wrong") != null) {
							out.print("<div>");
							out.print("<font color='blue'>" + request.getAttribute("wrong")
									+ "");

							out.print("</div>");
						}
					%>
					<tr>
						<td>Customer ID:</td>
						<td><input type="text" name="custid" /></td>
					</tr>
					<tr>
						<td></td>
						<td><input type="submit" value="Submit" /> <INPUT TYPE=RESET
							VALUE="Clear"></td>
					</tr>
				</table>
			</form>

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
