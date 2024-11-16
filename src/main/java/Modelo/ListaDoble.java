package Modelo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
public class ListaDoble {
    private NodoDoble cabeza;
    public ListaDoble() {
        this.cabeza = null;
    }

    // Método para agregar un producto a la lista doble
    public void agregar(Servicios servicio) {
        NodoDoble nuevoNodo = new NodoDoble(servicio);
        if (cabeza == null) {
            cabeza = nuevoNodo;
        } else {
            NodoDoble temp = cabeza;
            while (temp.getSiguiente() != null) {
                temp = temp.getSiguiente();
            }
            temp.setSiguiente(nuevoNodo);
            nuevoNodo.setAnterior(temp);
        }
    }

    // Método para listar los productos en la lista doble
    public List<Servicios> listar() {
        List<Servicios> servicio = new ArrayList<>();
        NodoDoble temp = cabeza;
        while (temp != null) {
            servicio.add(temp.getServicio());
            temp = temp.getSiguiente();
        }
        return servicio;
    }

    // Método para eliminar un servicio por id
    public void eliminar(int idServicio) {
        if (cabeza == null) return;

        if (cabeza.getServicio().getId()==(idServicio)) {
            cabeza = cabeza.getSiguiente();
            if (cabeza != null) {
                cabeza.setAnterior(null);
            }
        } else {
            NodoDoble temp = cabeza;
            while (temp.getSiguiente() != null && temp.getSiguiente().getServicio().getId() == idServicio) {

                temp = temp.getSiguiente();
            }
            if (temp.getSiguiente() != null) {
                temp.setSiguiente(temp.getSiguiente().getSiguiente());
                if (temp.getSiguiente() != null) {
                    temp.getSiguiente().setAnterior(temp);
                }
            }
        }
    }
    // Método para editar un producto
    
    public void editar(int id, String nombreServicio, double precio, Date fecha, String descripcion, String foto) {
        NodoDoble temp = cabeza;
        while (temp != null) {
            if (temp.getServicio().getId()==(id)) {
                temp.getServicio().setNombreServicio(nombreServicio);
                temp.getServicio().setPrecio(precio);
                temp.getServicio().setFecha(fecha);
                temp.getServicio().setDescripcion(descripcion);
                temp.getServicio().setFoto(foto);
                return;
            }
            temp = temp.getSiguiente();
        }
    }
    public Servicios obtener(int id) {
    NodoDoble temp = cabeza; // Comenzamos desde la cabeza
    while (temp != null) {
        if (temp.getServicio().getId() == id) { // Si encontramos el ID
            return temp.getServicio(); // Retornamos el servicio
        }
        temp = temp.getSiguiente(); // Avanzamos al siguiente nodo
    }
    return null; // Retornamos null si no encontramos el servicio con el ID
}

}

