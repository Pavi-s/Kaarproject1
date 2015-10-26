<%-- 
    Document   : updateproj2
    Created on : 26 Oct, 2015, 12:18:26 PM
    Author     : Jai
--%>

<%@page import="POJO.Dbcon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="POJO.Project"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UPDATE PROJECT</title>
         <link rel="stylesheet" type="text/css" href="kaar.css"/>
    </head>
    <body background="Projects.jpg"> 
        <div id="title"> 
    <marquee direction="right" behaviour="scroll"> <h1> PROJECTS PORTAL </h1> </marquee>
        </div>
        <div id="pageinfo">
        <h3 align="center"> PROJECT DETAILS </h3>
        </div>
        <% HttpSession s=request.getSession(false); %>
        <div align="left">
            <p> Welcome <%= s.getAttribute("name")%> </p> 
        </div>
            <div align="right">
        <a href="logout.jsp"> LOGOUT </a>
        </div>
    <center>
        <form name="updt" method="post" action="updtdo">
            <table>
                <tr>
                    <td>
                        PROJECT NAME:
                    </td>
                    <% String pn = request.getParameter("pname"); %>
                    <td>
                        <input type="text" name="pname" value="<%= pn.toString() %>"/>
                    </td>
                </tr>
                <%  Dbcon db= new Dbcon();
                db.createConnection();
                StringBuilder st=new StringBuilder();
                                st.append("pname='");
                                st.append(pn);
                                st.append("'");
                               Project p=new Project();
                               ResultSet rs1=db.selectdb("*","Project", st.toString());
                               rs1.next();
                           
                            %>
                            <tr>
                    <td>
                        PROJECT DESCRIPTION: 
                    </td>
                    <td>
                        <textarea align="left" name="desc" rows="5" cols="50">
                            <%= rs1.getString("description") %>
                        </textarea>
                    </td>
                </tr>
                <tr>
                    <td>
                        FROM DATE: 
                    </td>
                    <td>
                        <input type="text" name="fromdt" value="<%= rs1.getString("datefrom") %>"/>
                        DD-MM-YY
                    </td>
                </tr>
                <tr>
                    <td>
                        TO DATE: 
                    </td>
                    <td>
                        <input type="text" name="todt" value="<%= rs1.getString("dateto") %>"/>
                        DD-MM-YY
                    </td>
                </tr>
                <tr>
                    <td>
                        CLIENT: 
                    </td>
                    <td>
                        <input type="text" name="client" value="<%= rs1.getString("company") %>"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        ROLE: 
                    </td>
                    <td>
                        <input type="text" name="role" value="<%= rs1.getString("role") %>"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        TECHNOLOGIES: 
                    </td>
                    <td>
                        <input type="text" name="tech" value="<%= rs1.getString("technologies") %>"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" value="UPDATE"/>
                    </td>
                    <td>
                        <input type="reset" value="CANCEL"/>
                    </td>
                </tr>
                <% 
                    rs1.close();
                %>
                
                <div id="msg1">

<tr>
                    <td>
                        ${err}
                    </td>
                </tr>
                </div>
   
                <tr>
                    <td>
                        <p> To view updated project click on the following...
                            <a href="home.jsp"> HOME </a>
                        </p>  
                    </td>
            </tr>
            </table>
        </form>
    </center>
    </body>
</html>

