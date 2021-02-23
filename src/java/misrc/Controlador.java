/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package misrc;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Controlador extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String direccion = request.getParameter("direccion");

            switch (direccion) {
                case "principal":
                    request.getRequestDispatcher("/dispatcher/principal.jsp").forward(request, response);
                    break;
                case "consulta1":
                    request.getRequestDispatcher("/dispatcher/EmpezarTest.jsp").forward(request, response);
                    break;
                case "consulta2":
                    request.getRequestDispatcher("/dispatcher/Actualizar.jsp").forward(request, response);
                    break;
                case "consulta3":
                    request.getRequestDispatcher("/dispatcher/DetallesProfesor.jsp").forward(request, response);
                    break;
                case "consulta4":
                    request.getRequestDispatcher("/dispatcher/consulta4.jsp").forward(request, response);
                    break;
                case "resultado":
                    request.getRequestDispatcher("/dispatcher/resultado.jsp").forward(request, response);
                    break;
                case "validar":
                    request.getRequestDispatcher("/dispatcher/login.jsp").forward(request, response);
                    break;
                case "login":
                    request.getRequestDispatcher("/dispatcher/login.jsp").forward(request, response);
                    break;
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
