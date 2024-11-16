package Modelo;

import java.util.Date;

public class Servicios {
    
    private int id; // Identificador único del servicio
    private String nombreServicio; // Nombre del servicio
    private Double precio; // Precio del servicio
    private Date fecha; // Fecha de disponibilidad o de oferta
    private String descripcion; // Descripción del servicio
    private String foto; // URL de la foto del servicio

    // Constructor por defecto
    public Servicios() {
    }

    // Constructor con parámetros
    public Servicios(int id, String nombreServicio, Double precio, Date fecha, String descripcion, String foto) {
        this.id = id;
        this.nombreServicio = nombreServicio;
        this.precio = precio;
        this.fecha = fecha;
        this.descripcion = descripcion;
        this.foto = foto;
    }

    // Getters y setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombreServicio() {
        return nombreServicio;
    }

    public void setNombreServicio(String nombreServicio) {
        this.nombreServicio = nombreServicio;
    }

    public Double getPrecio() {
        return precio;
    }

    public void setPrecio(Double precio) {
        this.precio = precio;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }
    
    // Métodos para manejar servicios (solo ejemplos)
    public void agregarServicio() {
        // Implementar lógica para agregar un servicio
    }
    
    public void editarServicio() {
        // Implementar lógica para editar un servicio
    }
    
    public void eliminarServicio() {
        // Implementar lógica para eliminar un servicio
    }
}
