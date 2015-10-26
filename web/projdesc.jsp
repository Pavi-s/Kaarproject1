<%-- 
    Document   : projdesc
    Created on : 26 Oct, 2015, 1:34:22 PM
    Author     : Jai
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="POJO.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PROJECT DESCRIPTION</title>
        <link rel="stylesheet" type="text/css" href="kaar.css"/>
    </head>
    <body background="Projects.jpg">
         <div id="title"> 
    <marquee direction="right" behaviour="scroll"> <h1> PROJECTS PORTAL </h1> </marquee>
        </div>
        <div id="pageinfo">
        <h3 align="center"> PROJECT DESCRIPTION </h3>
        </div> 
        <% HttpSession s=request.getSession(false); %>
        <div align="left">
            <p> Welcome <%= s.getAttribute("name")%> </p> 
        </div>
            <div align="right">
        <a href="logout.jsp"> LOGOUT </a>
        </div>
    <center>
        <table>
            <form name="report" action="filedo">
        <% Dbcon d=new Dbcon();
            d.createConnection();
            Project p = new Project();
            String where = " pname='"+request.getParameter("pname")+"'";
            ResultSet rs = d.selectdb("*", "Project", where);
            while(rs.next())
            { %>
            <tr>
                <td> 
                    PROJECT NAME:
                </td>
                <td>
                    <%= rs.getString("pname") %>
                </td>
                
            </tr>
            <tr>
                <td> 
                    PROJECT DESC:
                </td>
                <td>
                    <%= rs.getString("description") %>
                </td>
            </tr>
            <tr>
                <td> 
                    FROM DATE:
                </td>
                <td>
                    <%= rs.getString("datefrom") %>
                </td>
                
            </tr>
            <tr>
                <td> 
                    TO DATE:
                </td>
                <td>
                    <%= rs.getString("dateto") %>
                </td>
                
            </tr>
            <tr>
                <td> 
                    CLIENT:
                </td>
                <td>
                    <%= rs.getString("company") %>
                </td>
                
            </tr>
            <tr>
                <td> 
                    ROLE:
                </td>
                <td>
                    <%= rs.getString("role") %>
                </td>
                
            </tr>
            <tr>
                <td> 
                    TECHNOLOGIES:
                </td>
                <td>
                    <%= rs.getString("technologies") %>
                </td>
            </tr>
            <tr>
                
            </tr>
            <% } %>
            <tr>
                <td>
                    <input type="submit" value="GENERATE"/>
                </td>
            </tr>
        </form>
        </table>
    </center>
                <div>
        <nav>
            <a href="projadd.jsp"> ADD A NEW PROJECT</a> &nbsp;
            <a href="deleteproj.jsp"> DELETE A PROJECT </a> &nbsp;
            <a href="updateproj.jsp"> UPDATE A PROJECT</a> &nbsp;
        </nav>
        </div>
    </body>
</html>
