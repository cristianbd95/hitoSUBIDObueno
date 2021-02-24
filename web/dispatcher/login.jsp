<%-- 
    Document   : login
    Created on : 11-feb-2021, 17:44:27
    Author     : kk
--%>

<%@page import="java.util.List"%>
<%@page import="preguntashito.Usuarios"%>
<%@page import="preguntashito.OperacionesJPA"%>
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

                String login = "Usuario";
                String password = "Contraseña";
                String boton = "Iniciar sesion";
                String cookiesinput = "Guardar login en cookies";
                String idioma = "Spanish";
                session.setAttribute("idioma_s", idioma);

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

                if (request.getParameter("btoIdioma") != null && request.getParameter("selIdioma").equals("Spanish")) {
                    out.println(request.getParameter("selIdioma"));
                    login = "Usuario";
                    password = "Contraseña";
                    boton = "Iniciar sesion";
                    cookiesinput = "Guardar login en cookies";
                    idioma = "Spanish";
                    session.setAttribute("idioma_s", idioma);
                }
                if (request.getParameter("btoIdioma") != null && request.getParameter("selIdioma").equals("English")) {
                    out.println(request.getParameter("selIdioma"));
                    login = "Login";
                    password = "Password";
                    boton = "Login";
                    cookiesinput = "Save login in cookies";
                    idioma = "English";
                    session.setAttribute("idioma_s", idioma);
                }

                    int entero;
                    try {
                        entero = (int) session.getAttribute("control");
                    } catch (Exception ex) {
                        entero = 3;
                    }

                    if (entero >= 1) {
                        if (session.getAttribute("MyAttribute") != null) {
                            entero--;
                            out.println("Te quedan " + entero + " intentos<br>");
                        }
                    } else {
                        out.println("Ya no te quedan intentos<br>");
                    }

                    session.setAttribute("control", entero);
                

            %>

            <%= login%>?<input type="text" name="txtLogin">
            <%= password%>?<input type="password" name="txtPassword">
            <input type="checkbox" checked="checked" name="chkRecordar"><%=cookiesinput%></input>
            <input type="submit" name="btoEnvioLogin" value="<%=boton%>">
        </form>


        <form action="login.jsp" method="post">
            <select name="selIdioma" id="selidioma">
                <option>Spanish</option>
                <option>English</option>
            </select>
            <input type="submit" name="btoIdioma" value="Seleccionar">
        </form>
    </body>
</html>
