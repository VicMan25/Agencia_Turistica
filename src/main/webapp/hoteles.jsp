<%@page import="Modelo.ListaCircularSimple"%> 
<%@page import="Modelo.Hotel"%>
<%@page import="Modelo.ManejoArchivos"%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<%@include file="lib/header.jsp" %>
<link href="styles/footer.css" rel="stylesheet" type="text/css"/>
<link href="styles/navbar.css" rel="stylesheet" type="text/css"/>
<link href="styles/hotel.css" rel="stylesheet" type="text/css"/>

<div class="container">
    <h2>Hoteles</h2>
    <div class="form-container">
        <div class="form-body">
            <h3 class="text">Selecciona un hotel</h3>
            <form action="sv_Hoteles" method="post">
                <div class="form-group">
                    <label for="hotel">Hoteles disponibles:</label>
                    <select class="form-control" id="hotel" name="hotel" required>
                        <%
                            // Cargar lista circular de hoteles desde el archivo
                            ListaCircularSimple listaHoteles = ManejoArchivos.cargarHoteles(application.getRealPath("/data/hoteles.txt"));

                            // Iterar sobre los hoteles para mostrarlos en el select
                            for (Hotel h : listaHoteles.obtenerHoteles()) {
                        %>
                        <option value="<%= h.getIdHotel()%>">
                            <%= h.getNombre()%> - <%= h.getUbicacion()%> - $<%= h.getPrecioNoche()%>/noche
                        </option>
                        <%
                            }
                        %>
                    </select>
                </div>
                <div class="form-group">
                    <label for="noches">Cantidad de noches:</label>
                    <input type="number" class="form-control" id="noches" name="noches" min="1" required>
                </div>
                <button type="submit" class="btn btn-primary">Reservar</button>
            </form>
        </div>
    </div>
</div>

<!-- Modal de Confirmación -->
<div id="confirmationModal" class="modal">
    <div class="modal-content">
        <span class="close" onclick="closeModal()">&times;</span>
        <h2>Confirmación de Reserva</h2>
        <p>¡Gracias por su reserva!</p>
        <p><strong>Hotel:</strong> <span id="hotelReservado"></span></p>
        <p><strong>Total pagado:</strong> $<span id="totalPagado"></span></p>
        <button class="btn btn-primary" onclick="closeModal()">Aceptar</button>
    </div>
</div>

<script>
    // Mostrar el modal si se recibe el parámetro "total"
    const queryParams = new URLSearchParams(window.location.search);
    const total = queryParams.get("total");
    const hotelNombre = queryParams.get("hotel");

    if (total && hotelNombre) {
        document.getElementById("hotelReservado").textContent = hotelNombre;
        document.getElementById("totalPagado").textContent = total;
        document.getElementById("confirmationModal").style.display = "block";
    }

    // Función para cerrar el modal
    function closeModal() {
        document.getElementById("confirmationModal").style.display = "none";
        // Redirigir a la misma página sin parámetros (opcional)
        window.location.href = "hoteles.jsp";
    }
</script>

<%@include file="lib/footer.jsp" %>
