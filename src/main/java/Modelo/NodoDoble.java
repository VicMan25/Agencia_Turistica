package Modelo;

public class NodoDoble {
    private Servicios servicio;
    private NodoDoble siguiente;
    private NodoDoble anterior;

    public NodoDoble(Servicios servicio) {
        this.servicio = servicio;
        this.siguiente = null;
        this.anterior = null;
    }

    public Servicios getServicio() {
        return servicio;
    }

    public NodoDoble getSiguiente() {
        return siguiente;
    }

    public void setSiguiente(NodoDoble siguiente) {
        this.siguiente = siguiente;
    }

    public NodoDoble getAnterior() {
        return anterior;
    }

    public void setAnterior(NodoDoble anterior) {
        this.anterior = anterior;
    }
}

