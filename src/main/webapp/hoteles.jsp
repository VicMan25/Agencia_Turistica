<%@page import="Modelo.ListaCircularSimple"%> 
<%@page import="Modelo.Hotel"%>
<%@page import="Modelo.ManejoArchivos"%>
<%@include file="lib/header.jsp" %>
<link href="styles/hotelesStyles.css" rel="stylesheet" type="text/css"/>
<link href="styles/navbar.css" rel="stylesheet" type="text/css"/>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container px-4">
        <!-- Logo y nombre de la empresa -->
        <a class="navbar-brand d-flex align-items-center" href="inicio.jsp">
            <img src="images/LogoVD.png" alt="Logo" class="navbar-logo">
            <span class="ms-2">DV AGENCIA TURISTÍCA</span>
        </a>

        <!-- Botón de toggle para dispositivos móviles -->
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Menú de navegación -->
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                <li class="nav-item"><a class="nav-link" href="#">Servicios</a></li>
                <li class="nav-item"><a class="nav-link" href="about.jsp">Sobre Nosotros</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Restaurantes</a></li>
                <li class="nav-item"><a class="nav-link" href="hoteles.jsp">Hoteles</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Contacto</a></li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdownPortfolio" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Iniciar Sesión</a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdownPortfolio">
                        <li><a class="dropdown-item" href="sing-up.jsp">Registrarse</a></li>
                        <li><a class="dropdown-item" href="index.jsp">Iniciar Sesión</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="container">
    <h2>Ver Hoteles</h2>
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

<style>
    /* Estilos para el modal */
    .modal {
        display: none;
        position: fixed;
        z-index: 1000;
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
        overflow: auto;
        background-color: rgba(0, 0, 0, 0.5);
    }

    .modal-content {
        background-color: #fff;
        margin: 15% auto;
        padding: 20px;
        border: 1px solid #888;
        width: 80%;
        max-width: 500px;
        border-radius: 10px;
        text-align: center;
    }

    .modal-content .close {
        position: absolute;
        right: 10px;
        top: 10px;
        font-size: 24px;
        cursor: pointer;
    }

    .modal-content h2 {
        margin-top: 0;
    }
</style>

<%@include file="lib/footer.jsp" %>
