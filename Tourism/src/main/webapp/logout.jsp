<%
    session.invalidate();
    response.sendRedirect("login.html"); // Redirect to login page after logout
%>
