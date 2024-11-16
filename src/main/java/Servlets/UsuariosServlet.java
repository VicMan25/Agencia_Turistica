package Servlets;

import Modelo.GestionarUsuarios;
import Modelo.Usuario;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UsuariosServlet")
public class UsuariosServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private GestionarUsuarios gestorUsuarios = new GestionarUsuarios();

   
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String action = request.getParameter("action");
    String idPersonaStr = request.getParameter("idPersona"); // Obtener el ID como String

    if (action != null && action.equals("delete") && idPersonaStr != null) {
        try {
            int idPersona = Integer.parseInt(idPersonaStr); // Convertir a int
            gestorUsuarios.eliminarUsuario(idPersona);
        } catch (NumberFormatException e) {
            // Manejar el error, por ejemplo, registrar el error o enviar un mensaje de error al usuario
            request.setAttribute("error", "ID de persona no válido.");
        }
    }

    // Cargar la lista de usuarios después de la operación (eliminar o no)
    request.setAttribute("usuarios", gestorUsuarios.getListaUsuarios());
    request.getRequestDispatcher("sing-up.jsp").forward(request, response);
}


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        int idPersona = Integer.parseInt(request.getParameter("idPersona"));
        String nombre = request.getParameter("nombre");
        String edad = request.getParameter("edad");
        String sexo = request.getParameter("sexo");
        String celular = request.getParameter("celular");
        String correo = request.getParameter("correo");
        String contraseña = request.getParameter("contraseña");
        
        

        Usuario usuario = new Usuario(idPersona, nombre, edad, sexo, celular, correo, contraseña);
        String editar = request.getParameter("editar");

        if (editar != null && editar.equals("true")) {
            gestorUsuarios.editarUsuario(usuario);
        } else {
            gestorUsuarios.agregarUsuario(usuario);
        }

        request.setAttribute("usuarios", gestorUsuarios.getListaUsuarios());
        request.getRequestDispatcher("sing-up.jsp").forward(request, response);
    }

}
