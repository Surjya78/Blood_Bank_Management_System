<%@page import="blood.ConnectionProviderClass"%>
<%@page import="java.sql.*"%>
<%@include file="header.html"%>
<html>
<head>
<link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
body {
	background-color: #72c5ea;
}

input[type="text"], input[type="password"], input[type="submit"], select
	{
	border: none;
	background: cyan;
	color: green;
	height: 50px;
	font-size: 16px;
	margin-left: 35%;
	padding: 15px;
	width: 33%;
	border-radius: 25px;
}

#customers {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 55%;
}

#customers td, #customers th {
	border: 1px solid #ddd;
	padding: 8px;
}

#customers tr:nth-child(even) {
	background-color: #35a09d;
}

#customers tr:hover {
	background-color: #ddd;
}

#customers th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: left;
	background-color: #4CAF50;
	color: white;
}
</style>
</head>
<body>
	<div class="container"></div>
	<br>
	<%
	String msg = request.getParameter("msg");
	if ("invalid".equals(msg)) {
	%>
	<center>
		<font color="red" size="5"> Something Went Wrong...</font>
		<%
		}
		%>
		<%
		if ("valid".equals(msg)) {
		%>
		<center>
			<font color="red" size="5"> Successfully updated...</font>
			<%
			}
			%>
			<form action="manageStockAction.jsp" method="post">
				<div class="form-group">
					<center>
						<h2>Select Blood group</h2>
					</center>
					<select name="bloodgroup">
						<option value="A+">A+</option>
						<option value="A-">A-</option>
						<option value="B+">B+</option>
						<option value="B-">B-</option>
						<option value="O+">O+</option>
						<option value="O-">O-</option>
						<option value="AB+">AB+</option>
						<option value="AB-">AB-</option>
					</select>


					<center>
						<h2>Select Increase/Decrease</h2>
					</center>
					<select name="incdec">
						<option value="inc">Increase</option>
						<option value="dec">Decrease</option>
					</select>
					<center>
						<h2>Units</h2>
					</center>
					<input type="text" placeholder="Enter Units" name="units">
					<center>
						<button type="submit" class="button">Save</button>
					</center>

				</div>
			</form>
			<br>
			<center>
				<table id="customers" border="4px">
					<tr>
						<th>Blood Group</th>
						<th>Units</th>
					</tr>
					<tr>
						<%
						try {
							Connection con = ConnectionProviderClass.getCon();
							Statement st = con.createStatement();
							ResultSet rs = st.executeQuery("select *from stock");
							while (rs.next()) {
						%>
						<td><%=rs.getString(1)%>
						<td><%=rs.getString(2)%>
					</tr>
					<%
					}
					} catch (Exception e) {
					System.out.println(e);
					}
					%>
				</table>
			</center>
			<br> <br> <br> <br>
			<h3>
				<center>Created By Surjya:CUTM:2022</center>
			</h3>
</body>
</html>