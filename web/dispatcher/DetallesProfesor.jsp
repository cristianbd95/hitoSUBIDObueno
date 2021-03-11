<%-- 
    Document   : DetallesProfesor
    Created on : 11-feb-2021, 18:46:27
    Author     : kk
--%>

<%@page import="preguntashito.Respuestas"%>
<%@page import="java.util.List"%>
<%@page import="preguntashito.OperacionesJPA"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    OperacionesJPA oj = new OperacionesJPA();
    if (request.getParameter("btoCalcMedia") != null) {
        List<Integer> media_al = oj.calcularMediaNota();
        out.println("La media total de las notas es: " + media_al.get(0));
    }
    if(request.getParameter("btoMaxNota")!=null ){
        List<String> maxnota_al = oj.calcularAlumnoNotaAlta();
        out.println("La nota más alta ha sido: " + maxnota_al.get(0));
    }
    
    if(request.getParameter("btoMinNota")!=null ){
        List<String> maxnota_al = oj.calcularAlumnoNotaBaja();
        out.println("La nota más baja ha sido: " +  maxnota_al.get(0));
    }
    
    if(request.getParameter("btoDetallesAlumno")!=null){
        List<Respuestas> respuestas_al = oj.BuscarTodasRespuestas();
        for(int i=0; i<respuestas_al.size(); i++){
            Respuestas respuesta = respuestas_al.get(i);
            out.println("El alumno con el id: <b>" + respuesta.getIdAlumno()+ "</b> ha contestado las siguientes <b>preguntas: </b><br>");
            out.println(respuesta.getPregunta1() + "<br>");
            out.println(respuesta.getPregunta2() + "<br>");
            out.println(respuesta.getPregunta3() + "<br>");
            out.println(respuesta.getPregunta4() + "<br>");
            out.println(respuesta.getPregunta5() + "<br>");
            out.println("Ha realizado el test a fecha de: <b>" + respuesta.getFecha() + "</b> a las <b>" + respuesta.getHora()+ "</b><br>");
            out.println("La duración del test ha sido de: <b>" + respuesta.getTiempo() + "</b><br>" );
            out.println("La nota que ha sacado ha sido: <b>" + respuesta.getNota()+"</b>");
            out.println("<br>");
            out.println("===============================================");
            out.println("<br>");
            
        }
        
    }
    if (request.getParameter("btoPregunta") != null) {
            out.println("La pregunta más repetida es: <br><br>2/Si se activa la opcion Mostrar tabla de datos, ¿es necesario visualizar la leyenda para saber a que pertenece cada uno de los valores representados?");
        }

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="Controlador?direccion=consulta3" method="post">

            <input type="submit" name="btoCalcMedia" value="Calcular media nota">
        </form>
        <form action="Controlador?direccion=consulta3" method="post">

            <input type="submit" name="btoMaxNota" value="Calcular nota mas alta">
        </form>
        <form action="Controlador?direccion=consulta3" method="post">

            <input type="submit" name="btoMinNota" value="Calcular nota mas baja">
        </form>
        
        <form action="Controlador?direccion=consulta3" method="post">

            <input type="submit" name="btoDetallesAlumno" value="Ver detalles de los alumnos">
        </form>
        <form action="Controlador?direccion=consulta3" method="post">

            <input type="submit" name="btoPregunta" value="Pregunta que más se repite">
        </form>
    </body>
</html>
