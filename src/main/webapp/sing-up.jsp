<%@page import="Modelo.Usuario"%>
<%@page import="Modelo.Nodo"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css">

        
        <link rel="stylesheet" href="styles/style_Usuarios.css">


        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        <!-- Elimina esta línea -->



        <title>Formulario Registro</title>
    </head>
    <body>
        <div class="form-body">
            <img src="images/icono_login.jpg" alt="user-signup">
            <p class="text">Crear Cuenta</p>
            <form class="signup-form" method="post" action="UsuariosServlet">
                <input type="text" id="nombre" name="nombre" placeholder="Nombre de usuario" required>
                <input type="number" id="edad" name="edad" placeholder="Edad" required>
                <input type="number" id="idPersona" name="idPersona" placeholder="Número de identificación" required>
                <select id="sexo" name="sexo" required>
                    <option value="">Selecciona tu sexo</option>
                    <option value="masculino">Masculino</option>
                    <option value="femenino">Femenino</option>
                    <option value="otro">Otro</option>
                </select>
                <input type="email" id="correo" name="correo" placeholder="Correo electrónico" required>
                <input type="number" id="celular" name="celular" placeholder="Número de Celular" required>
                <input type="password" id="contraseña" name="contraseña" placeholder="Contraseña" required>
                <input type="password" id="confirm-password" name="confirm-password" placeholder="Confirmar contraseña" required>

                <button type="submit">Crear Cuenta</button>
            </form>

            <a href="index.jsp" class="create-account-link">Ya tengo una cuenta</a>
        </div>

        <div class="form-body">
    <p class="text">Lista de Usuarios</p>

    <table class="user-table">
        <thead>
            <tr>
                <th>Nombre</th>
                <th>Correo Electrónico</th>
                <th>Celular</th>
                <th>Acciones</th>
            </tr>
        </thead>
        <tbody>
            <%
                Nodo nodoActual = (Nodo) request.getAttribute("usuarios");
                while (nodoActual != null) {
                    Usuario usuario = nodoActual.getUsuario();
            %>
            <tr>
                <td><%= usuario.getNombre() %></td>
                <td><%= usuario.getCorreo() %></td>
                <td><%= usuario.getCelular() %></td>
                <td>
    <!-- Botón para abrir el modal de edición -->
    <button type="button" class="btn btn-editar" data-bs-toggle="modal" data-bs-target="#modalEdit<%= usuario.getIdPersona() %>" onclick="console.log('Modal abierto para ID: <%= usuario.getIdPersona()%>')">Editar</button>

    <a href="UsuariosServlet?action=delete&idPersona=<%= usuario.getIdPersona() %>" class="btn btn-eliminar">Eliminar</a>
</td>

            </tr>

            <%
                nodoActual = nodoActual.getSiguiente();
            } // Fin del bucle while
            %>
        </tbody>
    </table>
</div>

<!-- Generación de los modales fuera de la tabla -->
<%
    nodoActual = (Nodo) request.getAttribute("usuarios");
    while (nodoActual != null) {
        Usuario usuario = nodoActual.getUsuario();
%>
    <!-- Modal para editar usuario -->
    <div class="modal fade" id="modalEdit<%= usuario.getIdPersona() %>" tabindex="-1" aria-labelledby="modalLabel<%= usuario.getIdPersona() %>" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="modalLabel<%= usuario.getIdPersona() %>">Editar Usuario</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form method="post" action="UsuariosServlet">
                    <div class="modal-body">
                        <input type="hidden" name="idPersona" value="<%= usuario.getIdPersona() %>">
                        <input type="hidden" name="editar" value="true">
                        <div class="mb-3">
                            <label for="nombre<%= usuario.getIdPersona() %>" class="form-label">Nombre</label>
                            <input type="text" class="form-control" name="nombre" value="<%= usuario.getNombre() %>" required>
                        </div>
                        <div class="mb-3">
                            <label for="edad<%= usuario.getIdPersona() %>" class="form-label">Edad</label>
                            <input type="number" class="form-control" name="edad" value="<%= usuario.getEdad() %>" required>
                        </div>
                        <div class="mb-3">
                            <label for="sexo<%= usuario.getIdPersona() %>" class="form-label">Sexo</label>
                            <select class="form-control" name="sexo" required>
                                <option value="masculino" <%= usuario.getSexo().equals("masculino") ? "selected" : "" %>>Masculino</option>
                                <option value="femenino" <%= usuario.getSexo().equals("femenino") ? "selected" : "" %>>Femenino</option>
                                <option value="otro" <%= usuario.getSexo().equals("otro") ? "selected" : "" %>>Otro</option>
                            </select>
                        </div>
                        <div class="mb-3">
                            <label for="correo<%= usuario.getIdPersona() %>" class="form-label">Correo</label>
                            <input type="email" class="form-control" name="correo" value="<%= usuario.getCorreo() %>" required>
                        </div>
                        <div class="mb-3">
                            <label for="celular<%= usuario.getIdPersona() %>" class="form-label">Celular</label>
                            <input type="number" class="form-control" name="celular" value="<%= usuario.getCelular() %>" required>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                        <button type="submit" class="btn btn-primary">Guardar Cambios</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
<%
        nodoActual = nodoActual.getSiguiente();
    }
%>



        <%
            String mensaje = (String) request.getSession().getAttribute("mensaje");
            if (mensaje != null && !mensaje.isEmpty()) {%>
        <div id="autoToast" class="toast position-fixed bottom-0 end-0" role="alert" aria-live="assertive" aria-atomic="true">
            <div class="toast-header bg-warning text-dark">
                <strong class="me-auto">Notificación</strong>
                <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
            </div>
            <div class="toast-body bg-secondary text-light">
                <%= mensaje%>
            </div>
        </div>
        <%
                session.removeAttribute("mensaje");
            }
        %>                        
        <script>
            const autoToast = new bootstrap.Toast(document.getElementById('autoToast'));
            setTimeout(function () {
                autoToast.show();
            }, 0);
        </script>

    </body>
</html>