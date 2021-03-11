<%-- 
    Document   : EmpezarTest
    Created on : 11-feb-2021, 18:42:25
    Author     : kk
--%>

<%@page import="preguntashito.Respuestas"%>
<%@page import="java.util.Collections"%>
<%@page import="preguntashito.Preguntas"%>
<%@page import="java.util.List"%>
<%@page import="preguntashito.OperacionesJPA"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<span id="timer"></span>
<form action="Controlador?direccion=resultado" method="post" id="miForm">
    <%
        OperacionesJPA oj = new OperacionesJPA();
        List<Preguntas> preguntas_al = oj.BuscarTodasPreguntas();
        Collections.shuffle(preguntas_al);
        session.setAttribute("preguntas", preguntas_al);
        int idU = (Integer) session.getAttribute("idU");
        boolean control = false;
        List<Respuestas> respuestas_al = oj.BuscarTodasRespuestas();
        for (int k = 0; k < respuestas_al.size(); k++) {
            Respuestas respuesta = respuestas_al.get(k);
            if (respuesta.getIdAlumno() == idU) {
                control = true;
            }
        }
        if (control == false) {
            for (int i = 0; i < 5; i++) {
                Preguntas pregunta = preguntas_al.get(i);
                out.println("<br>" + pregunta.getIdPregunta());
                out.println(pregunta.getPregunta() + "<br>");
    %> 
    <input type="radio" name="opciones<%=i%>" value="<%=pregunta.getOpcion1()%>"><%=pregunta.getOpcion1()%> <br>
    <input type="radio" name="opciones<%=i%>" value="<%=pregunta.getOpcion2()%>"><%=pregunta.getOpcion2()%> <br>
    <input type="radio" name="opciones<%=i%>" value="<%=pregunta.getOpcion3()%>"><%=pregunta.getOpcion3()%> <br>
    <%
        }
    %>
    <input type="hidden" name="timerIn" id="timerIn">
    <input type="submit" name="btoEnviarTest" value="Terminar test">
</form>
<script>

    window.onload = function () {
        var minute = 2;
        var sec = 60;
        setInterval(function () {
            document.getElementById("timer").innerHTML = minute + " : " + sec;
            sec--;

            document.getElementById("timerIn").value = minute + " : " + sec;
            sec--;
            if (sec == 00) {
                minute--;
                sec = 60;
                if (minute == 0) {
                    document.getElementById(miForm).submit;
                }
            }
        }, 1000);
    }
</script>

<%
    if (Integer.parseInt(session.getAttribute("contIntentos").toString()) > 0) {
        int cont = Integer.parseInt(session.getAttribute("contIntentos").toString()) - 1;
        session.setAttribute("contIntentos", cont);
%> 
<br><a href="Controlador?direccion=consulta1">Volver a realizar Test</a><br>
<%
            out.println("Te quedan " + cont + " intentos");
        } else {
            out.println("No te quedan intentos");
        }
    }

    if (control == true) {
        out.println("YA HAS REALIZADO EL TEST");
    }

%>
