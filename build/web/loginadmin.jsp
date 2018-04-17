<%-- 
    Document   : loginadmin
    Created on : Apr 16, 2018, 11:24:45 AM
    Author     : Ryandika
--%>

<%@page import="model.LoginAdmin"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <%
            String Username = "";
            String Password = "";            
            try {
                LoginAdmin adm = new LoginAdmin();
                //Arraylist obj2 = new Arraylist();
                Cookie clientCookies[] = request.getCookies();
                if(adm.getUsername().equals(null)){
                    Username = adm.getUsername();
                    Password = adm.getPassword();
                    if(Username.equals("") && !(Password.equals(""))){
                        session = request.getSession(true);
                        session.setAttribute("uname", Username);
                        response.sendRedirect("admin/dashboardadmin.jsp");  
                    }
                }        
            }    
            catch(Exception ex) {
                
            }
        %>
        <h1>Authentication Form</h1>
        <hr/>
        <form name="frmLogin" method="POST" action="Login">
        <label>Username</label> <br/>
        <input type="text" id="user" name="user" required> <br/>
        <label>Password</label> <br/>
        <input type="password" id="pass" name="pass" required/> <br/>
        <button id="send" type="submit"> Login </button>
        <input type="checkbox" id="remember" name="remember" value="ok"/> Remember Me
        </form>
        <br/>
        <%
	String result = request.getParameter("msg");
	if(result != null) {
            out.println("Invalid username or password");
	}
        %>
        <br/><br/>
    </body>
</html>
