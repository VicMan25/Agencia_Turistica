
<%@page import="Modelo.Usuario"%>
<%@page import="Modelo.Nodo"%>

<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="styles/style_Usuarios.css">
        <title>Lista de Usuarios</title>
    </head>
    <body>

        <div class="form-body">

            <p class="text">Lista de Usuarios</p>

            <table class="user-table">
                <thead>
                    <tr>
                        <th>Nombre</th>
                        <th>Correo Electrónico</th>
                        <th>Celular</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        Nodo nodoActual = (Nodo) request.getAttribute("usuarios");
                        while (nodoActual != null) {
                            Usuario usuario = nodoActual.getUsuario();
                    %>
                    <tr>
                        <td><%= usuario.getNombre()%></td>
                        <td><%= usuario.getCorreo()%></td>
                        <td><%= usuario.getCelular()%></td>
                    </tr>
                    <%
                            nodoActual = nodoActual.getSiguiente();
                    }%>

                </tbody>
            </table>

            <div class="link-container">
                <a href="#" class="create-account-link">Serializar</a>
                <a href="#" class="create-account-link">Deserializar</a>
            </div>

            <a href="inicio.jsp" class="create-account-link">Volver al inicio</a>
            <a href="sing-up.jsp" class="create-account-link">Registrarse</a>
        </div>

    </body>
</html>
