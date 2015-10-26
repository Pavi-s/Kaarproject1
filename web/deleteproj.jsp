<%-- 
    Document   : deleteproj
    Created on : 25 Oct, 2015, 8:55:00 PM
    Author     : Jai
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="POJO.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DELETE PROJECT</title>
        <link rel="stylesheet" type="text/css" href="kaar.css"/>
    </head>
    <body background="Projects.jpg">
        <div id="title">
    <marquee direction="right" behaviour="scroll"> <h1> PROJECTS PORTAL </h1> </marquee>
        </div>
         <div id="pageinfo">
        <h3 align="center"> REMOVE A PROJECT FROM US </h3>
        </div>
        <% HttpSession s=request.getSession(false); %>
        <div align="left">
            <p> Welcome <%= s.getAttribute("name")%> </p> 
        </div>
            <div align="right">
        <a href="logout.jsp"> LOGOUT </a>
        </div>
    <center>
        
        <form name="delproj" method="post" action="delprojdo">
        <table>
            <tr>
                <td>
                    <p>
                        Click on a project to remove...
                    </p>
                </td>
            </tr>
            <tr>
                <td>
                    <select name="proj">
                       <% 
                          Dbcon d=new Dbcon();
                          d.createConnection();
                          ResultSet rs=d.selectdb("pname","Project","null");
                          while(rs.next())
                          {
                       %>
                           <option> <%= rs.getString("pname")%> </option>
                       <% } %>
                    </select>
                    
                </td>
            </tr>
            <tr>
                
            </tr>
            <tr>
                <td>
                    <p>OR TO CHANGE THE PROJECT INFO PROVIDED WITH US CLICK ON..
                        <a href="updateproj.jsp"> UPDATE </a> </p>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="submit" name="DELETE" />   
                </td>
            </tr>
            <div id="msg1">
            <tr>
                <td> ${err} </td>
            </tr>
            </div>
        </table>
        </form>
    </center>
    </body>
</html>
