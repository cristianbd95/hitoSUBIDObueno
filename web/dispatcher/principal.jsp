<%-- 
    Document   : principal
    Created on : 11-feb-2021, 18:35:45
    Author     : kk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
    Object idioma_o = session.getAttribute("idioma_s");
    String idioma = idioma_o.toString();
    
    String comenzarTest = "Comenzar Test";
    String actualizar = "Actualizar";
    String detallesAlumno = "DetallesAlumno";
    String salir = "salir";
    
    if(idioma.equals("English")){
        comenzarTest = "Start Test";
        actualizar = "Update";
        detallesAlumno = "Datails student";
        salir = "quit";
    }
    String rango = (String) request.getAttribute("rango");
    session.setAttribute("contIntentos",3);
    request.getAttribute("idUsuario");
    int idUsuario = (Integer) request.getAttribute("idUsuario");
    session.setAttribute("idU", idUsuario);
    if(rango.equals("Alumno")){
    %> 
        <a href="Controlador?direccion=consulta1" target="myFrame"><%=comenzarTest%></a>&nbsp &nbsp
        <a href="Controlador?direccion=consulta4" target="myFrame"><%=salir%></a>&nbsp &nbsp
    <%
    }

    if(rango.equals("Administrador")){
    %> 
        <a href="Controlador?direccion=consulta1" target="myFrame"><%=comenzarTest%></a>&nbsp &nbsp
        <a href="Controlador?direccion=consulta2" target="myFrame"><%=actualizar%></a>&nbsp &nbsp
        <a href="Controlador?direccion=consulta4" target="myFrame"><%=salir%></a>&nbsp &nbsp
    <%
    
    }

    if(rango.equals("Profesor")){
    %> 
        <a href="Controlador?direccion=consulta3" target="myFrame"><%=detallesAlumno%></a>&nbsp &nbsp
        <a href="Controlador?direccion=consulta4" target="myFrame"><%=salir%></a>&nbsp &nbsp
    <%
    }


%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        
        <div style="heigth:700px; width: 1000px">
            <iframe name="myFrame" style="height: 500px; width: 100%;">

            </iframe>
        </div>

    </body>
</html>
