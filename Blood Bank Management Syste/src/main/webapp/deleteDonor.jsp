<%@page import="blood.ConnectionProviderClass"%>
<%@page import="java.sql.*"%>
<%
String id = request.getParameter("id");
try {
	Connection con = ConnectionProviderClass.getCon();
	Statement st = con.createStatement();
	st.executeUpdate("delete from donor where id='" + id + "'");
	response.sendRedirect("editDeleteList.jsp");
} catch (Exception e) {
	response.sendRedirect("editDeleteList.jsp");
}
%>