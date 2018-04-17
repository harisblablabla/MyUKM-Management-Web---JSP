<%-- 
    Document   : dashboardadmin
    Created on : Apr 16, 2018, 11:29:35 AM
    Author     : Ryandika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <h3>DASHBOARD</h3>
        <hr/>
        <%               
            String user = (String)session.getAttribute("uname");
            if(user != null) {
                out.println("Welcome, " + user);
            }
            else {
                response.sendRedirect("../loginadmin.jsp");
            }
        %>
        | <a href="../SignOut">Sign Out</a>
        <hr/>
</html>
