<%-- 
    Document   : resultado.jsp
    Created on : 22-feb-2021, 13:22:43
    Author     : kk
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.lang.String"%>
<%@page import="java.util.Date"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="preguntashito.Respuestas"%>
<%@page import="preguntashito.OperacionesJPA"%>
<%@page import="preguntashito.Preguntas"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    if (request.getParameter("btoEnviarTest") != null) {
        List<Preguntas> preguntas_al = (List) session.getAttribute("preguntas");
        OperacionesJPA oj = new OperacionesJPA();
        char respuesta;
        char solucion;
        String opcionSel = null;
        double cont = 0;
        for (int i = 0; i < 5; i++) {
            Preguntas pregunta = preguntas_al.get(i);
            out.println(pregunta.getPregunta() + "<br>");
            opcionSel = request.getParameter("opciones" + i);
            if (opcionSel != null) {
                respuesta = opcionSel.charAt(0);
                solucion = pregunta.getSolucion().charAt(0);
                if (respuesta == solucion) {
                    cont = cont + 2;
                    if (respuesta == pregunta.getOpcion1().charAt(0)) {
                        out.println("<p style='color: green'>" + pregunta.getOpcion1() + "</p>");
                    }
                    if (respuesta == pregunta.getOpcion2().charAt(0)) {
                        out.println("<p style='color: green'>" + pregunta.getOpcion2() + "</p>");
                    }
                    if (respuesta == pregunta.getOpcion3().charAt(0)) {
                        out.println("<p style='color: green'>" + pregunta.getOpcion3() + "</p>");
                    }
                } else {
                    if (solucion == pregunta.getOpcion1().charAt(0)) {
                        out.println("<p style='color: green'>" + pregunta.getOpcion1() + "</p>");
                    }
                    if (solucion == pregunta.getOpcion2().charAt(0)) {
                        out.println("<p style='color: green'>" + pregunta.getOpcion2() + "</p>");
                    }
                    if (solucion == pregunta.getOpcion3().charAt(0)) {
                        out.println("<p style='color: green'>" + pregunta.getOpcion3() + "</p>");
                    }

                    if (respuesta == pregunta.getOpcion1().charAt(0)) {
                        out.println("<p style='color: red' SELECCIONADA:>" + pregunta.getOpcion1() + "</p>");
                    }
                    if (respuesta == pregunta.getOpcion2().charAt(0)) {
                        out.println("<p style='color: red' SELECCIONADA:>" + pregunta.getOpcion2() + "</p>");
                    }
                    if (respuesta == pregunta.getOpcion3().charAt(0)) {
                        out.println("<p style='color: red' SELECCIONADA:>" + pregunta.getOpcion3() + "</p>");
                    }

                }
                if (respuesta != solucion && opcionSel != "n") {
                    cont = cont - 0.8;
                }
            }

        }
        
        int idUsuario = (int) session.getAttribute("idU");
        String pregunta1 = preguntas_al.get(0).getPregunta();
        String pregunta2 = preguntas_al.get(1).getPregunta();
        String pregunta3 = preguntas_al.get(2).getPregunta();
        String pregunta4 = preguntas_al.get(3).getPregunta();
        String pregunta5 = preguntas_al.get(4).getPregunta();
        String respuesta1 = request.getParameter("opciones1");
        String respuesta2 = request.getParameter("opciones1");
        String respuesta3 = request.getParameter("opciones1");
        String respuesta4 = request.getParameter("opciones1");
        String respuesta5 = request.getParameter("opciones1");

        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
        LocalDateTime now = LocalDateTime.now();
        String fecha = dtf.format(now).toString();

        DateTimeFormatter dtf2 = DateTimeFormatter.ofPattern("HH:mm:ss");
        LocalDateTime now2 = LocalDateTime.now();
        out.println(dtf2.format(now2));//hora
        String hora = dtf2.format(now2).toString();
        String nota = Double.toString(cont);

        Respuestas respuestas = new Respuestas(1,idUsuario, pregunta1, respuesta1, pregunta2, respuesta2, pregunta3, respuesta3, pregunta4,respuesta4, pregunta5, respuesta5, fecha, hora, "125 secs", nota);
        oj.crearRespuestas(respuestas);

        out.println("Tu puntuacion es: " + cont + "<br>");

    }

%> 

