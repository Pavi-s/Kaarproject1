/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import POJO.Dbcon;
import POJO.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Jai
 */
public class signupdo extends HttpServlet {

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
            RequestDispatcher rd=request.getRequestDispatcher("signup.jsp");
            User u=new User();
            u.setName(request.getParameter("name"));
            u.setGender(request.getParameter("gender"));
            u.setEmail(request.getParameter("email").toString());
            u.setMobile(request.getParameter("mobile"));
            u.setQual(request.getParameter("qual"));
            u.setUid(request.getParameter("lid"));
            String p=request.getParameter("Password");
            String cp=request.getParameter("conformpassword");
            Dbcon d=new Dbcon();
            d.createConnection();
           if(p.equals(cp))
           {
            u.setPwd(request.getParameter("Password"));
            System.out.println("before method");
            int stat= d.insertdb(u);
            System.out.println("after method");
            if(stat>0)
            {
                String err="Registered Successfully...";
                request.setAttribute("err", err);
                rd.forward(request, response);
            }
            else
            {
                String err="Couldnt register to the portal.. Please Try again";
                request.setAttribute("err", err);
                rd.forward(request, response);
                
            }
           }
           else
           {
               String err="Password must match confirm password..";
               request.setAttribute("err", err);
                rd.forward(request, response);
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
