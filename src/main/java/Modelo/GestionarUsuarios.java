package Modelo;

public class GestionarUsuarios {

    private Nodo cabeza;
    private Usuario usu;

    public GestionarUsuarios() {
        cabeza = null;
    }

    // Agregar usuario al final de la lista
    public void agregarUsuario(Usuario usuario) {
        Nodo nuevoNodo = new Nodo(usuario);
        if (cabeza == null) {
            cabeza = nuevoNodo;
        } else {
            Nodo actual = cabeza;
            while (actual.getSiguiente() != null) {
                actual = actual.getSiguiente();
            }
            actual.setSiguiente(nuevoNodo);
        }
    }

    // Editar usuario existente
    public void editarUsuario(Usuario usuario) {
        Nodo actual = cabeza;
        while (actual != null) {
            if (actual.getUsuario().getIdPersona() == usuario.getIdPersona()) {
                actual.setUsuario(usuario);
                return;
            }
            actual = actual.getSiguiente();
        }
    }

    // Eliminar usuario por identificación
    public void eliminarUsuario(int idPersona) {
        if (cabeza == null) {
            return;
        }
        if (cabeza.getUsuario().getIdPersona()== idPersona) {
            cabeza = cabeza.getSiguiente();
            return;
        }

        Nodo actual = cabeza;
        while (actual.getSiguiente() != null) {
            if (actual.getSiguiente().getUsuario().getIdPersona()==idPersona) {
                actual.setSiguiente(actual.getSiguiente().getSiguiente());
                return;
            }
            actual = actual.getSiguiente();
        }

    }

    // GUIA: consultar  usuario por su identificación
    public Usuario obtenerUsuarioPorId(int idPersona) {
        Nodo actual = cabeza;
        while (actual != null) {
            if (actual.getUsuario().getIdPersona()==idPersona) {
                return actual.getUsuario();
            }
            actual = actual.getSiguiente();
        }
        return null;
    }

    // Obtener todos los usuarios en una lista enlazada
    public Nodo getListaUsuarios() {
        return cabeza;
    }
}
