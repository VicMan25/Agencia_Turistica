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
