


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
				alert("Please fill in all Fields")
				document.F1.productname.focus()
				return false
			}
		}
		if (!isNaN(document.F1.productname.value)) {
			alert("Product name  must  be  char's & can't be null")
			document.F1.productname.value = ""
			document.F1.productname.focus()
			return false
		}

		if (isNaN(document.F1.orderq.value)) {
			alert("Order quanty field must  be  number & can't be null")
			document.F1.orderq.value = ""
			document.F1.orderq.focus()
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
				<li><a href="distributer.jsp">DISTRIBUTER </a></li>
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
					action="Updateorderprocessoutput.jsp">
					<table cellspacing="5" cellpadding="3">
						<%
							String ph2 = request.getParameter("custid");
							System.out.println(ph2);
							double custid = Double.parseDouble(ph2);

							Connection con = GetCon.getCon();

							try {
								PreparedStatement ps = con
										.prepareStatement("Select ID,PRODTYPE,PRODUCTNAME,MANUFACTURER,ORDERQ,RATE,AMOUNT,STATUS from ORDERS where id="
												+ custid);

								ResultSet rs = ps.executeQuery();

								if (rs.next()) {
						%>
						<tr>
							<td>Order ID :</td>
							<td><input type="text" name="orderid"
								value=<%=rs.getString(1)%> readonly></td>
						</tr>
						<tr>
							<td>Product Type :</td>
							<td><input type="text" name="producttype"
								value=<%=rs.getString(2)%> readonly></td>
						</tr>
						<tr>
							<td>Product Name :</td>
							<td><input type="text" name="productname"
								value=<%=rs.getString(3)%> readonly></td>
						</tr>
						<tr>
							<td>Manufacturer :</td>
							<td><input type="text" name="manufacturer"
								value=<%=rs.getString(4)%> readonly></td>
						</tr>
						<tr>
							<td>Quantity :</td>
							<td><input type="text" name="orderq"
								value=<%=rs.getString(5)%>></td>
						</tr>
						<%
							String rate, amount;
									if (rs.getString(6) == null)
										rate = "";
									else
										rate = rs.getString(6);
									if (rs.getString(7) == null)
										amount = "";
									else
										amount = rs.getString(7);
						%>
						<tr>
							<td>Rate :</td>
							<td><input type="text" name="rate" value=<%=rate%>></td>
						</tr>
						<tr>
							<td>Amount:</td>
							<td><input type="text" name="amount" value=<%=amount%>></td>
						</tr>

						<TR>
							<TD>Status :</TD>
							<TD><SELECT NAME="status">
									<option selected value=<%=rs.getString(8)%>>
										<%=rs.getString(8)%>
									<option value=Placed>Placed
									<option value=Received>Received
									<option value=InProgress>InProgress
									<option value=Dispatched>Dispatched
									<option value=Completed>Completed
							</SELECT></TD>
						<tr>
							<td></td>
							<td><input type="submit" value="Update" /> <INPUT TYPE=RESET
								VALUE="Clear"></td>
						</tr>
						<%
							} else {
									out.println("Order does not exist");
									request.setAttribute("wrong", "Order does not exist");
						%>
						<jsp:forward page="Updateorders.jsp"></jsp:forward>
						<%
							}
							} catch (SQLException e) {
								e.printStackTrace();
							}

							session.setAttribute("custid", custid);
						%>
					</table>
				</form> <%@ page import="java.sql.*"%> <%@ page
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

		<div id="footer_copyright">
			<script type="text/javascript">
				document.onload = ctck();
			</script>
		</div>
</body>
</html>
