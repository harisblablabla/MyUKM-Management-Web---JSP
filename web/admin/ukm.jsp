<%-- 
    Document   : ukm
    Created on : Apr 19, 2018, 9:52:23 PM
    Author     : dhadotid
--%>

<%@page import="model.Coach"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.UKM"%>
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
        
       
    <form name="CoachForm" method="post" action="../UKMserv">
        <div class="container form-horizontal">
            <div class="row">
                <div class="col-md-7 col-md-offset-3">
                <div class="custom">
                    <%
                        String UKMName = "", Description = "";
                        Integer UKMID = 0, CoachID = 0;
                        UKM cc = new UKM();
                        if(status.equals("Update")){
                            UKMID = Integer.parseInt(request.getParameter("id"));
                            ArrayList xx = new ArrayList();
                            cc.setUKMID(UKMID);
                            xx = cc.getRecord();
                            UKMID = (Integer)xx.get(0);
                            UKMName = (String)xx.get(1);
                            Description = (String)xx.get(2);
                            CoachID = (Integer)xx.get(3);
                        }else{
                            //idDoctor = mDoc.autoid();
                        }
                        %>
                        
                        
                        <fieldset disabled>
                        <div class="form-group">
                          <label class="col-md-3 control-label" for="txtIID">UKM ID</label>
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
                  <label class="col-md-3 control-label" for="UKMName">UKM Name</label>
                  <div class="col-md-9">
                    <input type="text" id="txtName" name="txtName" required="required" class="form-control col-md-7 col-xs-12" value="<%=UKMName%>">
                  </div>
                </div>      

                <div class="form-group">
                  <label class="col-md-3 control-label" for="Description">Description</label>
                  <div class="col-md-9">
                      <input type="text" id="txtPhone" name="txtDesc" required="required" class="form-control col-md-7 col-xs-12" value="<%=Description%>">
                  </div>
                </div>
                  
                  
                  <div class="form-group">
                  <label class="col-md-3 control-label" for="FKCoachID">Coach ID</label>
                  <div class="col-md-9">
                     <select name="FKCoachID">
                         <%
                            Coach ms = new Coach();
                            ArrayList data = ms.tableCoach();
                            for(int i = 0;i < data.size()-1;i+=5)
                            {
                                Integer coachid = (Integer)data.get(i);
                                String coachname = (String)data.get(i+1);
                                String coachgender = (String)data.get(i+2);
                                String coachaddress = (String)data.get(i+3);
                                String coachphonenumber = (String)data.get(i+4);
                                String value = coachid + " - "  + coachname;
                                out.println("<option value='"+coachid+"'>"+value+"</option>");
                            }
                         %>
                      </select> 
                  </div>
                </div>
<!--                  <div class="form-group">
                  <label class="col-md-3 control-label" for="CoachID">Coach ID</label>
                  <div class="col-md-9">
                      <input type="text" id="txtPhone" name="txtCoachID" required="required" class="form-control col-md-7 col-xs-12" value="<%=CoachID%>">
                  </div>
                  </div>-->

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
