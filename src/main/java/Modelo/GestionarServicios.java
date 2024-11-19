package Modelo;

import java.io.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class GestionarServicios {

    private ListaDoble listaDoble;
    private static final String ARCHIVO_SERVICIOS = "/data/servicios.txt";
    private static final SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("yyyy-MM-dd");

    public GestionarServicios() {
        this.listaDoble = new ListaDoble();
        cargarServicios(); // Carga los servicios desde el archivo al inicializar
    }

    public List<Servicios> listarServicios() {
        return listaDoble.listar();
    }

    public void agregarServicio(int id, String nombreServicio, Double precio, Date fecha, String descripcion, String foto) {
        Servicios nuevoServicio = new Servicios(id, nombreServicio, precio, fecha, descripcion, foto);
        listaDoble.agregar(nuevoServicio);
        guardarServicios(); // Actualiza el archivo después de agregar
    }

    public void eliminarServicios(int id) {
        listaDoble.eliminar(id);
        guardarServicios(); // Actualiza el archivo después de eliminar
    }

    public void editarServicio(int id, String nombreServicio, Double precio, Date fecha, String descripcion, String foto) {
        listaDoble.editar(id, nombreServicio, precio, fecha, descripcion, foto);
        guardarServicios(); // Actualiza el archivo después de editar
    }

    public Servicios obtenerServicio(int id) {
        return listaDoble.obtener(id); // Delegamos la lógica de búsqueda a la clase ListaDoble
    }

    private void guardarServicios() {
        try (BufferedWriter writer = new BufferedWriter(new FileWriter(ARCHIVO_SERVICIOS))) {
            for (Servicios servicio : listarServicios()) {
                String linea = String.format("%d|%s|%f|%s|%s|%s",
                        servicio.getId(),
                        servicio.getNombreServicio(),
                        servicio.getPrecio(),
                        DATE_FORMAT.format(servicio.getFecha()),
                        servicio.getDescripcion(),
                        servicio.getFoto());
                writer.write(linea);
                writer.newLine();
            }
        } catch (IOException e) {
            System.err.println("Error al guardar los servicios: " + e.getMessage());
        }
    }

    private void cargarServicios() {
        File archivo = new File(ARCHIVO_SERVICIOS);
        if (!archivo.exists()) {
            return; 
        }

        try (BufferedReader reader = new BufferedReader(new FileReader(ARCHIVO_SERVICIOS))) {
            String linea;
            while ((linea = reader.readLine()) != null) {
                String[] partes = linea.split("\\|");
                int id = Integer.parseInt(partes[0]);
                String nombreServicio = partes[1];
                double precio = Double.parseDouble(partes[2]);
                Date fecha = DATE_FORMAT.parse(partes[3]);
                String descripcion = partes[4];
                String foto = partes[5];

                Servicios servicio = new Servicios(id, nombreServicio, precio, fecha, descripcion, foto);
                listaDoble.agregar(servicio);
            }
        } catch (Exception e) {
            System.err.println("Error al cargar los servicios: " + e.getMessage());
        }
    }
}
