<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="lib/header.jsp"%>
<!DOCTYPE html>
<html lang="es">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Servicios - Agencia Turística</title>
        <link href="styles/stylePlantilla.css" rel="stylesheet" type="text/css"/>
        <link href="styles/footer.css" rel="stylesheet" type="text/css"/>
        <link href="styles/navbar.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Arizonia&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="styles/css/animate.css">
        <link rel="stylesheet" href="styles/css/owl.carousel.min.css">
        <link rel="stylesheet" href="styles/css/owl.theme.default.min.css">
        <link rel="stylesheet" href="styles/css/magnific-popup.css">
        <link rel="stylesheet" href="styles/css/bootstrap-datepicker.css">
        <link rel="stylesheet" href="styles/css/jquery.timepicker.css">
        <link rel="stylesheet" href="styles/css/flaticon.css">
        <link rel="stylesheet" href="styles/css/style.css">
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <link href="styles/styleServi.css" rel="stylesheet" />
    </head>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container px-4">
            <!-- Logo y nombre de la empresa -->

            <a class="navbar-brand d-flex align-items-center" href="#InicioPag">
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
    <body>


        <!-- Sección de Servicios -->
        <section class="services-section py-5">
            <div class="container">
                <h2 class="text-center mb-5 animated fadeInUp">Nuestros Servicios</h2>
                <div class="row">
                    <!-- Servicio Paquetes Turísticos -->
                    <div class="col-md-4">
                        <div class="service-box animated bounceIn">
                            <i class="fa fa-plane fa-3x mb-3"></i>
                            <h4>Paquetes Turísticos</h4>
                            <p>Ofrecemos paquetes completos para destinos nacionales e internacionales con opciones de personalización.</p>
                        </div>
                    </div>
                    <!-- Servicio Alojamientos -->
                    <div class="col-md-4">
                        <div class="service-box animated bounceIn">
                            <i class="fa fa-hotel fa-3x mb-3"></i>
                            <h4>Alojamientos</h4>
                            <p>Nos encargamos de encontrar las mejores opciones de alojamiento, adaptadas a tu presupuesto y necesidades.</p>
                        </div>
                    </div>
                    <!-- Servicio Transporte -->
                    <div class="col-md-4">
                        <div class="service-box animated bounceIn">
                            <i class="fa fa-car fa-3x mb-3"></i>
                            <h4>Transporte</h4>
                            <p>Nos aseguramos de que tu transporte durante el viaje sea cómodo, seguro y eficiente.</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Sección de Consultoría de Viajes -->
        <section class="consultancy-section py-5 bg-dark text-white">
            <div class="container">
                <h2 class="text-center mb-5 animated fadeInUp">Consultoría de Viajes</h2>
                <div class="row">
                    <div class="col-md-6">
                        <p class="lead">Brindamos asesoría especializada para aquellos que buscan destinos únicos y personalizados. Nuestro equipo de expertos te ayudará a elegir el viaje que mejor se adapte a tus deseos y presupuesto.</p>
                    </div>
                    <div class="col-md-6">
                        <p class="lead">Ya sea que busques una experiencia de aventura, relajación o un destino cultural, tenemos opciones para ti. ¡Déjanos ayudarte a planificar la mejor experiencia posible!</p>
                    </div>
                </div>
            </div>
        </section>

        <!-- Sección de Asistencia 24/7 -->
        <section class="assistance-section py-5">
            <div class="container">
                <h2 class="text-center mb-5 animated fadeInUp">Asistencia 24/7</h2>
                <div class="row">
                    <div class="col-md-6">
                        <p class="lead">Ofrecemos soporte las 24 horas del día, los 7 días de la semana. Si alguna vez tienes un problema durante tu viaje, nuestro equipo estará disponible para ayudarte en cualquier momento.</p>
                    </div>
                    <div class="col-md-6">
                        <p class="lead">Nuestra asistencia no solo cubre emergencias, sino también cualquier necesidad relacionada con tu viaje, asegurando que disfrutes de la experiencia sin preocupaciones.</p>
                    </div>
                </div>
            </div>
        </section>

        <!-- Sección de Testimonios -->
        <section class="testimonials-section py-5 bg-light">
            <div class="container">
                <h2 class="text-center mb-5 animated fadeInUp">Testimonios de Clientes</h2>
                <div class="row">
                    <div class="col-md-4">
                        <div class="testimonial-box">
                            <p>"Fue una experiencia increíble, todo estuvo perfectamente organizado. ¡Recomiendo esta agencia a todos!"</p>
                            <p><strong>- Ana García</strong></p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="testimonial-box">
                            <p>"La mejor agencia con la que he trabajado, su atención al cliente es insuperable y los destinos son maravillosos."</p>
                            <p><strong>- Javier López</strong></p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="testimonial-box">
                            <p>"Me ayudaron a planificar unas vacaciones perfectas, ¡sin duda volveré a viajar con ellos!"</p>
                            <p><strong>- Carmen Pérez</strong></p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Incluir Footer -->
        <jsp:include page="lib/footer.jsp" />

        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.bundle.min.js"></script>
        <script src="styles/js/owl.carousel.min.js"></script>
        <script src="styles/js/magnific-popup.js"></script>
        <script src="styles/js/bootstrap-datepicker.js"></script>
        <script src="styles/js/jquery.timepicker.js"></script>
        <script src="styles/js/animate.js"></script>

    </body>
</html>
