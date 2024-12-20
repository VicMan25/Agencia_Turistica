package Modelo;

public class Usuario {

    private int idPersona;
    private String nombre;
    private String edad;
    private String sexo;
    private String celular;
    private String correo;
    private String contrasena;

    public Usuario() {
    }

    public Usuario(int idPersona, String nombre, String edad, String sexo, String celular, String correo, String contraseña) {
        this.idPersona = idPersona;
        this.nombre = nombre;
        this.edad = edad;
        this.sexo = sexo;
        this.celular = celular;
        this.correo = correo;
        this.contrasena = contraseña;
    }

    public int getIdPersona() {
        return idPersona;
    }

    public void setIdPersona(int idPersona) {
        this.idPersona = idPersona;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getEdad() {
        return edad;
    }

    public void setEdad(String edad) {
        this.edad = edad;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public String getCelular() {
        return celular;
    }

    public void setCelular(String celular) {
        this.celular = celular;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getContrasena() {
        return contrasena;
    }

    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }

    
}
