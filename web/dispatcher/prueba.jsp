<%-- 
    Document   : prueba
    Created on : 22-feb-2021, 13:07:59
    Author     : kk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="prueba.jsp" method="post">
            <input type="text" name="hola">
            <input type="submit" name="btoEnviar" value="enviar">
        </form>
    </body>
</html>

<% 
    out.println(request.getParameter("hola"));
%>
