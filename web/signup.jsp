<%-- 
    Document   : signup
    Created on : 25 Oct, 2015, 4:11:25 PM
    Author     : Jai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SIGN UP</title>
        <link rel="stylesheet" type="text/css" href="kaar.css"/>
    </head>
       <body background="Projects.jpg">
           <div id="title"> 
    <marquee direction="right" behaviour="scroll"> <h1> PROJECTS PORTAL </h1> </marquee>
        </div>
    <center>
        <div id="pageinfo">
        <h3> SIGNUP </h3>
        </div>
    <form name="signup" action="signupdo" method="post">
        
            <table>
               
                    <tr>
                        <td>Name:</td>
                        <td> <input type="text" name="name" required /></td>
                    </tr>
                    <tr>
                        <td>Email:</td>
                        <td><input type="text" name="email" placeholder="abc@xyz.com" required/></td>
                    </tr>
                    <tr>
                        <td>Gender: </td>
                        <td><select name="gender">
                                <option>Male</option>
                                <option>Female</option>
                            </select> </td>
                    </tr>
                    <tr>
                        <td>Phone:</td>
                        <td><input type="text" name="mobile" required /> </td>
                    </tr>
                     <tr>
                        <td>Qualification :</td>
                        <td><input type="text" name="qual" required/> </td>
                    </tr>
                     <tr>
                        <td>Login ID:</td>
                        <td><input type="text" name="lid" required/> </td>
                    </tr>
                    <tr>
                        <td>Password:</td>
                        <td><input type="password" name="Password" required/> </td>
                    </tr>
                    <tr>
                        <td>Conform password: </td>
                        <td><input type="password" name="conformpassword" required/> </td>
                    </tr>
                    
                </tbody>
            </table>
            <br/>
            <br/>
            <br/>

            <input type="submit" value="REGISTER" name="submit" />
            &nbsp;&nbsp;
            <input type="reset" value="CANCEL" name="Clear" />
        
    </center>
</form>
        <center>
        <table>
            <div id="msg1">
            <tr>
                <td> ${err} </td>
            </tr>
            </div>
            
            <tr>
                <td> <p> To Login to the portal click on following..</p> </td>
                <td> <a href="Login.jsp"> SIGN IN </a></td>
            </tr>
        </table>
        </center>          
</html>
