package Servlets;

import Modelo.GestionarServicios;
import Modelo.Servicios;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.Part;
import java.nio.file.Paths;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet("/gestionarServicios")
@MultipartConfig(fileSizeThreshold = 1024 * 1024, // 1MB
                 maxFileSize = 10 * 1024 * 1024,    // 10MB
                 maxRequestSize = 50 * 1024 * 1024) // 50MB
public class ServiciosServlet extends HttpServlet {
    private GestionarServicios gesServicios;

    @Override
    public void init() throws ServletException {
        gesServicios = new GestionarServicios();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String action = request.getParameter("action"); // Obtener el parámetro "action" de la URL
    
    // Comprobamos el valor del parámetro y redirigimos según corresponda
    if (action != null) {
        if (action.equals("servicios")) {
            List<Servicios> servicios = gesServicios.listarServicios(); // Solo lista doble
            request.setAttribute("servicios", servicios);
            RequestDispatcher dispatcher = request.getRequestDispatcher("servi.jsp");
            dispatcher.forward(request, response);
        } else if (action.equals("servicios2")) {
            List<Servicios> servicios = gesServicios.listarServicios(); // Solo lista doble
            request.setAttribute("servicios", servicios);
            RequestDispatcher dispatcher = request.getRequestDispatcher("inicio.jsp");
            dispatcher.forward(request, response);
        } else {
            // Si no se encuentra el valor "action", redirigir a una página por defecto
            response.sendRedirect("error.jsp");
        }
    } else {
        // Si no se proporciona el parámetro "action", redirigir a una página predeterminada
        response.sendRedirect("servi.jsp");
    }
}

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String accion = request.getParameter("accion");

        if (null != accion) switch (accion) {
            case "agregar":{
                int id = Integer.parseInt(request.getParameter("id"));
                String nombreServicio = request.getParameter("nombreServicio");
                double precio = Double.parseDouble(request.getParameter("precio"));
                String fechaStr = request.getParameter("fecha");
                String descripcion = request.getParameter("descripcion");
                // Convertir la fecha de String a Date
                Date fecha = null;
                try {
                    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
                    fecha = formatter.parse(fechaStr);
                } catch (ParseException e) {
                    
                }       // Manejo del archivo de imagen
                Part filePart = request.getPart("foto");
                String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
                String uploadPath = getServletContext().getRealPath("") + "uploads";
                // Crear la carpeta de uploads si no existe
                java.io.File uploadDir = new java.io.File(uploadPath);
                if (!uploadDir.exists()) uploadDir.mkdir();
                // Guardar el archivo en el servidor
                String filePath = uploadPath + "/" + fileName;
                filePart.write(filePath);
                // Guardar la ruta relativa de la imagen en la base de datos
                gesServicios.agregarServicio(id, nombreServicio, precio, fecha, descripcion, "uploads/" + fileName); // Solo lista doble
                    break;
                }
            case "eliminar":{
                int id = Integer.parseInt(request.getParameter("id"));
                gesServicios.eliminarServicios(id); // Solo lista doble
                    break;
                }
            case "editar":{
                int id = Integer.parseInt(request.getParameter("id"));
                String nombreServicio = request.getParameter("nombreServicio");
                double precio = Double.parseDouble(request.getParameter("precio"));
                String fechaStr = request.getParameter("fecha");
                String descripcion = request.getParameter("descripcion");
                // Convertir la fecha de String a Date
                Date fecha = null;
                try {
                    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
                    fecha = formatter.parse(fechaStr);
                } catch (ParseException e) {
                }       // Obtener la imagen actual desde la base de datos
                Servicios servicioExistente = gesServicios.obtenerServicio(id);
                String rutaImagenActual = servicioExistente.getFoto(); // Ruta de la imagen actual
                // Manejo del archivo de imagen para edición
                Part filePart = request.getPart("foto");
                String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
                // Verificar si se ha cargado una nueva imagen
                if (fileName != null && !fileName.isEmpty()) {
                    // Si se ha seleccionado una nueva imagen, se procesa
                    String uploadPath = getServletContext().getRealPath("") + "uploads";
                    java.io.File uploadDir = new java.io.File(uploadPath);
                    if (!uploadDir.exists()) uploadDir.mkdir();
                    
                    String filePath = uploadPath + "/" + fileName;
                    filePart.write(filePath);
                    rutaImagenActual = "uploads/" + fileName; // Actualizamos la ruta de la imagen
                }       // Actualizar el servicio con la nueva información, incluida la imagen (si se cambió)
                gesServicios.editarServicio(id, nombreServicio, precio, fecha, descripcion, rutaImagenActual); // Solo lista doble
                    break;
                }
            default:
                break;
        }

        response.sendRedirect("gestionarServicios?action=servicios");

    }
}
