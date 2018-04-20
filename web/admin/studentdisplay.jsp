<%-- 
    Document   : studentdisplay
    Created on : Apr 20, 2018, 4:15:28 AM
    Author     : dhadotid
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.LoginUser"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- Bootstrap -->
    <link href="../assets/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../assets/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="../assets/vendors/nprogress/nprogress.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="../assets/build/css/custom.min.css" rel="stylesheet">
    
    <!-- Datatables -->
    <link href="../assets/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
    <link href="../assets/vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
    <link href="../assets/vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
    <link href="../assets/vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet">
    <link href="../assets/vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
            <div class="row">             
            
             <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Student</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
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
                      
                     
                    </p>
                    <table id="datatable-fixed-header" class="table table-striped table-bordered">
                      <thead>
                        <tr>
                          <th>ID</th>
                          <th>Student Name</th>
                          <th>Gender</th>
                          <th>Phone Number</th>
                          <th>Faculty</th>
                          <th>Major</th>
                          <th>Batch</th>
                          <th>Is Admin</th>
                          <th>Action</th>
                        </tr>
                      </thead>
                      <tbody>
                      <%
                      try{
                        LoginUser bk = new LoginUser();
                        ArrayList data = bk.display();
                        for(int i = 0;i < data.size()-1;i+=8)
                        {
                            //fac_code, fac_name, fac_email, fac_phone
                            int getID = (Integer)data.get(i);
                            String getStudentName = (String)data.get(i+1);
                            String getGender = (String)data.get(i+2);
                            String getPhoneNumber = (String)data.get(i+3);
                            String getFaculty = (String)data.get(i+4);
                            String getMajor = (String)data.get(i+5);
                            String getBatch = (String)data.get(i+6);
                            int getIsCapt = (Integer)data.get(i+7);
                            
                            out.println("<tr>");
                            out.println("<td>"+String.valueOf(getID)+"</td>");
                            out.println("<td>"+getStudentName+"</td>");
                            out.println("<td>"+getGender+"</td>");
                            
                            out.println("<td>"+getPhoneNumber+"</td>");
                            out.println("<td>"+getFaculty+"</td>");
                            out.println("<td>"+getMajor+"</td>");
                            out.println("<td>"+getBatch+"</td>");
                            out.println("<td>"+String.valueOf(getIsCapt)+"</td>");
                            out.println("<td>");
                           
                            out.println("<a role='button' class='btn btn-info' href='../studentregister.jsp?status=Update&id="+getID+"' >Modify </a>");
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
<!-- jQuery -->
    <script src="../assets/vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="../assets/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="../assets/vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="../assets/vendors/nprogress/nprogress.js"></script>
    
    <!-- Datatables -->
    <script src="../assets/vendors/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="../assets/vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
    <script src="../assets/vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
    <script src="../assets/vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
    <script src="../assets/vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
    <script src="../assets/vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
    <script src="../assets/vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
    <script src="../assets/vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
    <script src="../assets/vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
    <script src="../assets/vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
    <script src="../assets/vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
    <script src="../assets/vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
    <script src="../assets/vendors/jszip/dist/jszip.min.js"></script>
    <script src="../assets/vendors/pdfmake/build/pdfmake.min.js"></script>
    <script src="../assets/vendors/pdfmake/build/vfs_fonts.js"></script>
    <!-- Custom Theme Scripts -->
    <script src="../assets/build/js/custom.min.js"></script>
    </body>
</html>
