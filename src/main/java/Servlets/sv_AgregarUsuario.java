package Servlets;

import Modelo.ManejoArchivos;
import Modelo.Usuario;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import javax.servlet.annotation.WebServlet;

// Servlet para registrar usuarios
@WebServlet("/sv_AgregarUsuario")
public class sv_AgregarUsuario extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Obtener parámetros del formulario
            int idPersona = Integer.parseInt(request.getParameter("idPersona"));
            String nombre = request.getParameter("nombre");
            String edad = request.getParameter("edad");
            String sexo = request.getParameter("sexo");
            String celular = request.getParameter("celular");
            String correo = request.getParameter("correo");
            String contrasena = request.getParameter("contrasena");

            // Crear un nuevo usuario
            Usuario nuevoUsuario = new Usuario(idPersona, nombre, edad, sexo, celular, correo, contrasena);

            // Guardar usuario en usuarios.txt
            ManejoArchivos.guardarUsuario(nuevoUsuario, getServletContext().getRealPath("/data/usuarios.txt"));

            // Redireccionar al login
            response.sendRedirect("index.jsp");
        } catch (NumberFormatException e) {
            // Manejar errores de formato en identificacion
            e.printStackTrace();
            response.sendRedirect("registro.jsp?error=invalid_id");
        } catch (Exception e) {
            // Manejar cualquier otro error
            e.printStackTrace();
            response.sendRedirect("registro.jsp?error=true");
        }
    }
}
