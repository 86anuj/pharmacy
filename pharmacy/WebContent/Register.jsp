<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Sagar Mali</title>
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
				alert("Please fill in all Fields")
				document.F1.username.focus()
				return false
			}
		}
		if (!isNaN(document.F1.username.value)) {
			alert("User Name  must  be  char's & can't be null")
			document.F1.username.value = ""
			document.F1.username.focus()
			return false
		}

		if (document.F1.password.value != document.F1.repassword.value) {
			alert("Passwords not matching!");
			document.F1.repassword.value = ""
			document.F1.repassword.focus()
			return false
		}

		if (!isNaN(document.F1.disname.value)) {
			alert("Distributor name  must  be  char's & can't be null")
			document.F1.disname.value = ""
			document.F1.disname.focus()
			return false
		}

		if (!isNaN(document.F1.adderess.value)) {
			alert("Adderess field  must  be  char's & can't be null")
			document.F1.adderess.value = ""
			document.F1.adderess.focus()
			return false
		}
		if (!isNaN(document.F1.cityname.value)) {
			alert("City name field  must  be  char's & can't be null")
			document.F1.cityname.value = ""
			document.F1.cityname.focus()
			return false
		}

		if (!isNaN(document.F1.statename.value)) {
			alert("Statename field  must  be  char's & can't be null")
			document.F1.statename.value = ""
			document.F1.statename.focus()
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

			<form name=F1 onSubmit="return dil(this)" action="CreateServlet">
				<table cellspacing="5" cellpadding="3">

					<tr>
						<td>NAME:</td>
						<td><input type="text" name="username" /></td>
					</tr>
					<tr>
						<td>LOGIN ID:</td>
						<td><input type="text" name="loginid" /></td>
					</tr>
					<tr>
						<td>PASSWORD:</td>
						<td><input type="password" name="password" /></td>
					</tr>
					<tr>
						<td>RE-PASSWORD:</td>
						<td><input type="password" name="repassword" /></td>
					</tr>

					<!-- Gender:<br/><br/>
					Male<input type="radio" name="gender" value="male"> Female<input type="radio" name="gender" value="female"/><br/><br/> -->
					<tr>
						<td>ADDRESS:</td>
						<td><input type="text" name="adderess" /></td>
					</tr>
					<tr>
						<td>CITY :</td>
						<td><input type="text" name="cityname" /></td>
					</tr>
					<tr>
						<td>STATE :</td>
						<td><input type="text" name="statename" /></td>
					</tr>

					<TR>
						<TD>COUNTRY :</TD>
						<TD><SELECT NAME="country">
								<option value=America>America
								<option value=Bangladesh>Bangladesh
								<option value=China>China
								<option value=Canada>Canada
								<option value=Germany>Germany
								<option value=Holland>Holland
								<option value=India>India
								<option value=Malasia>Malasia
								<option value=Polland>Polland
								<option value=Russia>Russia
								<option value=England>England
						</SELECT></TD>

					</TR>
					<tr>
						<td>PHONE:</td>
						<td><input type="text" name="phone" /></td>
					</tr>
					<tr>
						<td>EMAIL:</td>
						<td><input type="text" name="email" /></td>
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
