package Servlets;

import Modelo.ManejoArchivos;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import javax.servlet.annotation.WebServlet;

// Servlet para iniciar sesión
@WebServlet("/Servlet_Login")
public class Servlet_Login extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Convertir el parámetro "id" a un entero
            int idPersona = Integer.parseInt(request.getParameter("id"));
            String contrasena = request.getParameter("password");

            // Validar usuario en usuarios.txt
            if (ManejoArchivos.validarUsuario(idPersona, contrasena, getServletContext().getRealPath("/data/usuarios.txt"))) {
                // Guardar la identificación en la sesión
                HttpSession session = request.getSession();
                session.setAttribute("idPersona", idPersona);
                response.sendRedirect("inicio.jsp");
            } else {
                // Redireccionar de nuevo al login con un mensaje de error
                response.sendRedirect("index.jsp?error=true");
            }
        } catch (NumberFormatException e) {
            e.printStackTrace();
            response.sendRedirect("index.jsp?error=invalid_id");
        }
    }
    
}
