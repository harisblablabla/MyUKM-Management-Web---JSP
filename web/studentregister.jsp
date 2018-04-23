<%-- 
    Document   : studentregister
    Created on : Apr 20, 2018, 2:58:00 AM
    Author     : dhadotid
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.LoginUser"%>
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
                              <h2>Add Data</h2>
                              <%}else if(status.equals("Update")){%>
                                  <h2>Update Student</h2>
                              <%}
    %>
    </center>
    <br>
    </head>
    <body>
        
       
    <form name="StudentForm" method="post" action="Studentserv">
        <div class="container form-horizontal">
            <div class="row">
                <div class="col-md-7 col-md-offset-3">
                <div class="custom">
                    <%
                        String StudentName = "", Gender = "", Address = "", PhoneNumber = "", Faculty = "", Major = "", Batch = "", Uname = "", Pword = "";
                        Integer ID = 0;
                        LoginUser cc = new LoginUser();
                        if(status.equals("Update")){
                            ID = Integer.parseInt(request.getParameter("id"));
                            ArrayList xx = new ArrayList();
                            cc.setID(ID);
                            xx = cc.getRecordStudent();
                            ID = (Integer)xx.get(0);
                            StudentName = (String)xx.get(1);
                            Gender = (String)xx.get(2);
                            Address = (String)xx.get(3);
                            PhoneNumber = (String)xx.get(4);
                            Faculty = (String)xx.get(5);
                            Major = (String)xx.get(6);
                            Batch = (String)xx.get(7);
                            Uname = (String)xx.get(8);
                            Pword = (String)xx.get(9);
                            //IsCapt = (Integer)xx.get(10);
                        }else{
                            //idDoctor = mDoc.autoid();
                        }
                        %>
                        
                        
                        
                        <% 
                          if(status != null){
                            if(status.equals("Update") && status != null){%>
                            
                <div class="form-group">
                          <label class="col-md-3 control-label" for="txtIID"> ID</label>
                          <div class="col-md-9">
                              <input readonly type="text" id="txtID" name="txtID" required="required" class="form-control col-md-7 col-xs-12" value="<%=ID%>">
                          </div>
                        </div>
                            <%
                            }else if(status.equals("Add") && status != null){%>
                            <fieldset disabled>
                            <div class="form-group">
                          <label class="col-md-3 control-label" for="txtIID">ID</label>
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
                              <input type="text" id="txtID" name="txtID" required="required" class="form-control col-md-7 col-xs-12" value="
                          </div>
                        </div>
                    </fieldset>-->
                  
                
<!--                 <div class="form-group">
                  <label class="col-md-3 control-label" for="DDIdSpecialist">ID Specialist</label>
                  <div class="col-md-9">
                  </div>
                </div> -->
                
                <div class="form-group">
                  <label class="col-md-3 control-label" for="StudentName">Student Name</label>
                  <div class="col-md-9">
                    <input type="text" id="txtName" name="txtName" required="required" class="form-control col-md-7 col-xs-12" value="<%=StudentName%>">
                  </div>
                </div>

                <div class="form-group">
                  <label class="col-md-3 control-label" for="gender">Gender</label>
                  <div class="col-md-9">
                    <input type="radio" name="gender" value="Male"> Male
                    <input type="radio" name="gender" value="Female"> Female
                  </div>
                </div>
      

                <div class="form-group">
                  <label class="col-md-3 control-label" for="Address">Address</label>
                  <div class="col-md-9">
                      <input type="text" id="txtAddress" name="txtAddress" required="required" class="form-control col-md-7 col-xs-12" value="<%=Address%>">
                  </div>
                </div>
                  
                  <div class="form-group">
                  <label class="col-md-3 control-label" for="Phonenumber">Phone Number</label>
                  <div class="col-md-9">
                      <input type="text" id="txtPhoneNumber" name="txtPhoneNumber" required="required" class="form-control col-md-7 col-xs-12" value="<%=PhoneNumber%>">
                  </div>
                  </div>
                  
                    <div class="form-group">
                  <label class="col-md-3 control-label" for="Faculty">Faculty</label>
                  <div class="col-md-9">
                     <select name="Faculty">
                         <option value="Engineering">Engineering</option>
                         <option value="Law">Law</option>
                         <option value="Economic and Business">Economic and Business</option>
                         <option value="Science and Mathematic">Science and Mathematic</option>
                         <option value="Computer Science">Computer Science</option>
                         <option value="Humanities">Humanities</option>
                         <option value="Social and Political Science">Social and Political Science</option>
                         <option value="Psychology">Psychology</option>
                         <option value="Vocation Program">Vocation Program</option>
                         <option value="Medical">Medical</option>
                      </select> 
                  </div>
                </div>
                  
                                     <div class="form-group">
                  <label class="col-md-3 control-label" for="Major">Major</label>
                  <div class="col-md-9">
                      <input type="text" id="txtMajor" name="txtMajor" required="required" class="form-control col-md-7 col-xs-12" value="<%=Major%>">
                  </div>
                  </div>
                  
                                     <div class="form-group">
                  <label class="col-md-3 control-label" for="Batch">Batch</label>
                  <div class="col-md-9">
                     <select name="Batch">
                         <option value="2014">2014</option>
                         <option value="2015">2015</option>
                         <option value="2016">2016</option>
                         <option value="2017">2017</option>
                      </select> 
                  </div>
                </div>
                  
                                     <div class="form-group">
                  <label class="col-md-3 control-label" for="Uname">Username</label>
                  <div class="col-md-9">
                      <input type="text" id="txtUname" name="txtUname" required="required" class="form-control col-md-7 col-xs-12" value="<%=Uname%>">
                  </div>
                  </div>
                  
                                     <div class="form-group">
                  <label class="col-md-3 control-label" for="Pword">Password</label>
                  <div class="col-md-9">
                      <input type="text" id="txtPword" name="txtPword" required="required" class="form-control col-md-7 col-xs-12" value="<%=Pword%>">
                  </div>
                  </div>
                  
                  
<!--                                     <div class="form-group">
                  <label class="col-md-3 control-label" for="IsCapt">Is Capt</label>
                  <div class="col-md-9">
                      <input readonly type="text" id="txtiscapt" name="txtiscapt" required="required" class="form-control col-md-7 col-xs-12" value="<%//=IsCapt%>">
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
