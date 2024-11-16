<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Compra de Paquete Turístico</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="styles.css"> <!-- Si tienes estilos adicionales -->
</head>
<body>
    <header>
        <!-- Incluye aquí el navbar si es necesario -->
    </header>
    
    <main>
        <section class="py-5">
            <div class="container px-5">
                <div class="row gx-5">
                    <!-- Tarjeta del Paquete -->
                    <div class="col-lg-8 mx-auto">
                        <div class="card mb-4 shadow-sm border-0">
                            <img class="card-img-top" src="${paquete.imagen}" alt="${paquete.titulo}">
                            <div class="card-body">
                                <h2 class="card-title">${paquete.titulo}</h2>
                                <p class="card-text">${paquete.descripcion}</p>
                                <p class="card-text"><strong>Precio:</strong> ${paquete.precio} USD</p>
                                <p class="card-text"><strong>Duración:</strong> ${paquete.duracion}</p>
                                <p class="card-text"><strong>Incluye:</strong> ${paquete.incluye}</p>
                                
                                <!-- Información adicional del paquete -->
                                <div class="alert alert-info mt-4" role="alert">
                                    <h4 class="alert-heading">Información Adicional</h4>
                                    <p>${paquete.informacionAdicional}</p>
                                </div>
                                
                                <!-- Formulario de compra -->
                                <form action="procesarCompra.jsp" method="post">
                                    <div class="mb-3">
                                        <label for="nombre" class="form-label">Nombre Completo</label>
                                        <input type="text" class="form-control" id="nombre" name="nombre" required>
                                    </div>
                                    <div class="mb-3">
                                        <label for="email" class="form-label">Correo Electrónico</label>
                                        <input type="email" class="form-control" id="email" name="email" required>
                                    </div>
                                    <div class="mb-3">
                                        <label for="telefono" class="form-label">Teléfono</label>
                                        <input type="tel" class="form-control" id="telefono" name="telefono" required>
                                    </div>
                                    <div class="mb-3">
                                        <label for="numPersonas" class="form-label">Número de Personas</label>
                                        <input type="number" class="form-control" id="numPersonas" name="numPersonas" min="1" required>
                                    </div>
                                    <button type="submit" class="btn btn-primary">Confirmar Compra</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>

    <footer class="py-4 bg-light">
        <div class="container text-center">
            <p class="mb-0">&copy; 2024 Tu Empresa de Turismo. Todos los derechos reservados.</p>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
