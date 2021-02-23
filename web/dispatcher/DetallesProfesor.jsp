<%-- 
    Document   : DetallesProfesor
    Created on : 11-feb-2021, 18:46:27
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
        <form action="DetallesProfesor.jsp" method="post">

            <input type="submit" name="btoEnviarTest" value="Terminar test">
        </form>
        <%
            out.println(request.getParameter("opciones1"));
        %>
    </body>
</html>
