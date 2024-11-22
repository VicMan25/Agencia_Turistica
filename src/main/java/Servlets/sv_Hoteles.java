package Servlets;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import Modelo.ListaCircularSimple;
import Modelo.ManejoArchivos;
import Modelo.Hotel;

// Servlet para manejar la reserva de hoteles
@WebServlet("/sv_Hoteles")
public class sv_Hoteles extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idHotel = Integer.parseInt(request.getParameter("hotel")); 
        int cantidadNoches = Integer.parseInt(request.getParameter("noches")); 
        int idPersona = (int) request.getSession().getAttribute("idPersona"); 


        // Obtener la lista de hoteles
        ListaCircularSimple listaHoteles = ManejoArchivos.cargarHoteles(getServletContext().getRealPath("/data/hoteles.txt"));

        Hotel hotelSeleccionado = null;

        // Buscar el hotel seleccionado por ID
        for (Hotel h : listaHoteles.obtenerHoteles()) {
            if (h.getIdHotel() == idHotel) {
                hotelSeleccionado = h;
                break;
            }
        }

        if (hotelSeleccionado == null) {
            // Si no se encuentra el hotel, redirigir con un mensaje de error
            response.sendRedirect("hoteles.jsp?error=Hotel+no+encontrado");
            return;
        }

        // Calcular el total
        double total = hotelSeleccionado.getPrecioNoche() * cantidadNoches;

        // Generar la factura
        String factura = "Identificación: " + idPersona + 
                         "\nHotel: " + hotelSeleccionado.getNombre() + 
                         "\nUbicación: " + hotelSeleccionado.getUbicacion() + 
                         "\nCantidad de Noches: " + cantidadNoches + 
                         "\nTotal: $" + total;
        ManejoArchivos.guardarFactura(factura, getServletContext().getRealPath("/data/facturas.txt"));

        // Redirigir de vuelta a la misma página con los detalles de la reserva
        response.sendRedirect("hoteles.jsp?total=" + total + "&hotel=" + hotelSeleccionado.getNombre());
    }
}
