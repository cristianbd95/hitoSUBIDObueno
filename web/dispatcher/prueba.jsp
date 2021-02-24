<%-- 
    Document   : prueba
    Created on : 22-feb-2021, 13:07:59
    Author     : kk
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
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

    DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
    LocalDateTime now = LocalDateTime.now();
    out.println(dtf.format(now));//fecha
    String fecha = dtf.format(now).toString();
    SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");
    Date date = formatter.parse(fecha);
    
out.println(date);
out.println("<br>"+formatter.format(date));
%>
