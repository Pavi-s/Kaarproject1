<%-- 
    Document   : projadd
    Created on : 25 Oct, 2015, 6:32:11 PM
    Author     : Jai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PROJECT ADD</title>
        <link rel="stylesheet" type="text/css" href="kaar.css"/>
    </head>
    <body background="Projects.jpg">
    <center>
        <div id="title"> 
    <marquee direction="right" behaviour="scroll"> <h1> PROJECTS PORTAL </h1> </marquee>
        </div>
        <div id="pageinfo">
        <h3>Share a project with us..!!</h3>
        </div>
        <% HttpSession s=request.getSession(false); %>
        <div align="left">
            <p> Welcome <%= s.getAttribute("name")%> </p> 
        </div>
            <div align="right">
        <a href="logout.jsp"> LOGOUT </a>
        </div>
        <form name="padd" method="post" action="padddo">
            <table>
                <tr>
                    <td>
                        PROJECT NAME: 
                    </td>
                    <td>
                        <input type="text" name="pname"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        PROJECT DESCRIPTION: 
                    </td>
                    <td>
                        <textarea align="left" name="desc" rows="5" cols="50"> 
                        </textarea>
                    </td>
                </tr>
                <tr>
                    <td>
                        FROM DATE: 
                    </td>
                    <td>
                        <input type="text" name="fromdt"/>
                        DD-MM-YY
                    </td>
                </tr>
                <tr>
                    <td>
                        TO DATE: 
                    </td>
                    <td>
                        <input type="text" name="todt"/>
                        DD-MM-YY
                    </td>
                </tr>
                <tr>
                    <td>
                        CLIENT: 
                    </td>
                    <td>
                        <input type="text" name="client"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        ROLE: 
                    </td>
                    <td>
                        <input type="text" name="role"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        TECHNOLOGIES: 
                    </td>
                    <td>
                        <input type="text" name="tech"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" value="ADD"/>
                    </td>
                    <td>
                        <input type="reset" value="CANCEL"/>
                    </td>
                </tr>
                <div id="msg1">
                <tr>
                    <td>
                        ${err}
                    </td>
                </tr>
                </div>
            </table>        
        </form>
                    <div>            
        <p> To view added project click on the following...
            <a href="home.jsp"> HOME </a>
        </p>
        </div>
        
    </center>
    </body>
</html>
