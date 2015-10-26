<%-- 
    Document   : Login
    Created on : 24 Oct, 2015, 8:32:47 AM
    Author     : Jai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title> 
        <link rel="stylesheet" type="text/css" href="kaar.css"/>
    </head>
    <body background="Projects.jpg">
        <div id="title"> 
    <marquee direction="right" behaviour="scroll"> <h1> PROJECTS PORTAL </h1> </marquee>
        </div>
        <div id="pageinfo">
        <h3 align="center"> LOGIN </h3>
        </div>            
        <div id="page">
        <form name="login" method="post" action="Logindo">
        <table align="center">
            <tr>
            <td>
            <i>USERNAME : </i>
            </td>
            <td>
                <input type="text" name="username"/>
            </td>
            </tr>
            <tr>
            <td>
            <i>PASSWORD : </i>
            </td>
            <td>
                <input type="password" name="pwd"/>
            </td>
            </tr>
            <tr>
                
            </tr>
            <tr>
            <td>
                <a href="forpwd.jsp"> Forgot Password !! </a> 
            </td>
            </tr>
            <tr>
                
            </tr>
            <tr>
            <td>
                <input type="submit" value="LOGIN" align="center"/>
            </td>
            &nbsp;
            <td> <input type="reset" value="CANCEL"/></td>
            </tr>
            </div>
            <tr>
                <td>
                    <p> Don't have a account yet..Click on to <a href="signup.jsp"> SIGNUP </a></p>
                   
                </td>
            </tr>
            <div id="msg1">
            <tr>
                <td> ${err} </td>
                
            </tr>
            </div>
        </table>
        </form>
    </body>
</html>
