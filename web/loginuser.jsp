<%-- 
    Document   : loginuser
    Created on : Apr 23, 2018, 1:44:27 AM
    Author     : Haris
--%>

<%@page import="model.LoginUser"%>
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
            String Uname = "";
            String Pword = "";            
            try {
                LoginUser ss = new LoginUser();
                //Arraylist obj2 = new Arraylist();
                Cookie clientCookies[] = request.getCookies();
                if(ss.getUname().equals(null)){
                    Uname = ss.getUname();
                    Pword = ss.getPword();
                    if(Uname.equals("") && !(Pword.equals(""))){
                        session = request.getSession(true);
                        session.setAttribute("uname", Uname);
                        response.sendRedirect("dashboardstudent.jsp");  
                    }
                }        
            }    
            catch(Exception ex) {
                
            }
        %>
        
        <form name="frmLoginuser" action="LoginforUser" method="post">
        <label>Username</label> <br/>
        <input type="text" id="user" name="user" required> <br/>
        <label>Password</label> <br/>
        <input type="password" id="pass" name="pass" required/> <br/>
        <button id="send" type="submit"> Login </button>
<!--        <input type="checkbox" id="remember" name="remember" value="ok"/> Remember Me-->
        </form>
        <br/>
        <%
	String result = request.getParameter("msg");
	if(result != null) {
            out.println("Invalid username or passwordnye");
	}
        %>
        <br/><br/>
    </body>
</html>
