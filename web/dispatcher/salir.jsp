<%-- 
    Document   : salir
    Created on : 22-feb-2021, 12:56:08
    Author     : kk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    out.println(request.getParameter("opciones1"));
    out.println(request.getParameter("opciones2"));
    out.println(request.getParameter("opciones3"));
    out.println(request.getParameter("opciones4"));
    out.println(request.getParameter("opciones5"));
    

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
