/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import POJO.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Jai
 */
public class Logindo extends HttpServlet {

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
            //System.out.println("before request");
            String uid=request.getParameter("username");
            String pwd=request.getParameter("pwd");
            //System.out.println("after request");
            RequestDispatcher rd;
            HttpSession sess=request.getSession(true);
            StringBuilder st=new StringBuilder();
            st.append(" cid='");
            st.append(uid);
            st.append("'");
            String p1;
            Dbcon d=new Dbcon();
            d.createConnection();
            ResultSet rs=d.selectdb("cpwd","Customer",st.toString());
            try
            {
                System.out.println("before while");
                while(rs.next())
                {
                    System.out.println("before rs");
                    p1=rs.getString("cpwd");
                    System.out.println("after rs");
                    if(p1.equals(pwd))
                    {   
                        sess.setAttribute("name",uid);
                        rd=request.getRequestDispatcher("home.jsp");
                        rd.forward(request, response);
                    }
                      else
                    {
                        rd=request.getRequestDispatcher("Login.jsp");
                        String err="Login Failed !!!!";
                        request.setAttribute("err", err);
                        rd.forward(request, response);
                    }
                }
                rd=request.getRequestDispatcher("Login.jsp");
                        String err="User does not exist..Please Signup !!!!";
                        request.setAttribute("err", err);
                        rd.forward(request, response);
            }
            catch(SQLException e)
            {
                e.printStackTrace();
                System.out.println("in servlet");
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
