<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Servicios"%>
<%@include file="lib/header.jsp" %>

<div class="container">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <link href="styles/styleServi.css" rel="stylesheet" />


    <h1 class="mt-4">Gestión de Servicios</h1>

    <form action="gestionarServicios" method="get">
        <button type="button" class="btn btn-primary mt-2" onclick="location.href='gestionarServicios?action=servicios'">Mostrar Servicios</button>
        <a href="inicio.jsp">Iniciooo</a>
    </form>

    <hr>

    <h2>Agregar Servicio</h2>
    <form action="gestionarServicios" method="post" enctype="multipart/form-data"> 
        <input type="hidden" name="accion" value="agregar">
        <div class="form-group">
            <label for="id">ID:</label>
            <input type="number" class="form-control" id="id" name="id">
        </div>
        <div class="form-group">
            <label for="nombreServicio">Nombre del Servicio:</label>
            <input type="text" class="form-control" id="nombreServicio" name="nombreServicio">
        </div>
        <div class="form-group">
            <label for="precio">Precio:</label>
            <input type="number" class="form-control" id="precio" name="precio">
        </div>
        <div class="form-group">
            <label for="fecha">Fecha:</label>
            <input type="date" class="form-control" id="fecha" name="fecha">
        </div>
        <div class="form-group">
            <label for="descripcion">Descripción:</label>
            <textarea class="form-control" id="descripcion" name="descripcion"></textarea>
        </div>
        <div class="form-group">
            <label for="foto">Imagen:</label>
            <input type="file" class="form-control" id="foto" name="foto">
        </div>
        <button type="submit" class="btn btn-success mt-2">Agregar Servicio</button>
    </form>

    <hr>
    <h2>Listado de Servicios</h2>
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>ID</th>
                <th>Nombre del Servicio</th>
                <th>Precio</th>
                <th>Fecha</th>
                <th>Descripción</th>
                <th>Imagen</th>
                <th>Acciones</th>
            </tr>
        </thead>
        <tbody>
            <%
                // Obtenemos la lista de servicios desde el request
                List<Servicios> servicios = (List<Servicios>) request.getAttribute("servicios");

                // Si la lista no es nula y contiene servicios
                if (servicios != null && !servicios.isEmpty()) {
                    for (Servicios servicio : servicios) {
            %>
            <tr>
                <td><%= servicio.getId()%></td>
                <td><%= servicio.getNombreServicio()%></td>
                <td><%= servicio.getPrecio()%></td>
                <td><%= new SimpleDateFormat("yyyy-MM-dd").format(servicio.getFecha())%></td>
                <td><%= servicio.getDescripcion()%></td>
                <td>
                    <img src="<%= request.getContextPath() + "/" + servicio.getFoto()%>" alt="Imagen del servicio" width="80">
                </td>
                <td>
                    <form action="gestionarServicios" method="post" style="display:inline;">
                        <input type="hidden" name="accion" value="eliminar">
                        <input type="hidden" name="id" value="<%= servicio.getId()%>">
                        <button type="submit" class="btn btn-danger btn-sm">Eliminar</button>
                    </form>
                    <!-- Botón para abrir el modal -->
                    <button class="btn btn-warning btn-sm" data-toggle="modal" data-target="#editModal<%= servicio.getId()%>">Editar</button>

                    <!-- Modal para editar el servicio -->
                    <div class="modal fade" id="editModal<%= servicio.getId()%>" tabindex="-1" role="dialog" aria-labelledby="editModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="editModalLabel">Editar Servicio</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <form action="gestionarServicios" method="post" enctype="multipart/form-data"> 
                                        <input type="hidden" name="accion" value="editar">
                                        <input type="hidden" name="id" value="<%= servicio.getId()%>">
                                        <div class="form-group">
                                            <label for="nombreServicio">Nombre del Servicio:</label>
                                            <input type="text" class="form-control" id="nombreServicio" name="nombreServicio" value="<%= servicio.getNombreServicio()%>">
                                        </div>
                                        <div class="form-group">
                                            <label for="precio">Precio:</label>
                                            <input type="number" step="0.01" class="form-control" id="precio" name="precio" value="<%= servicio.getPrecio()%>">
                                        </div>
                                        <div class="form-group">
                                            <label for="fecha">Fecha:</label>
                                            <input type="date" class="form-control" id="fecha" name="fecha" value="<%= new SimpleDateFormat("yyyy-MM-dd").format(servicio.getFecha())%>">
                                        </div>
                                        <div class="form-group">
                                            <label for="descripcion">Descripción:</label>
                                            <textarea class="form-control" id="descripcion" name="descripcion"><%= servicio.getDescripcion()%></textarea>
                                        </div>
                                        <div class="form-group">
                                            <label for="foto">Imagen:</label>
                                            <input type="file" class="form-control" id="foto" name="foto">
                                        </div>
                                        <button type="submit" class="btn btn-primary">Guardar Cambios</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </td>
            </tr>
            <%
                }
            } else {
            %>
            <tr>
                <td colspan="7">No hay servicios registrados.</td>
            </tr>
            <%
                }
            %>
        </tbody>
    </table>
</div>
<%@include file="lib/footer.jsp" %>
