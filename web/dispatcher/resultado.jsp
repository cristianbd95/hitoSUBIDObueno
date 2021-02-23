<%-- 
    Document   : resultado.jsp
    Created on : 22-feb-2021, 13:22:43
    Author     : kk
--%>

<%@page import="preguntashito.Preguntas"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    if (request.getParameter("btoEnviarTest") != null) {
        List<Preguntas> preguntas_al = (List) session.getAttribute("preguntas");
        char respuesta;
        char solucion;
        String opcionSel = null;
        double cont = 0;
        for (int i = 0; i < 5; i++) {
            Preguntas pregunta = preguntas_al.get(i);
            opcionSel = request.getParameter("opciones" + i);
            if (opcionSel != null) {
                respuesta = opcionSel.charAt(0);
                solucion = pregunta.getSolucion().charAt(0);
                if (respuesta == solucion) {
                    cont = cont + 2;
                }
                if (respuesta != solucion && opcionSel != "n") {
                    cont = cont - 0.8;
                }
            }

        }
        
        out.println("Tu puntuacion es: " + cont+ "<br>");

    }
    
%> 

