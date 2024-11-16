package Servlets;


import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.ServletContext;
import Modelo.Cliente;
import Modelo.GestionarClientes;

@WebServlet(name = "sv_AgregarUsuario", urlPatterns = {"/sv_AgregarUsuario"})
@MultipartConfig
public class sv_AgregarUsuario extends HttpServlet {

    public static GestionarClientes gesClientes = new GestionarClientes();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int idPersona = Integer.parseInt(request.getParameter("idPersona"));
            String nombre = request.getParameter("nombre");
            String edad = request.getParameter("edad");
            String sexo = request.getParameter("sexo");
            String celular = request.getParameter("celular");
            String correo = request.getParameter("correo");
            String contraseña = request.getParameter("contraseña");

            // Verificar si el ID ya existe en la lista
            List<Cliente> listaClientes = gesClientes.getMisClientes(getServletContext());
            if (listaClientes!= null) {
                for (Cliente c : listaClientes) {
                    if (c.getIdPersona() == idPersona) {
                        // El ID ya existe, mostrar un mensaje de error y redireccionar
                        request.getSession().setAttribute("mensaje", "El número de identificación de esta persona ya esta en uso.");
                        response.sendRedirect("sing-up.jsp");
                        return; // Salir del método doPost
                    }
                }
            }

            // Si el número de identificación no está duplicado, proceder a agregar el cliente
           
            Cliente nuevoCliente = new Cliente(idPersona, nombre, edad, sexo, celular, correo, contraseña);

            gesClientes.agregarCliente(nuevoCliente, getServletContext());

            request.getSession().setAttribute("mensaje", "Cuenta creada correctamente.");
            response.sendRedirect("index.jsp");
        } catch (NumberFormatException e) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "El ID no es válido");
        } catch (IOException e) {
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error al procesar la solicitud");
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
