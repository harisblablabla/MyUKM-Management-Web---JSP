<%-- 
    Document   : schedule
    Created on : Apr 19, 2018, 10:51:15 PM
    Author     : dhadotid
--%>

<%@page import="model.UKM"%>
<%@page import="model.Place"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Schedule"%>
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
                              <h2>Add Schedule</h2>
                              <%}else if(status.equals("Update")){%>
                                  <h2>Update Schedule</h2>
                              <%}
    %>
    </center>
    <br>
    </head>
    <body>
        
       
    <form name="ScheduleForm" method="post" action="../Scheduleserv">
        <div class="container form-horizontal">
            <div class="row">
                <div class="col-md-7 col-md-offset-3">
                <div class="custom">
                    <%
                        String ScheduleID = "", Day = "", StartTime = "", EndTime = "", UKMName = "";
                        Integer UKMPlaceID = 0;
                        Schedule cc = new Schedule();
                        if(status.equals("Update")){
                            ScheduleID = request.getParameter("id");
                            ArrayList xx = new ArrayList();
                            cc.setScheduleID(ScheduleID);
                            xx = cc.getRecord();
                            ScheduleID = (String)xx.get(0);
                            Day = (String)xx.get(1);
                            StartTime = (String)xx.get(2);
                            EndTime = (String)xx.get(3);
                            UKMPlaceID = (Integer)xx.get(4);
                            UKMName = (String)xx.get(5);
                        }else{
                            //idDoctor = mDoc.autoid();
                        }
                        %>
                        
                        
                        
                        <% 
                          if(status != null){
                            if(status.equals("Update") && status != null){%>
                            
                <div class="form-group">
                          <label class="col-md-3 control-label" for="txtIID">Schedule ID</label>
                          <div class="col-md-9">
                              <input readonly type="text" id="txtID" name="txtID" required="required" class="form-control col-md-7 col-xs-12" value="<%=ScheduleID%>">
                          </div>
                        </div>
                            <%
                            }else if(status.equals("Add") && status != null){%>
                            <fieldset disabled>
                            <div class="form-group">
                          <label class="col-md-3 control-label" for="txtIID">Schedule ID</label>
                          <div class="col-md-9">
                              <input type="text" id="txtID" name="txtID" required="required" class="form-control col-md-7 col-xs-12" value="">
                          </div>
                        </div> 
                            </fieldset>
                      <%}
                          }
                      %>
                        
                        
                        
                
<!--                    }else
                        <fieldset disabled>
                        <div class="form-group">
                          <label class="col-md-3 control-label" for="txtIID">Coach ID</label>
                          <div class="col-md-9">
                              <input type="text" id="txtID" name="txtID" required="required" class="form-control col-md-7 col-xs-12" value=">
                          </div>
                        </div>
                    </fieldset>-->
                  
                
<!--                 <div class="form-group">
                  <label class="col-md-3 control-label" for="DDIdSpecialist">ID Specialist</label>
                  <div class="col-md-9">
                  </div>
                </div> -->
                
<!--                <div class="form-group">
                  <label class="col-md-3 control-label" for="Day">Day</label>
                  <div class="col-md-9">
                    <input type="text" id="txtDay" name="txtDay" required="required" class="form-control col-md-7 col-xs-12" value="<%=Day%>">
                  </div>
                </div>-->

                <div class="form-group">
                  <label class="col-md-3 control-label" for="Day">Day</label>
                  <div class="col-md-9">
                     <select name="Day">
                         <option value="Sunday">Sunday</option>
                         <option value="Monday">Monday</option>
                         <option value="Tuesday">Tuesday</option>
                         <option value="Wednesday">Wednesday</option>
                         <option value="Thursday">Thursday</option>
                         <option value="Friday">Friday</option>
                         <option value="Saturday">Saturday</option>
                      </select> 
                  </div>
                </div>
      

                <div class="form-group">
                  <label class="col-md-3 control-label" for="StartTime">Start Time</label>
                  <div class="col-md-9">
                      <input type="text" id="txtStartTime" name="txtStartTime" required="required" class="form-control col-md-7 col-xs-12" value="<%=StartTime%>">
                  </div>
                </div>
                  
                  <div class="form-group">
                  <label class="col-md-3 control-label" for="EndTime">End Time</label>
                  <div class="col-md-9">
                      <input type="text" id="txtEndTime" name="txtEndTime" required="required" class="form-control col-md-7 col-xs-12" value="<%=EndTime%>">
                  </div>
                  </div>
                  
                  
                   <div class="form-group">
                  <label class="col-md-3 control-label" for="txtUKMPlaceID">Place ID</label>
                  <div class="col-md-9">
                     <select name="txtUKMPlaceID">
                         <%
                            Place ms = new Place();
                            ArrayList data = ms.tablePlace();
                            for(int i = 0;i < data.size()-1;i+=2)
                            {
                                Integer ukmplaceid = (Integer)data.get(i);
                                String placename = (String)data.get(i+1);
                                String value = ukmplaceid + " - "  + placename;
                                out.println("<option value='"+ukmplaceid+"'>"+value+"</option>");
                            }
                         %>
                      </select> 
                  </div>
                </div>
<!--                        <div class="form-group">
                  <label class="col-md-3 control-label" for="UKMPlaceID">PlaceID</label>
                  <div class="col-md-9">
                      <input type="text" id="txtUKMPlaceID" name="txtUKMPlaceID" required="required" class="form-control col-md-7 col-xs-12" value="">
                  </div>
                  </div>-->
                  
<!--                  <div class="form-group">
                  <label class="col-md-3 control-label" for="UKMName">UKM Name</label>
                  <div class="col-md-9">
                      <input type="text" id="txtUKMName" name="txtUKMName" required="required" class="form-control col-md-7 col-xs-12" value="">
                  </div>
                  </div>-->

                  <div class="form-group">
                  <label class="col-md-3 control-label" for="txtUKMName">UKM Name</label>
                  <div class="col-md-9">
                     <select name="txtUKMName">
                         <%
                            UKM ukk = new UKM();
                            ArrayList datax = ukk.tableUKM();
                            for(int i = 0;i < datax.size()-1;i+=4)
                            {
                                Integer ukmid = (Integer)datax.get(i);
                                String ukmname = (String)datax.get(i+1);
                                String description = (String)datax.get(i+2);
                                Integer coachid = (Integer)datax.get(i+3);
                                String value = ukmname;
                                out.println("<option value='"+ukmname+"'>"+value+"</option>");
                            }
                         %>
                      </select> 
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
