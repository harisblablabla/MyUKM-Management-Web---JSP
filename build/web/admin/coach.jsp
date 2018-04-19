<%-- 
    Document   : coach
    Created on : Apr 13, 2018, 4:23:17 PM
    Author     : Ryandika
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.Coach"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Coach</title>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- Bootstrap -->
    <link href="../assets/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../assets/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="../assets/vendors/nprogress/nprogress.css" rel="stylesheet">

    <!-- Datatables -->
    <link href="../assets/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
    <link href="../assets/vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
    <link href="../assets/vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
    <link href="../assets/vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet">
    <link href="../assets/vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet">
    <center>
        <%
                          String status;
                          status = request.getParameter("status");
                          if(status.equals("Add")){%>
                              <h2>Add Coach</h2>
                              <%}else if(status.equals("Update")){%>
                                  <h2>Update Coach</h2>
                              <%}
    %>
    </center>
    <br>
    </head>
    <body>
        
       
    <form name="CoachForm" method="post" action="../Coachserv">
        <div class="container form-horizontal">
            <div class="row">
                <div class="col-md-7 col-md-offset-3">
                <div class="custom">
                    <%
                        String CoachName = "", CoachGender = "", CoachAddress = "", CoachPhoneNumber = "";
                        Integer CoachID = 0;
                        Coach cc = new Coach();
                        if(status.equals("Update")){
                            CoachID = Integer.parseInt(request.getParameter("id"));
                            ArrayList xx = new ArrayList();
                            cc.setCoachID(CoachID);
                            xx = cc.getRecord();
                            CoachID = (Integer)xx.get(0);
                            CoachName = (String)xx.get(1);
                            CoachGender = (String)xx.get(2);
                            CoachAddress = (String)xx.get(3);
                            CoachPhoneNumber = (String)xx.get(4);
                        }else{
                            //idDoctor = mDoc.autoid();
                        }
                        %>
                        
                        <fieldset disabled>
                        <div class="form-group">
                          <label class="col-md-3 control-label" for="txtIID">Coach ID</label>
                          <div class="col-md-9">
                              <input type="text" id="txtID" name="txtID" required="required" class="form-control col-md-7 col-xs-12" value="">
                          </div>
                        </div>
                        
                    </fieldset>
<!--                    }else
                        <fieldset disabled>
                        <div class="form-group">
                          <label class="col-md-3 control-label" for="txtIID">Coach ID</label>
                          <div class="col-md-9">
                              <input type="text" id="txtID" name="txtID" required="required" class="form-control col-md-7 col-xs-12" value="<%=CoachID%>">
                          </div>
                        </div>
                    </fieldset>-->
                  
                
<!--                 <div class="form-group">
                  <label class="col-md-3 control-label" for="DDIdSpecialist">ID Specialist</label>
                  <div class="col-md-9">
                  </div>
                </div> -->
                
                <div class="form-group">
                  <label class="col-md-3 control-label" for="CoachName">Coach Name</label>
                  <div class="col-md-9">
                    <input type="text" id="txtName" name="txtName" required="required" class="form-control col-md-7 col-xs-12" value="<%=CoachName%>">
                  </div>
                </div>

                <div class="form-group">
                  <label class="col-md-3 control-label" for="gender">Gender</label>
                  <div class="col-md-9">
                    <input type="radio" name="gender" value="male"> Male
                    <input type="radio" name="gender" value="female"> Female
                  </div>
                </div>
      

                <div class="form-group">
                  <label class="col-md-3 control-label" for="CoachAddress">Address</label>
                  <div class="col-md-9">
                      <input type="text" id="txtPhone" name="txtAddress" required="required" class="form-control col-md-7 col-xs-12" value="<%=CoachAddress%>">
                  </div>
                </div>
                  
                  <div class="form-group">
                  <label class="col-md-3 control-label" for="CoachPhonenumber">Phone Number</label>
                  <div class="col-md-9">
                      <input type="text" id="txtPhone" name="txtPhoneNumber" required="required" class="form-control col-md-7 col-xs-12" value="<%=CoachPhoneNumber%>">
                  </div>
                  </div>

                              <%
                          if(status != null){
                            if(status.equals("Add") && status != null){%>
                <div class="form-group">
                  <div class="col-md-12 text-right">
                      <input type="submit" value="Save" name="Btn" class="btn btn-default">
                  </div>
                </div><%
                            }else if(status.equals("Update") && status != null){%>
                <div class="form-group">
                  <div class="col-md-12 text-right">
                      <input type="submit" value="Update" name="Btn">
                  </div>
                </div> 
                      <%}
                          }
                      %>
                
                </div>
                </div>
            </div>
        </div>
    </form>
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
