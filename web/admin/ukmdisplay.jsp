<%-- 
    Document   : ukmdisplay
    Created on : Apr 13, 2018, 11:33:03 PM
    Author     : Ryandika
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.UKM"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <table id="datatable-fixed-header" class="table table-striped table-bordered">
                      <thead>
                        <tr>
                          <th>ID</th>
                          <th>UKM Name</th>
                          <th>Description</th>
                          <th>Coach ID</th>
                        </tr>
                      </thead>
                      <tbody>
                      <%
                      try{
                        UKM uk = new UKM();
                        ArrayList data = uk.display();
                        for(int i = 0;i < data.size()-1;i+=4)
                        {
                            //fac_code, fac_name, fac_email, fac_phone
                            int getUKMID = (Integer)data.get(i);
                            String getUKMName = (String)data.get(i+1);
                            String getDescription = (String)data.get(i+2);
                            int getCoachID = (Integer)data.get(i+3);
                            
                            out.println("<tr>");
                            out.println("<td>"+String.valueOf(getUKMID)+"</td>");
                            out.println("<td>"+getUKMName+"</td>");
                            out.println("<td>"+getDescription+"</td>");
                            out.println("<td>"+String.valueOf(getCoachID)+"</td>");
                            out.println("<td>");
                            out.println("<a href='view_book.jsp?id="+getUKMID+"'>View </a>");
                            out.println("<a href='edit_book.jsp?id="+getUKMID+"'>Modify </a>");
                            out.println("<a href='delete_book.jsp?id="+getUKMID+"'>Delete </a>");
                            out.println("</td>");
                            
                            out.println("</tr>");
                        }
                    }
                    catch(Exception ex) {
                        out.println("Data Gagal Ditampilkan" + ex.toString());
                    }


                      %>                      
                                              
                      </tbody>
                    </table>
    </body>
</html>
