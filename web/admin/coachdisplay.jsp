<%-- 
    Document   : coachdisplay
    Created on : Apr 13, 2018, 5:42:20 PM
    Author     : Ryandika
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.Coach"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Plain Page</h3>
              </div>

              <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                  <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search for...">
                    <span class="input-group-btn">
                      <button class="btn btn-default" type="button">Go!</button>
                    </span>
                  </div>
                </div>
              </div>
            </div>

            <div class="clearfix"></div>

            <div class="row">             
            
             <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Fixed Header Example <small>Users</small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        <ul class="dropdown-menu" role="menu">
                          <li><a href="#">Settings 1</a>
                          </li>
                          <li><a href="#">Settings 2</a>
                          </li>
                        </ul>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <p class="text-muted font-13 m-b-30">
                      <%
                          String ket;
                          ket = request.getParameter("ket");
                          if(ket != null){
                            if(ket.equals("Sukses") && ket != null){%>
                               <div class="alert alert-success alert-dismissible fade in" role="alert">
                                  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span>
                                  </button>
                                   <strong><%=ket%></strong> 
                                </div>
                            <%}else if(ket.equals("Gagal") && ket != null){%>
                              <div class="alert alert-danger alert-dismissible fade in" role="alert">
                                  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span>
                                  </button>
                                   <strong><%=ket%></strong> 
                               </div>
                              <%}
                          }
                      %>
                      Berikut adalah data buku perpustakaan.
                    </p>
                    <table id="datatable-fixed-header" class="table table-striped table-bordered">
                      <thead>
                        <tr>
                          <th>ID</th>
                          <th>Coach Name</th>
                          <th>Gender</th>
                          <th>Address</th>
                          <th>PhoneNumber</th>
                        </tr>
                      </thead>
                      <tbody>
                      <%
                      try{
                        Coach bk = new Coach();
                        ArrayList data = bk.display();
                        for(int i = 0;i < data.size()-1;i+=5)
                        {
                            //fac_code, fac_name, fac_email, fac_phone
                            int getCoachID = (Integer)data.get(i);
                            String getCoachName = (String)data.get(i+1);
                            String getCoachGender = (String)data.get(i+2);
                            String getCoachAddress = (String)data.get(i+3);
                            String getCoachPhoneNumber = (String)data.get(i+4);
                            
                            out.println("<tr>");
                            out.println("<td>"+String.valueOf(getCoachID)+"</td>");
                            out.println("<td>"+getCoachName+"</td>");
                            out.println("<td>"+getCoachGender+"</td>");
                            out.println("<td>"+getCoachAddress+"</td>");
                            out.println("<td>"+getCoachPhoneNumber+"</td>");
                            out.println("<td>");
                            out.println("<a href='view_book.jsp?id="+getCoachID+"'>View </a>");
                            out.println("<a href='edit_book.jsp?id="+getCoachID+"'>Modify </a>");
                            out.println("<a href='delete_book.jsp?id="+getCoachID+"'>Delete </a>");
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
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
    </body>
</html>
