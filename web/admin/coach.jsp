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

        <link href="assets/dashboard/css/style.css" rel="stylesheet" />
        <link href="assets/css/bootstrap.min.css" rel="stylesheet"/>
        <link href="assets/css/Style.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.1.min.js"></script>
        <script type="text/javascript" src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>

        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.13/datatables.min.css"/>
        <script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.13/datatables.min.js"></script>
    <center>
        <%
                          String status;
                          status = request.getParameter("status");
                          if(status.equals("Add")){%>
                              <h2>Add Coach</h2>
                              <%}else if(status.equals("Update")){%>
                                  <h2>Update Doctor</h2>
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
                          <label class="col-md-3 control-label" for="txtIID">ID Doctor</label>
                          <div class="col-md-9">
                              <input type="text" id="txtID" name="txtID" required="required" class="form-control col-md-7 col-xs-12" value="<%=CoachID%>">
                          </div>
                        </div>
                    </fieldset>
                
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
                      <input type="submit" value="Save" name="Btn">
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
    <script src="assets/js/jquery-3.1.1.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script type="text/javascript">
      $(document).ready(function(){
        $('.table').DataTable();
      });
    </script>
    <script type="text/javascript">
        $(function () {
            $('[data-toggle="tooltip"]').tooltip()
        })
    </script>
                    
    </body>
</html>
