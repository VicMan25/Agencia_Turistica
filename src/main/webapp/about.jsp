<%@ include file="lib/header.jsp" %> <!-- Incluye el header -->
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Sobre Nosotros</title>

        <link href="styles/stylePlantilla.css" rel="stylesheet" type="text/css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Poppins&display=swap" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <link href="styles/css/animate.css" rel="stylesheet">
        <link href="styles/css/styles.css" rel="stylesheet">
        <link href="styles/footer.css" rel="stylesheet" type="text/css"/>
        <link href="styles/navbar.css" rel="stylesheet" type="text/css"/>
    </head>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container px-4">
            <!-- Logo y nombre de la empresa -->

            <a class="navbar-brand d-flex align-items-center" href="#InicioPag">
                <img src="images/LogoVD.png" alt="Logo" class="navbar-logo">
                <span class="ms-2">DV AGENCIA TURIST�CA</span>
            </a>
            <!-- Bot�n de toggle para dispositivos m�viles -->
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <!-- Men� de navegaci�n -->
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <li class="nav-item"><a class="nav-link" href="#">Servicios</a></li>
                    <li class="nav-item"><a class="nav-link" href="about.jsp">Sobre Nosotros</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">Restaurantes</a></li>
                    <li class="nav-item"><a class="nav-link" href="hoteles.jsp">Hoteles</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">Contacto</a></li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" id="navbarDropdownPortfolio" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Iniciar Sesi�n</a>
                        <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdownPortfolio">
                            <li><a class="dropdown-item" href="sing-up.jsp">Registrarse</a></li>
                            <li><a class="dropdown-item" href="index.jsp">Iniciar Sesi�n</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <body>

        <!-- Secci�n de Introducci�n -->
        <section class="intro-section" id="about">
            <div class="container text-center">
                <br><br><h1 class="display-4 animated fadeInUp">Sobre Nuestra Agencia Tur�stica</h1>
                <p class="lead animated fadeInUp">Ofrecemos experiencias inolvidables y personalizadas para que descubras los mejores destinos tur�sticos.</p><br><br>
            </div>
        </section>

        <!-- Misi�n y Visi�n -->
        <section class="mission-vision-section py-5" style="background-color: #212529; color: white;">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <p class="animated fadeInUp">Fundada en 2010, nuestra agencia naci� con la idea de ofrecer un enfoque fresco y �nico al turismo. Desde nuestros primeros viajes, nos hemos esforzado por combinar la pasi�n por los viajes con el compromiso de ofrecer a nuestros clientes una experiencia excepcional</p>
                    </div>
                    <div class="col-md-6">
                        <p class="animated fadeInUp">En nuestra agencia, creemos que el turismo debe ser una experiencia enriquecedora tanto para los viajeros como para las comunidades locales. Por eso, nuestros valores se centran en el respeto, la sostenibilidad y la innovaci�n</p>
                    </div>
                </div>
            </div>
        </section>

        <!-- Secci�n de Testimonios -->
        <section class="testimonials-section py-5" style="background-color: #f5f5f5;">
            <div class="container">
                <h2 class="text-center mb-5 animated fadeInUp">Lo que Dicen Nuestros Clientes</h2>
                <div class="row">
                    <div class="col-md-4">
                        <div class="testimonial-box">
                            <p>"Tuve una experiencia incre�ble gracias a esta agencia, cada detalle fue perfecto. �Recomiendo totalmente sus servicios!"</p>
                            <p>- Mar�a L�pez</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="testimonial-box">
                            <p>"El viaje a Europa fue fant�stico. Gracias por hacer que mi luna de miel fuera inolvidable."</p>
                            <p>- Juan Garc�a</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="testimonial-box">
                            <p>"Atenci�n de calidad, los paquetes tur�sticos son muy completos y cubren todas nuestras necesidades."</p>
                            <p>- Carlos Mart�nez</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Secci�n de Contacto -->
        <section class="contact-section py-5">
            <div class="container text-center">
                <h2 class="animated fadeInUp">Cont�ctanos</h2>
                <p class="lead animated fadeInUp">Si tienes alguna duda o pregunta, �no dudes en ponerte en contacto con nosotros!</p>
                <a href="contact.jsp" class="btn btn-primary animated fadeInUp">Cont�ctanos</a>
            </div>
        </section>

        <%@ include file="lib/footer.jsp" %> <!-- Incluye el footer -->

    </body>
</html>
