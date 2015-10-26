<%-- 
    Document   : home
    Created on : 25 Oct, 2015, 1:00:31 PM
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
        <title>HOME</title>
        <link rel="stylesheet" type="text/css" href="kaar.css"/>
    </head>
    <body background="Projects.jpg">
         <div id="title"> 
    <marquee direction="right" behaviour="scroll"> <h1> PROJECTS PORTAL </h1> </marquee>
        </div>
        <div id="pageinfo">
        <h3 align="center"> PROJECTS AVAILABLE WITH US </h3>
        </div>   
        <% HttpSession s=request.getSession(false); %>
        <div align="left">
            <p> Welcome <%= s.getAttribute("name")%> </p> 
        </div>
            <div align="right">
        <a href="logout.jsp"> LOGOUT </a>
        </div>
    <center>
            <div id="page">
        <form name="projlist" method="get" action="projdesc.jsp">
        <table>
        <% Dbcon d=new Dbcon();
            d.createConnection();
            Project p = new Project();
            ResultSet rs = d.selectdb("pname", "Project", "null");
            while(rs.next())
            { %>
        <tr>
            
            <li> <%= rs.getString("pname") %> </li>  
            
        </tr>
        <%  } %>
        <tr>
            
        </tr>
        <tr>
            
        </tr>
        <tr>
            
        </tr>
        <tr>
        <p> To View a project select one of the following..</p>
        <select name="pname"> 
        <%
            ResultSet rs1 = d.selectdb("pname", "Project", "null");
        while(rs1.next())
            { %>
           
           <option> <%= rs1.getString("pname") %> </option>  
         <% }
        %>   
        </select>
        </tr>
        <tr>
            <td>
                <input type="submit" value="DESCRIBE"/>
            </td>
        </tr>
        </table>
        </form>
        </div>
        <div id="msg1">
                <tr>
                    <td>
                        ${err}
                    </td>
                </tr>
                </div>
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
