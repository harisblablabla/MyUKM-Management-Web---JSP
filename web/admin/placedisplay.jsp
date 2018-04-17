<%-- 
    Document   : placedisplay
    Created on : Apr 13, 2018, 11:26:09 PM
    Author     : Ryandika
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.Place"%>
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
                          <th>Place</th>
                        </tr>
                      </thead>
                      <tbody>
                      <%
                      try{
                        Place pl = new Place();
                        ArrayList data = pl.display();
                        for(int i = 0;i < data.size()-1;i+=2)
                        {
                            //fac_code, fac_name, fac_email, fac_phone
                            int getPlaceID = (Integer)data.get(i);
                            String getPlaceName = (String)data.get(i+1);
                            
                            out.println("<tr>");
                            out.println("<td>"+String.valueOf(getPlaceID)+"</td>");
                            out.println("<td>"+getPlaceName+"</td>");
                            out.println("<td>");
                            out.println("<a href='view_book.jsp?id="+getPlaceID+"'>View </a>");
                            out.println("<a href='edit_book.jsp?id="+getPlaceID+"'>Modify </a>");
                            out.println("<a href='delete_book.jsp?id="+getPlaceID+"'>Delete </a>");
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
