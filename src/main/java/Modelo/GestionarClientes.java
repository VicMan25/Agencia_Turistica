/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletContext;
import javax.swing.JOptionPane;

public class GestionarClientes implements Serializable {
    
    GestionarClientes agenciaturistica;
    
    private List<Cliente> misClientes;

    public void agregarCliente(Cliente cliente, ServletContext context) throws IOException {
        cargarClientesDesdeArchivo(context); // Cargar equipos antes de agregar uno nuevo
        misClientes.add(cliente);
        guardarClientesEnArchivo(context);
    }

    public void eliminarCliente(int idPersona, ServletContext context) throws IOException {
        cargarClientesDesdeArchivo(context);
        if (misClientes != null) {
            Cliente clienteAEliminar = null;
            for (Cliente c : misClientes) {
                if (c.getIdPersona() == idPersona) {
                    clienteAEliminar = c;
                    break;
                }
            }
            if (clienteAEliminar != null) {
                misClientes.remove(clienteAEliminar);
                guardarClientesEnArchivo(context);
            }
        }
    }

    public Cliente buscarCliente(int idPersona, ServletContext context) {
        cargarClientesDesdeArchivo(context);
        for (Cliente c : misClientes) {
            if (c.getIdPersona() == idPersona) {
                return c;
            }
        }
        return null;
    }

    public List<Cliente> getMisClientes(ServletContext context) {
        cargarClientesDesdeArchivo(context);
        return misClientes;
    }

    public void cargarClientesDesdeArchivo(ServletContext context) {
        // Reutilizamos la ruta relativa del archivo
        String relativePath = "/data/clientes.txt";
        String absPath = context.getRealPath(relativePath);

        File archivo = new File(absPath);
        misClientes = new ArrayList<>();

        if (archivo.exists()) {
            try (BufferedReader br = new BufferedReader(new FileReader(archivo))) {
                String linea;
                while ((linea = br.readLine()) != null) {
                    String[] datos = linea.split(";");
                    int idPersona = Integer.parseInt(datos[0]);
                    String nombre = datos[1];
                    String edad = datos[2];
                    String sexo = datos[3];
                    String celular = datos[4];
                    String correo = datos[5];
                    String contraseña = datos[6];
                    Cliente cliente = new Cliente(idPersona, nombre, edad, sexo, celular, correo, contraseña);
                    misClientes.add(cliente);
                }
            } catch (IOException e) {
                System.err.println("Error al cargar los clientes desde el archivo: " + e.getMessage());
            }
        }
    }

    public void guardarClientesEnArchivo(ServletContext context) {
        // Reutilizamos la ruta relativa del archivo
        String relativePath = "/data/clientes.txt";
        String absPath = context.getRealPath(relativePath);

        File archivo = new File(absPath);
        if (!archivo.exists()) {
            try {
                archivo.createNewFile();
            } catch (IOException e) {
                System.err.println("Error al crear el archivo: " + e.getMessage());
            }
        }
        try (BufferedWriter bw = new BufferedWriter(new FileWriter(archivo))) {
            for (Cliente c : misClientes) {
                bw.write(c.getIdPersona() + ";" + c.getNombre() + ";" + c.getEdad() + ";" + c.getSexo() + ";" + c.getCelular() + ";" + c.getCorreo() + ";" + c.getContraseña());
                bw.newLine();
            }
        } catch (IOException e) {
            System.err.println("Error al guardar los clientes en el archivo: " + e.getMessage());
        }
    }

    
    public void editarCliente(int idPersona, String nuevoNombre, String nuevoCorreo, String nuevoCelular, ServletContext context) throws IOException {
    
    if (nuevoNombre == null || nuevoNombre.isEmpty() || nuevoCorreo == null || nuevoCorreo.isEmpty()) {
        throw new IllegalArgumentException("Nombre y correo no pueden ser nulos o vacíos");
    }

    Cliente cliente = buscarCliente(idPersona, context);
    if (cliente == null) {
        throw new IllegalArgumentException("No se encontró el cliente con ID: " + idPersona);
    }

    cliente.setNombre(nuevoNombre);
    cliente.setCorreo(nuevoCorreo);

    if (nuevoCelular != null && !nuevoCelular.isEmpty()) {
        cliente.setCelular(nuevoCelular);
    }

    guardarClientesEnArchivo(context);
}
  
    
    
    public void serializarAgenciaTuristica() throws IOException{
    	File archivo = new File ("./data/agenciaTuristica.data");
    	FileOutputStream fos = new FileOutputStream(archivo);
    	ObjectOutputStream oos = new ObjectOutputStream(fos);
    	oos.writeObject(agenciaturistica);
    	oos.close();
    	
    }
    
    public void deserializarAgenciaTuristica() throws IOException, FileNotFoundException, ClassNotFoundException{
    	File archivo = new File ("./data/agenciaTuristica.data");
    	FileInputStream fis = new FileInputStream(archivo);
    	ObjectInputStream ois = new ObjectInputStream(fis);
    	agenciaturistica =(GestionarClientes)ois.readObject();
    	ois.close();
    	
    }
    
    public void reqFuncOpcion1( )
    {
        try {
        	serializarAgenciaTuristica();
            JOptionPane.showMessageDialog(null, "Serialización correcta", "Respuesta", JOptionPane.INFORMATION_MESSAGE );
		} catch (IOException e) {
			JOptionPane.showMessageDialog(null, "Error al serializar" +e.getMessage(), "Respuesta", JOptionPane.ERROR_MESSAGE );
		}
    }

    public void reqFuncOpcion2( )
    {
        try {
        	deserializarAgenciaTuristica();
        	JOptionPane.showMessageDialog(null, "Deserialización correcta", "Respuesta", JOptionPane.INFORMATION_MESSAGE );
        	
		} catch (IOException | ClassNotFoundException e) {
			JOptionPane.showMessageDialog(null, "Error al deserializar" +e.getMessage(), "Respuesta", JOptionPane.ERROR_MESSAGE );
		}
    }


    
}
