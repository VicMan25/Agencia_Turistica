package Modelo;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

public class ManejoArchivos {

    // Método para guardar un usuario en el archivo
    public static void guardarUsuario(Usuario usuario, String filePath) {
        try (FileWriter writer = new FileWriter(filePath, true)) {
            writer.write(usuario.getIdPersona() + ","
                    + usuario.getNombre() + ","
                    + usuario.getEdad() + ","
                    + usuario.getSexo() + ","
                    + usuario.getCelular() + ","
                    + usuario.getCorreo() + ","
                    + usuario.getContrasena() + "\n");
            System.out.println("Usuario guardado correctamente: " + usuario.getIdPersona()+ filePath);
        } catch (IOException e) {
            e.printStackTrace();
            System.out.println("Error al guardar el usuario: " + e.getMessage());
        }
    }

// Método para validar un usuario basado en su idPersona y contraseña
    public static boolean validarUsuario(int idPersona, String contrasena, String filePath) {
        try (BufferedReader br = new BufferedReader(new FileReader(filePath))) {
            String line;
            while ((line = br.readLine()) != null) {
                String[] fields = line.split(",");
                // Convertimos el idPersona leído del archivo a int y lo comparamos
                if (Integer.parseInt(fields[0]) == idPersona && fields[6].equals(contrasena)) {
                    return true; // Usuario validado correctamente
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
            System.out.println("Error al validar el usuario: " + e.getMessage());
        } catch (NumberFormatException e) {
            e.printStackTrace();
            System.out.println("Error al convertir el idPersona: " + e.getMessage());
        }
        return false; // Usuario no encontrado o contraseña incorrecta
    }

}
