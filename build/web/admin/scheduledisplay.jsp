<%-- 
    Document   : scheduledisplay
    Created on : Apr 14, 2018, 12:12:20 AM
    Author     : Ryandika
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.Schedule"%>
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
                          <th>Day</th>
                          <th>Start</th>
                          <th>End</th>
                          <th>Place ID</th>
                          <th>UKM Name</th>
                        </tr>
                      </thead>
                      <tbody>
                      <%
                      try{
                        Schedule sch = new Schedule();
                        ArrayList data = sch.display();
                        for(int i = 0;i < data.size()-1;i+=6)
                        {
                            //fac_code, fac_name, fac_email, fac_phone
                            String getScheduleID = (String)data.get(i);
                            String getDay = (String)data.get(i+1);
                            String getStartTime = (String)data.get(i+2);
                            String getEndTime = (String)data.get(i+3);
                            int getPlaceID = (Integer)data.get(i+4);
                            String getUKMName = (String)data.get(i+5);
                            
                            out.println("<tr>");
                            out.println("<td>"+getScheduleID+"</td>");
                            out.println("<td>"+getDay+"</td>");
                            out.println("<td>"+getStartTime+"</td>");
                            out.println("<td>"+getEndTime+"</td>");
                            out.println("<td>"+String.valueOf(getPlaceID)+"</td>");
                            out.println("<td>"+getUKMName+"</td>");
                            out.println("<td>");
                            out.println("<a href='view_book.jsp?id="+getScheduleID+"'>View </a>");
                            out.println("<a href='edit_book.jsp?id="+getScheduleID+"'>Modify </a>");
                            out.println("<a href='delete_book.jsp?id="+getScheduleID+"'>Delete </a>");
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
