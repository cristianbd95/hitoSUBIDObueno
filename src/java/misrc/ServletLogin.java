/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package misrc;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import preguntashito.OperacionesJPA;
import preguntashito.Usuarios;

public class ServletLogin extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String login, password;
            String accion = request.getParameter("btoEnvioLogin");
            OperacionesJPA oj = new OperacionesJPA();

            if (accion != null) {
                if (accion.equals("Iniciar sesion") || accion.equals("Login")) {
                    login = request.getParameter("txtLogin");
                    password = request.getParameter("txtPassword");
                    String radio = request.getParameter("chkRecordar");
                    System.out.println(radio);
                    List<Usuarios> usuarios_al = oj.BuscarTodosUsuarios();

                    if (radio == null) {
                        System.out.println("LLEGO");

                        for (int i = 0; i < usuarios_al.size(); i++) {
                            Usuarios usuario = usuarios_al.get(i);
                            if (usuario.getIdUsuario() == Integer.parseInt(password) && usuario.getNombre().equals(login)) {
                                request.setAttribute("rango", usuario.getRango());
                                request.setAttribute("idUsuario", usuario.getIdUsuario());
                                request.getRequestDispatcher("Controlador?direccion=principal").forward(request, response);
                            }
                        }
                        HttpSession session = request.getSession();
                        session.setAttribute("MyAttribute", "fallando");
                        request.getRequestDispatcher("Controlador?direccion=validar").forward(request, response);

                    } else {
                        Cookie cookie = new Cookie("plogin", login);
                        cookie.setComment("cookie que guarda el login");
                        cookie.setMaxAge(60 * 60 * 24);
                        response.addCookie(cookie);
                        System.out.println("Cookie Creada");
                        for (int i = 0; i < usuarios_al.size(); i++) {
                            Usuarios usuario = usuarios_al.get(i);
                            if (usuario.getIdUsuario() == Integer.parseInt(password) && usuario.getNombre().equals(login)) {
                                request.setAttribute("rango", usuario.getRango());
                                request.setAttribute("idUsuario", usuario.getIdUsuario());
                                request.getRequestDispatcher("Controlador?direccion=principal").forward(request, response);
                            }
                        }
                        HttpSession session = request.getSession();
                        session.setAttribute("MyAttribute", "fallando");
                        request.getRequestDispatcher("Controlador?direccion=validar").forward(request, response);
                    }

                }
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
