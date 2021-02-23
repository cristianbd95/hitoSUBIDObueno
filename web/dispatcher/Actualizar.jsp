

<%@page import="java.sql.Connection"%>
<%@page import="preguntashito.Operaciones"%>
<%@page import="preguntashito.Conexion"%>
<%@page import="preguntashito.Preguntas"%>
<%@page import="preguntashito.Preg"%>
<%@page import="preguntashito.OperacionesJPA"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
    if (request.getParameter("btoActualizar") != null) {
        OperacionesJPA oj = new OperacionesJPA();
        oj.borrarTodosCamposPreguntas();
        List<Preg> pregunta_al = oj.retornarListaPreguntas2();
        int idPregunta;
        String pregunta;
        String opcion1;
        String opcion2;
        String opcion3;
        String solucion;
        for (int i = 0; i < pregunta_al.size(); i++) {
            Preg preguntas = pregunta_al.get(i);
            idPregunta = preguntas.getIdPregunta();
            pregunta = preguntas.getPregunta();
            opcion1 = preguntas.getOpcion1();
            opcion2 = preguntas.getOpcion2();
            opcion3 = preguntas.getOpcion3();
            solucion = preguntas.getSolucion();
            Preguntas pregunt = new Preguntas(idPregunta, pregunta, opcion1, opcion2, opcion3, solucion);
            oj.crearPreguntas(pregunt);
        }

    } else {
        out.println(" ");
    }


%>

<form action="" method="post">

    <input type="submit" name="btoActualizar" value="actualizar">
</form>
