<%@page import="blood.ConnectionProviderClass"%>
<%@page import="java.sql.*"%>
<%@include file="header.html"%>
<html>
<head>
<style>
#customers {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 95%;
}

#customers td, #customers th {
	border: 1px solid #ddd;
	padding: 8px;
}

#customers tr:nth-child(even) {
	background-color: orange;
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

body {
	background-color: #7fd3d3;
}
</style>
</head>
<body>
	<br>
	<%
	String msg = request.getParameter("msg");
	if ("valid".equals(msg)) {
	%>
	<center>
		<font color="red" size="5">Successfully deleted..</font>
	</center>
	<%
	}
	%>
	<%
	if ("invalid".equals(msg)) {
	%>
	<center>
		<font color="red" size="5">Not deleted..</font>
	</center>
	<%
	}
	%>

	<center>
		<table id="customers" border="4px">
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Father Name</th>
				<th>Mother Name</th>
				<th>Mobile number</th>
				<th>Gender</th>
				<th>Email</th>
				<th>Blood Group</th>
				<th>Address</th>
				<th>Delete</th>
			</tr>
			<tr>
				<%
				try {
					Connection con = ConnectionProviderClass.getCon();
					Statement st = con.createStatement();
					ResultSet rs = st.executeQuery("select * from donor");
					while (rs.next()) {
				%>
				<td><%=rs.getInt(1)%></td>
				<td><%=rs.getString(2)%></td>
				<td><%=rs.getString(3)%></td>
				<td><%=rs.getString(4)%></td>
				<td><%=rs.getString(5)%></td>
				<td><%=rs.getString(6)%></td>
				<td><%=rs.getString(7)%></td>
				<td><%=rs.getString(8)%></td>
				<td><%=rs.getString(9)%></td>
				<td><a href="deleteDonor.jsp?id=<%=rs.getString(1)%>">Delete</a></td>
			</tr>
			<%
			}
			} catch (Exception e) {
			System.out.println(e);
			}
			%>
		</table>
	</center>
	<br>
	<br>
	<br>
	<br>
	<h3>
		<center>Created By Surjya:CUTM:2022</center>
	</h3>
</body>
</body>
</html>