package Modelo;

public class GuiaTuristico extends Persona{
    
    private Double salario;
    private String especializacion;

    public GuiaTuristico() {
    }

    public GuiaTuristico(Double salario, String especializacion) {
        this.salario = salario;
        this.especializacion = especializacion;
    }

    public GuiaTuristico(Double salario, String especializacion, int idPersona, String nombre, String edad, String sexo, String celular, String correo, String contraseña) {
        super(idPersona, nombre, edad, sexo, celular, correo, contraseña);
        this.salario = salario;
        this.especializacion = especializacion;
    }

    public Double getSalario() {
        return salario;
    }

    public void setSalario(Double salario) {
        this.salario = salario;
    }

    public String getEspecializacion() {
        return especializacion;
    }

    public void setEspecializacion(String especializacion) {
        this.especializacion = especializacion;
    }
    
    
    
    
}
