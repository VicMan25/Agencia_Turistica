package Modelo;

public class Hotel {

    private int idHotel;
    private String nombre;
    private String ubicacion;
    private double precioNoche;

    public Hotel() {
    }

    public Hotel(int idHotel, String nombre, String ubicacion, double precioNoche) {
        this.idHotel = idHotel;
        this.nombre = nombre;
        this.ubicacion = ubicacion;
        this.precioNoche = precioNoche;
    }

    public int getIdHotel() {
        return idHotel;
    }

    public void setIdHotel(int idHotel) {
        this.idHotel = idHotel;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getUbicacion() {
        return ubicacion;
    }

    public void setUbicacion(String ubicacion) {
        this.ubicacion = ubicacion;
    }

    public double getPrecioNoche() {
        return precioNoche;
    }

    public void setPrecioNoche(double precioNoche) {
        this.precioNoche = precioNoche;
    }
    
    

}
