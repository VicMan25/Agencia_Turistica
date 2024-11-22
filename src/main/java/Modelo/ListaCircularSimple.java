package Modelo;

// Clase que representa una lista circular enlace simple
import java.util.ArrayList;

public class ListaCircularSimple {

    Nodo cabeza; // Nodo inicial de la lista
    Nodo ultimo; // Nodo final de la lista

    // Clase interna para representar un nodo
    private class Nodo {

        Hotel hotel;
        Nodo siguiente;

        Nodo(Hotel hotel) {
            this.hotel = hotel;
            this.siguiente = null;
        }
    }

    // Método para agregar un hotel a la lista
    public void agregar(Hotel hotel) {
        Nodo nuevoNodo = new Nodo(hotel);

        // Si la lista está vacía
        if (cabeza == null) {
            cabeza = nuevoNodo;  // El nuevo nodo es la cabeza
            ultimo = nuevoNodo;  // También es el último nodo
            nuevoNodo.siguiente = cabeza; // El siguiente apunta a sí mismo para mantener la circularidad
        } else {
            // De lo contrario, agregar el nodo al final y mantener la circularidad
            ultimo.siguiente = nuevoNodo; // El último nodo apunta al nuevo nodo
            nuevoNodo.siguiente = cabeza; // El nuevo nodo apunta a la cabeza
            ultimo = nuevoNodo; // Actualizamos el último nodo
        }
    }

    // Método para obtener todos los hoteles en la lista
    public ArrayList<Hotel> obtenerHoteles() {
        ArrayList<Hotel> listaHoteles = new ArrayList<>();
        if (cabeza != null) {
            Nodo temp = cabeza;
            do {
                listaHoteles.add(temp.hotel);
                temp = temp.siguiente;
            } while (temp != cabeza);
        }
        return listaHoteles;
    }

    // Método para calcular el total del precio por noche de los hoteles seleccionados
    public double calcularTotal() {
        double varAcumulador = 0;
        if (cabeza != null) {
            Nodo temp = cabeza;
            do {
                varAcumulador += temp.hotel.getPrecioNoche(); 
                temp = temp.siguiente;
            } while (temp != cabeza);
        }
        return varAcumulador;
    }
}
