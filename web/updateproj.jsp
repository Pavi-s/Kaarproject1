<%-- 
    Document   : updateproj
    Created on : 25 Oct, 2015, 10:19:03 PM
    Author     : Jai
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="POJO.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UPDATE PAGE</title>
        <link rel="stylesheet" type="text/css" href="kaar.css"/>
    </head>
    <body background="Projects.jpg">
        <div id="title"> 
    <marquee direction="right" behaviour="scroll"> <h1> PROJECTS PORTAL </h1> </marquee>
        </div>
        <div id="pageinfo">
        <h3 align="center"> CHANGE THE PROJECT DETAILS</h3>
        </div> 
        <% HttpSession s=request.getSession(false); %>
        <div align="left">
            <p> Welcome <%= s.getAttribute("name")%> </p> 
        </div>
            <div align="right">
        <a href="logout.jsp"> LOGOUT </a>
        </div>
        <br>
        <br>
        <br>
    <center>        
        <form name="projup" method="post" action="updateproj2.jsp">
            <table>
                <tr>
                    <td>
                        PROJECT NAME: 
                    </td>
                    <td>
                        <select name="pname">
                        <% Dbcon db=new Dbcon(); 
                           HttpSession sess=request.getSession();
                           db.createConnection();
                           ResultSet rs=db.selectdb("pname","Project", "null");
                           while(rs.next())
                           {
                        %>
                        
                            <option> <%=rs.getString("pname") %> </option>
                        
                        <% } %>
                        </select>
                                      </td>
                </tr>
                <tr>
                    
                </tr>
                <tr>
                    
                </tr>
                <tr>
                    
                </tr>
                <tr>
                    <td>
                        <input type="submit" name="UPDATE" value="UPDATE"/>
                    </td>
                </tr>
             </table>        
        </form>
        
    </center>
    </body>
</html>
