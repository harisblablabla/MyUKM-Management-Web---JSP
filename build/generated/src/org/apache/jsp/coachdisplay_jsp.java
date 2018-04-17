package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;
import model.Coach;

public final class coachdisplay_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>Hello World!</h1>\n");
      out.write("        <div class=\"right_col\" role=\"main\">\n");
      out.write("          <div class=\"\">\n");
      out.write("            <div class=\"page-title\">\n");
      out.write("              <div class=\"title_left\">\n");
      out.write("                <h3>Plain Page</h3>\n");
      out.write("              </div>\n");
      out.write("\n");
      out.write("              <div class=\"title_right\">\n");
      out.write("                <div class=\"col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search\">\n");
      out.write("                  <div class=\"input-group\">\n");
      out.write("                    <input type=\"text\" class=\"form-control\" placeholder=\"Search for...\">\n");
      out.write("                    <span class=\"input-group-btn\">\n");
      out.write("                      <button class=\"btn btn-default\" type=\"button\">Go!</button>\n");
      out.write("                    </span>\n");
      out.write("                  </div>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"clearfix\"></div>\n");
      out.write("\n");
      out.write("            <div class=\"row\">             \n");
      out.write("            \n");
      out.write("             <div class=\"col-md-12 col-sm-12 col-xs-12\">\n");
      out.write("                <div class=\"x_panel\">\n");
      out.write("                  <div class=\"x_title\">\n");
      out.write("                    <h2>Fixed Header Example <small>Users</small></h2>\n");
      out.write("                    <ul class=\"nav navbar-right panel_toolbox\">\n");
      out.write("                      <li><a class=\"collapse-link\"><i class=\"fa fa-chevron-up\"></i></a>\n");
      out.write("                      </li>\n");
      out.write("                      <li class=\"dropdown\">\n");
      out.write("                        <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\" role=\"button\" aria-expanded=\"false\"><i class=\"fa fa-wrench\"></i></a>\n");
      out.write("                        <ul class=\"dropdown-menu\" role=\"menu\">\n");
      out.write("                          <li><a href=\"#\">Settings 1</a>\n");
      out.write("                          </li>\n");
      out.write("                          <li><a href=\"#\">Settings 2</a>\n");
      out.write("                          </li>\n");
      out.write("                        </ul>\n");
      out.write("                      </li>\n");
      out.write("                      <li><a class=\"close-link\"><i class=\"fa fa-close\"></i></a>\n");
      out.write("                      </li>\n");
      out.write("                    </ul>\n");
      out.write("                    <div class=\"clearfix\"></div>\n");
      out.write("                  </div>\n");
      out.write("                  <div class=\"x_content\">\n");
      out.write("                    <p class=\"text-muted font-13 m-b-30\">\n");
      out.write("                      ");

                          String ket;
                          ket = request.getParameter("ket");
                          if(ket != null){
                            if(ket.equals("Sukses") && ket != null){
      out.write("\n");
      out.write("                               <div class=\"alert alert-success alert-dismissible fade in\" role=\"alert\">\n");
      out.write("                                  <button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-label=\"Close\"><span aria-hidden=\"true\">×</span>\n");
      out.write("                                  </button>\n");
      out.write("                                   <strong>");
      out.print(ket);
      out.write("</strong> \n");
      out.write("                                </div>\n");
      out.write("                            ");
}else if(ket.equals("Gagal") && ket != null){
      out.write("\n");
      out.write("                              <div class=\"alert alert-danger alert-dismissible fade in\" role=\"alert\">\n");
      out.write("                                  <button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-label=\"Close\"><span aria-hidden=\"true\">×</span>\n");
      out.write("                                  </button>\n");
      out.write("                                   <strong>");
      out.print(ket);
      out.write("</strong> \n");
      out.write("                               </div>\n");
      out.write("                              ");
}
                          }
                      
      out.write("\n");
      out.write("                      Berikut adalah data buku perpustakaan.\n");
      out.write("                    </p>\n");
      out.write("                    <table id=\"datatable-fixed-header\" class=\"table table-striped table-bordered\">\n");
      out.write("                      <thead>\n");
      out.write("                        <tr>\n");
      out.write("                          <th>ID</th>\n");
      out.write("                          <th>Coach Name</th>\n");
      out.write("                          <th>Gender</th>\n");
      out.write("                          <th>Address</th>\n");
      out.write("                          <th>PhoneNumber</th>\n");
      out.write("                        </tr>\n");
      out.write("                      </thead>\n");
      out.write("                      <tbody>\n");
      out.write("                      ");

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


                      
      out.write("                      \n");
      out.write("                                              \n");
      out.write("                      </tbody>\n");
      out.write("                    </table>\n");
      out.write("                  </div>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
