<%-- 
    Document   : forpwd
    Created on : 25 Oct, 2015, 3:30:48 PM
    Author     : Jai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forgot Password</title>
        <link rel="stylesheet" type="text/css" href="kaar.css"/>
    </head>
    <body background="Projects.jpg">
        <div id="title"> 
    <marquee direction="right" behaviour="scroll"> <h1> PROJECTS PORTAL </h1> </marquee>
        </div>
    <center>
        <div id="pageinfo">
        <h3> Forgot password !!!</h3>
        </div>
        <br/>
        <br/>
        <br/>
        <p align="center"> Enter the following to retrieve password</p>
        <form name="forgotpwd" method="post" action="forgotdo">
            <table align="center">
                <tr>
                    <td>
                        EMAIL :
                    </td>
                    <td>
                        <input type="text" name="email"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        MOBILE NO :
                    </td>
                    <td>
                        <input type="text" name="mobile"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" name="submit"/>
                        &nbsp;&nbsp;
                        <input type="reset" name="clear"/>
                    </td>
                </tr>
                <tr>
                   
                    <td> ${err} </td>
                </tr>
                <tr>
                    <td>
                <p> To login click on the following link </p>
                <a href="Login.jsp"> LOGIN </a>
                    </td>
                </tr>                    
                   </table>
        </form>
    </center>
    </body>
</html>
