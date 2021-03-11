<%-- 
    Document   : prueba
    Created on : 22-feb-2021, 13:07:59
    Author     : kk
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <span id="timer"></span>
    </body>
</html>


<script>

    window.onload = function () {
        var minute = 2;
        var sec = 60;
        setInterval(function () {
            document.getElementById("timer").innerHTML = minute + " : " + sec;
            sec--;
            if (sec == 00) {
                minute--;
                sec = 60;
                if (minute == 0) {
                    minute = 5;
                }
            }
        }, 1000);
    }
</script>