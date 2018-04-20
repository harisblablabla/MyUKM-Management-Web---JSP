/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Coach;
import model.LoginUser;

/**
 *
 * @author dhadotid
 */
@WebServlet(name = "Studentserv", urlPatterns = {"/Studentserv"})
public class Studentserv extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String status = request.getParameter("Btn");
            String gender = request.getParameter("gender");
            LoginUser cc = new LoginUser();
            if(status.equals("Update")){
                
                cc.setStudentName(request.getParameter("txtName"));
                cc.setGender(gender);
                cc.setAddress(request.getParameter("txtAddress"));
                cc.setPhoneNumber(request.getParameter("txtPhoneNumber"));
                cc.setFaculty(request.getParameter("Faculty"));
                cc.setMajor(request.getParameter("txtMajor"));
                cc.setBatch(request.getParameter("Batch"));
                cc.setUname(request.getParameter("txtUname"));
                cc.setPword(request.getParameter("txtPword"));
                cc.setIsCapt(Integer.parseInt(request.getParameter("txtiscapt")));
                cc.setID(Integer.parseInt(request.getParameter("txtID")));
                int i = cc.doUpdate();
                if(i > 0){
                    response.sendRedirect("admin/studentdisplay.jsp?ket=Sukses"); 
                }else{
                    response.sendRedirect("admin/studentdisplay.jsp?ket=Gagal"); //
                }
            }else if(status.equals("Save")){
                cc.setStudentName(request.getParameter("txtName"));
                cc.setGender(gender);
                cc.setAddress(request.getParameter("txtAddress"));
                cc.setPhoneNumber(request.getParameter("txtPhoneNumber"));
                cc.setFaculty(request.getParameter("Faculty"));
                cc.setMajor(request.getParameter("txtMajor"));
                cc.setBatch(request.getParameter("Batch"));
                cc.setUname(request.getParameter("txtUname"));
                cc.setPword(request.getParameter("txtPword"));
                cc.setIsCapt(Integer.parseInt(request.getParameter("txtiscapt")));
                int i = cc.doInsert();
                if(i > 0){
                    response.sendRedirect("loginadmin.jsp?ket=Sukses");
                }else{
                    response.sendRedirect("loginadmin.jsp?ket=Gagal");
                    
                }   
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
