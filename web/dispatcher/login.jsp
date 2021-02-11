<%-- 
    Document   : login
    Created on : 11-feb-2021, 17:44:27
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
        <form action="http://localhost:8080/PreguntasHITO/ServletLogin" method="post">
            <%
                String valor = "";
                Cookie[] cookies = request.getCookies();
                if (cookies != null) {
                    for (Cookie c : cookies) {
                        if (c.getName().equals("plogin")) {
                            valor = c.getValue();
                        } else {
                            valor = "no encontrado";
                        }
                    }
                } else {
                    out.println("COOKIE NO CARGADA");
                }

            %>

            Login?      <input type="text" name="txtLogin">
            Password?   <input type="password" name="txtPassword">
            <select name="selIdioma" id="selidioma">
                <option>Spanish</option>
                <option>English</option>
            </select>
            <input type="checkbox" checked="checked" name="chkRecordar">Guardar login En Cookies</input>
            <input type="submit" name="btoEnvioLogin" value="Login">
        </form>
    </body>
</html>
