<%-- 
    Document   : logout
    Created on : 26 Oct, 2015, 5:03:21 PM
    Author     : Jai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>logout Page</title>
    </head>
    <body>
        <% HttpSession s=request.getSession(false);
            s.invalidate();
            response.sendRedirect("Login.jsp");
        %>
        
    </body>
</html>
