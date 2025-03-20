
<%
String username = request.getParameter("username");
String password = request.getParameter("password");
if ("surjya".equals(username) && "2001".equals(password)) {
	response.sendRedirect("home.jsp");
} else {
	response.sendRedirect("adminLogin.jsp?msg=invalid");
}
%>