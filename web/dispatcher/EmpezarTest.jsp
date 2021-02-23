<%-- 
    Document   : EmpezarTest
    Created on : 11-feb-2021, 18:42:25
    Author     : kk
--%>

<%@page import="java.util.Collections"%>
<%@page import="preguntashito.Preguntas"%>
<%@page import="java.util.List"%>
<%@page import="preguntashito.OperacionesJPA"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<form action="Controlador?direccion=resultado" method="post">
    <%
        OperacionesJPA oj = new OperacionesJPA();
        
        List<Preguntas> preguntas_al = oj.BuscarTodasPreguntas();
        Collections.shuffle(preguntas_al);
        session.setAttribute("preguntas", preguntas_al);
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
    <input type="submit" name="btoEnviarTest" value="Terminar test">
</form>
    
<%    
    
    if(Integer.parseInt(session.getAttribute("contIntentos").toString())>0){
        int cont = Integer.parseInt(session.getAttribute("contIntentos").toString())-1;
        session.setAttribute("contIntentos", cont);
%> 
<br><a href="Controlador?direccion=consulta1">Volver a realizar Test</a><br>
<%      
        out.println("Te quedan " + cont + " intentos");
    }else{
        out.println("No te quedan intentos");
    }

%>
