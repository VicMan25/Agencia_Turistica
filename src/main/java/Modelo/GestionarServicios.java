package Modelo;

import java.util.Date;
import java.util.List;

public class GestionarServicios {

    private ListaDoble listaDoble;

    public GestionarServicios() {
        this.listaDoble = new ListaDoble();
    }

    public List<Servicios> listarServicios() {
        return listaDoble.listar();
    }

    public void agregarServicio(int id, String nombreServicio, Double precio, Date fecha, String descripcion, String foto) {
        Servicios nuevoServicio = new Servicios(id, nombreServicio, precio, fecha, descripcion, foto);
        listaDoble.agregar(nuevoServicio);
    }

    public void eliminarServicios(int id) {
        listaDoble.eliminar(id);
    }

    public void editarServicio(int id, String nombreServicio, Double precio, Date fecha, String descripcion, String foto) {
        listaDoble.editar(id, nombreServicio, precio, fecha, descripcion, foto);
    }

    public Servicios obtenerServicio(int id) {
        return listaDoble.obtener(id); // Delegamos la lógica de búsqueda a la clase ListaDoble
    }

}
