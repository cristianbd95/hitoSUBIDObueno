<%-- 
    Document   : principal
    Created on : 11-feb-2021, 18:35:45
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
        <a href="Controlador?direccion=consulta1" target="myFrame">ComenzarTest</a>&nbsp &nbsp
        <a href="Controlador?direccion=consulta2" target="myFrame">Actualizar</a>&nbsp &nbsp
        <a href="Controlador?direccion=consulta3" target="myFrame">DetallesAlumno</a>&nbsp &nbsp
        <a href="Controlador?direccion=consulta4" target="myFrame">Salir</a>&nbsp &nbsp
        <div style="heigth:700px; width: 1000px">
            <iframe name="myFrame" style="height: 500px; width: 100%;">

            </iframe>
        </div>

    </body>
</html>
