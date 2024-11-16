
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@include file="lib/header.jsp" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Modern Business - Start Bootstrap Template</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="styles/stylePlantilla.css" rel="stylesheet" />

    </head>
    <body class="d-flex flex-column h-100">
        <main class="flex-shrink-0">
            <!-- Navigation-->
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
                            <li class="nav-item"><a class="nav-link" href="#">Sobre Nosotros</a></li>
                            <li class="nav-item"><a class="nav-link" href="#">Restaurantes</a></li>
                            <li class="nav-item"><a class="nav-link" href="#">Hoteles</a></li>
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

            <!-- Header-->
            <header class="bg-dark py-5">
                <div class="container px-5">
                    <div class="row gx-5 align-items-center justify-content-center">
                        <section id="InicioPag">
                            <div class="col-12 text-center mb-4">
                                <img src="images/LogoVD.png" alt="Logo" class="img-fluid" style="max-width: 150px;">
                            </div>
                        </section>
                        <div class="col-lg-8 col-xl-7 col-xxl-6 custom-text-section">
                            <div class="my-5 text-center text-xl-custom-start">
                                <h1 class="display-5 fw-bolder text-white mb-2">Sandoná: Donde la Naturaleza y la Cultura se Encuentran</h1>
                                <p class="lead fw-normal text-white-50 mb-4">Descubre la belleza de nuestros paisajes, sumérgete en nuestras tradiciones y vive momentos inolvidables en el corazón de Nariño. 
                                    En Sandoná, cada rincón te invita a explorar y a conectarte con lo auténtico. Te esperamos para que descubras todo lo que este maravilloso destino tiene para ofrecerte.</p>
                                <div class="d-grid gap-3 d-sm-flex justify-content-sm-center justify-content-xl-custom-start">
                                    <a class="btn btn-primary btn-lg px-4 me-sm-3" href="#PlanesT">Ver Paquetes</a>
                                    <a class="btn btn-primary btn-lg px-4 me-sm-3" href="servi.jsp">GesServicios</a>
                                </div>
                            </div>
                        </div>

                        <div class="col-xl-5 col-xxl-6 d-none d-xl-block text-center">
                            <img class="img-fluid rounded-3 my-5" src="images/fondoLogin.jpg" alt="Imagen de Sandoná" />
                        </div>
                    </div>
                </div>

            </header>

            <section class="py-5" id="PlanesT">
                <div class="container px-5 my-5">
                    <div class="row gx-5 justify-content-center">
                        <div class="col-lg-8 col-xl-6">
                            <div class="text-center">
                                <h2 class="fw-bolder">Nuestros Tours</h2>
                                <p class="lead fw-normal text-muted mb-5">A continuación, te presentaremos una selección de nuestros tours, cada uno diseñado para que vivas la esencia de Sandoná, ¡Elige tu próxima aventura!"</p>
                            </div>
                        </div>
                    </div>
                    <div class="row gx-5">
                        <!-- Tarjeta con botón para abrir el modal -->
                        <div class="col-lg-4 mb-5">
                            <div class="card h-100 shadow border-0">
                                <img class="card-img-top" src="images/portada_gastro.jpg" alt="..." />
                                <div class="card-body p-4">
                                    <div class="badge bg-primary bg-gradient rounded-pill mb-2">Recomendado</div>
                                    <a class="text-decoration-none link-dark stretched-link" href="#!" data-bs-toggle="modal" data-bs-target="#tourModal1">
                                        <h5 class="card-title mb-3">Sabores de Sandoná: Un Festín Tradicional</h5>
                                    </a>
                                    <p class="card-text mb-0">Descubre la riqueza gastronómica de Sandoná a través de este tour. Disfruta de platillos típicos, elaborados con ingredientes locales, mientras conoces las historias y tradiciones culinarias que se han transmitido de generación en generación.</p>
                                </div>
                                <div class="card-footer p-4 pt-0 bg-transparent border-top-0">
                                    <div class="d-flex align-items-end justify-content-between">
                                        <div class="d-flex align-items-center">
                                            <img class="rounded-circle me-3" src="images/estrellaOP.jpg" alt="..." />
                                            <div class="small">
                                                <div class="fw-bold">Calificaciones</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Modal -->
                        <div class="modal fade" id="tourModal1" tabindex="-1" aria-labelledby="modalLabel1" aria-hidden="true">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="modalLabel1">Sabores de Sandoná: Un Festín Tradicional</h5>
                                    </div>
                                    <div class="modal-body">
                                        <img class="img-fluid mb-4" src="images/portada_gastro.jpg" alt="Imagen del tour" />
                                        <p>Descubre la riqueza gastronómica de Sandoná a través de este tour. Disfruta de platillos típicos, elaborados con ingredientes locales, mientras conoces las historias y tradiciones culinarias que se han transmitido de generación en generación.</p>
                                        <p><strong>Precio:</strong> $200.000</p>
                                        <p><strong>Duración:</strong> 3 horas</p>
                                        <p><strong>Incluye:</strong> Guía turístico, comidas, transporte</p>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                        <a href="#" class="btn btn-primary">Comprar Paquete</a>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="col-lg-4 mb-5">
                            <div class="card h-100 shadow border-0">
                                <img class="card-img-top" src="images/portada_cultura.jpg" alt="Imagen del tour" />
                                <div class="card-body p-4">
                                    <div class="badge bg-primary bg-gradient rounded-pill mb-2">Recomendado</div>
                                    <a class="text-decoration-none link-dark stretched-link" href="#" data-bs-toggle="modal" data-bs-target="#modalCultura">
                                        <h5 class="card-title mb-3">Tradición y Raíces: Cultura Viva en Sandoná</h5>
                                    </a>
                                    <p class="card-text mb-0">Sumérgete en el corazón cultural de Sandoná con este recorrido. Visita sitios históricos, conoce a los artesanos locales y vive de cerca las festividades y costumbres que dan vida a nuestra tierra.</p>
                                </div>
                                <div class="card-footer p-4 pt-0 bg-transparent border-top-0">
                                    <div class="d-flex align-items-end justify-content-between">
                                        <div class="d-flex align-items-center">
                                            <img class="rounded-circle me-3" src="images/estrellaOP.jpg" alt="Calificaciones" />
                                            <div class="small">
                                                <div class="fw-bold">Calificaciones</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Modal -->
                        <div class="modal fade" id="modalCultura" tabindex="-1" aria-labelledby="modalLabelCultura" aria-hidden="true">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="modalLabelCultura">Tradición y Raíces: Cultura Viva en Sandoná</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <img class="img-fluid mb-4" src="images/portada_cultura.jpg" alt="Imagen del tour" />
                                        <p>Sumérgete en el corazón cultural de Sandoná con este recorrido. Visita sitios históricos, conoce a los artesanos locales y vive de cerca las festividades y costumbres que dan vida a nuestra tierra.</p>
                                        <p><strong>Precio:</strong> $80 USD</p>
                                        <p><strong>Duración:</strong> 4 horas</p>
                                        <p><strong>Incluye:</strong> Guía turístico, entrada a sitios culturales, transporte</p>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                        <a href="compra.jsp" class="btn btn-primary">Comprar Paquete</a>
                                    </div>
                                </div>
                            </div>
                        </div>







                        <div class="col-lg-4 mb-5">
                            <!-- Tarjeta -->
                            <div class="card h-100 shadow border-0">
                                <img class="card-img-top" src="images/portada_aventura.jpg" alt="Imagen del tour" />
                                <div class="card-body p-4">
                                    <div class="badge bg-primary bg-gradient rounded-pill mb-2">Recomendado</div>
                                    <a class="text-decoration-none link-dark stretched-link" href="#" data-bs-toggle="modal" data-bs-target="#modalAventura">
                                        <h5 class="card-title mb-3">Paisajes Inolvidables: Explora la Naturaleza de Sandoná</h5>
                                    </a>
                                    <p class="card-text mb-0">Embárcate en una aventura por los paisajes más impresionantes de Sandoná. Camina entre montañas, descubre ríos y cascadas, y disfruta de la belleza natural que convierte a esta región en un destino inolvidable.</p>
                                </div>
                                <div class="card-footer p-4 pt-0 bg-transparent border-top-0">
                                    <div class="d-flex align-items-end justify-content-between">
                                        <div class="d-flex align-items-center">
                                            <img class="rounded-circle me-3" src="images/estrellaOP.jpg" alt="Calificaciones" />
                                            <div class="small">
                                                <div class="fw-bold">Calificaciones</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Modal -->
                        <div class="modal fade" id="modalAventura" tabindex="-1" aria-labelledby="modalLabelAventura" aria-hidden="true">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="modalLabelAventura">Paisajes Inolvidables: Explora la Naturaleza de Sandoná</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <img class="img-fluid mb-4" src="images/portada_aventura.jpg" alt="Imagen del tour" />
                                        <p>Embárcate en una aventura por los paisajes más impresionantes de Sandoná. Camina entre montañas, descubre ríos y cascadas, y disfruta de la belleza natural que convierte a esta región en un destino inolvidable.</p>
                                        <p><strong>Precio:</strong> $90 USD</p>
                                        <p><strong>Duración:</strong> 5 horas</p>
                                        <p><strong>Incluye:</strong> Guía turístico, transporte, entradas a reservas naturales</p>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                        <a href="compra.jsp" class="btn btn-primary">Comprar Paquete</a>
                                    </div>
                                </div>
                            </div>
                        </div>


                    </div>

                    <div class="row gx-5">
                        <div class="col-lg-4 mb-5">
                            <!-- Tarjeta -->
                            <div class="card h-100 shadow border-0">
                                <img class="card-img-top" src="images/portada_eco.jpg" alt="Imagen del tour" />
                                <div class="card-body p-4">
                                    <div class="badge bg-primary bg-gradient rounded-pill mb-2">Recomendado</div>
                                    <a class="text-decoration-none link-dark stretched-link" href="#" data-bs-toggle="modal" data-bs-target="#modalEco">
                                        <h5 class="card-title mb-3">Ecoturismo en Sandoná: Naturaleza en Estado Puro</h5>
                                    </a>
                                    <p class="card-text mb-0">Explora los rincones más vírgenes de Sandoná con nuestros tours de ecoturismo. Conoce la flora y fauna local, participa en actividades sostenibles y contribuye a la preservación del entorno natural.</p>
                                </div>
                                <div class="card-footer p-4 pt-0 bg-transparent border-top-0">
                                    <div class="d-flex align-items-end justify-content-between">
                                        <div class="d-flex align-items-center">
                                            <img class="rounded-circle me-3" src="images/estrellaOP.jpg" alt="Calificaciones" />
                                            <div class="small">
                                                <div class="fw-bold">Calificaciones</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Modal -->
                        <div class="modal fade" id="modalEco" tabindex="-1" aria-labelledby="modalLabelEco" aria-hidden="true">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="modalLabelEco">Ecoturismo en Sandoná: Naturaleza en Estado Puro</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <img class="img-fluid mb-4" src="images/portada_eco.jpg" alt="Imagen del tour" />
                                        <p>Explora los rincones más vírgenes de Sandoná con nuestros tours de ecoturismo. Conoce la flora y fauna local, participa en actividades sostenibles y contribuye a la preservación del entorno natural.</p>
                                        <p><strong>Precio:</strong> $85 USD</p>
                                        <p><strong>Duración:</strong> 4 horas</p>
                                        <p><strong>Incluye:</strong> Guía especializado, transporte, entrada a reservas ecológicas</p>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                        <a href="compra.jsp" class="btn btn-primary">Comprar Paquete</a>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="col-lg-4 mb-5">
                            <!-- Tarjeta -->
                            <div class="card h-100 shadow border-0">
                                <img class="card-img-top" src="images/portada_fiestas.jpg" alt="Imagen del tour" />
                                <div class="card-body p-4">
                                    <div class="badge bg-primary bg-gradient rounded-pill mb-2">Recomendado</div>
                                    <a class="text-decoration-none link-dark stretched-link" href="#" data-bs-toggle="modal" data-bs-target="#modalFiestas">
                                        <h5 class="card-title mb-3">Festividades Locales: Vive la Cultura de Sandoná</h5>
                                    </a>
                                    <p class="card-text mb-0">Participa en nuestras vibrantes festividades locales y sumérgete en la cultura de Sandoná. Disfruta de música, danza, y eventos tradicionales que reflejan el espíritu alegre de nuestra comunidad.</p>
                                </div>
                                <div class="card-footer p-4 pt-0 bg-transparent border-top-0">
                                    <div class="d-flex align-items-end justify-content-between">
                                        <div class="d-flex align-items-center">
                                            <img class="rounded-circle me-3" src="images/estrellaOP.jpg" alt="Calificaciones" />
                                            <div class="small">
                                                <div class="fw-bold">Calificaciones</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Modal -->
                        <div class="modal fade" id="modalFiestas" tabindex="-1" aria-labelledby="modalLabelFiestas" aria-hidden="true">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="modalLabelFiestas">Festividades Locales: Vive la Cultura de Sandoná</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <img class="img-fluid mb-4" src="images/portada_fiestas.jpg" alt="Imagen del tour" />
                                        <p>Participa en nuestras vibrantes festividades locales y sumérgete en la cultura de Sandoná. Disfruta de música, danza, y eventos tradicionales que reflejan el espíritu alegre de nuestra comunidad.</p>
                                        <p><strong>Precio:</strong> $60 USD</p>
                                        <p><strong>Duración:</strong> 3 horas</p>
                                        <p><strong>Incluye:</strong> Entradas a eventos, guía local, transporte dentro del evento</p>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                        <a href="compra.jsp" class="btn btn-primary">Comprar Paquete</a>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="col-lg-4 mb-5">
                            <!-- Tarjeta -->
                            <div class="card h-100 shadow border-0">
                                <img class="card-img-top" src="images/portada_rural.jpg" alt="Imagen del tour" />
                                <div class="card-body p-4">
                                    <div class="badge bg-primary bg-gradient rounded-pill mb-2">Recomendado</div>
                                    <a class="text-decoration-none link-dark stretched-link" href="#" data-bs-toggle="modal" data-bs-target="#modalRural">
                                        <h5 class="card-title mb-3">Turismo Rural: Escapada a la Vida Campestre</h5>
                                    </a>
                                    <p class="card-text mb-0">Disfruta de la tranquilidad del campo en Sandoná con nuestras experiencias de turismo rural. Hospédate en fincas locales, participa en actividades agrícolas y conecta con la vida rural en un entorno sereno.</p>
                                </div>
                                <div class="card-footer p-4 pt-0 bg-transparent border-top-0">
                                    <div class="d-flex align-items-end justify-content-between">
                                        <div class="d-flex align-items-center">
                                            <img class="rounded-circle me-3" src="images/estrellaOP.jpg" alt="Calificaciones" />
                                            <div class="small">
                                                <div class="fw-bold">Calificaciones</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Modal -->
                        <div class="modal fade" id="modalRural" tabindex="-1" aria-labelledby="modalLabelRural" aria-hidden="true">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="modalLabelRural">Turismo Rural: Escapada a la Vida Campestre</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <img class="img-fluid mb-4" src="images/portada_rural.jpg" alt="Imagen del tour" />
                                        <p>Disfruta de la tranquilidad del campo en Sandoná con nuestras experiencias de turismo rural. Hospédate en fincas locales, participa en actividades agrícolas y conecta con la vida rural en un entorno sereno.</p>
                                        <p><strong>Precio:</strong> $75 USD</p>
                                        <p><strong>Duración:</strong> 2 noches / 3 días</p>
                                        <p><strong>Incluye:</strong> Alojamiento en finca, actividades agrícolas, guía local, comida tradicional</p>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                        <a href="compra.jsp" class="btn btn-primary">Comprar Paquete</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="row gx-5">
                        <div class="col-lg-4 mb-5">
                            <!-- Tarjeta -->
                            <div class="card h-100 shadow border-0">
                                <img class="card-img-top" src="images/portada_cafe.jpg" alt="Imagen del tour" />
                                <div class="card-body p-4">
                                    <div class="badge bg-primary bg-gradient rounded-pill mb-2">Recomendado</div>
                                    <a class="text-decoration-none link-dark stretched-link" href="#" data-bs-toggle="modal" data-bs-target="#modalCafe">
                                        <h5 class="card-title mb-3">Ruta del Café: Del Grano a la Taza</h5>
                                    </a>
                                    <p class="card-text mb-0">Descubre el proceso del café en Sandoná desde su cultivo hasta su preparación. Visita fincas cafetaleras, aprende sobre el arte del café y degusta una taza de café recién preparado.</p>
                                </div>
                                <div class="card-footer p-4 pt-0 bg-transparent border-top-0">
                                    <div class="d-flex align-items-end justify-content-between">
                                        <div class="d-flex align-items-center">
                                            <img class="rounded-circle me-3" src="images/estrellaOP.jpg" alt="Calificaciones" />
                                            <div class="small">
                                                <div class="fw-bold">Calificaciones</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Modal -->
                        <div class="modal fade" id="modalCafe" tabindex="-1" aria-labelledby="modalLabelCafe" aria-hidden="true">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="modalLabelCafe">Ruta del Café: Del Grano a la Taza</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <img class="img-fluid mb-4" src="images/portada_cafe.jpg" alt="Imagen del tour" />
                                        <p>Descubre el proceso del café en Sandoná desde su cultivo hasta su preparación. Visita fincas cafetaleras, aprende sobre el arte del café y degusta una taza de café recién preparado.</p>
                                        <p><strong>Precio:</strong> $85 USD</p>
                                        <p><strong>Duración:</strong> 1 día</p>
                                        <p><strong>Incluye:</strong> Visita a finca cafetalera, guía experto, degustación de café, almuerzo tradicional</p>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                        <a href="compra.jsp" class="btn btn-primary">Comprar Paquete</a>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="col-lg-4 mb-5">
                            <!-- Tarjeta -->
                            <div class="card h-100 shadow border-0">
                                <img class="card-img-top" src="images/portada_archaeology.jpg" alt="Imagen del tour" />
                                <div class="card-body p-4">
                                    <div class="badge bg-primary bg-gradient rounded-pill mb-2">Recomendado</div>
                                    <a class="text-decoration-none link-dark stretched-link" href="#" data-bs-toggle="modal" data-bs-target="#modalArchaeology">
                                        <h5 class="card-title mb-3">Arqueología en Sandoná: Un Viaje al Pasado</h5>
                                    </a>
                                    <p class="card-text mb-0">Explora los sitios arqueológicos de Sandoná y descubre la historia y la cultura antigua de la región. Aprende sobre las civilizaciones que habitaron estas tierras y sus contribuciones a la historia.</p>
                                </div>
                                <div class="card-footer p-4 pt-0 bg-transparent border-top-0">
                                    <div class="d-flex align-items-end justify-content-between">
                                        <div class="d-flex align-items-center">
                                            <img class="rounded-circle me-3" src="images/estrellaOP.jpg" alt="Calificaciones" />
                                            <div class="small">
                                                <div class="fw-bold">Calificaciones</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Modal -->
                        <div class="modal fade" id="modalArchaeology" tabindex="-1" aria-labelledby="modalLabelArchaeology" aria-hidden="true">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="modalLabelArchaeology">Arqueología en Sandoná: Un Viaje al Pasado</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <img class="img-fluid mb-4" src="images/portada_archaeology.jpg" alt="Imagen del tour" />
                                        <p>Explora los sitios arqueológicos de Sandoná y descubre la historia y la cultura antigua de la región. Aprende sobre las civilizaciones que habitaron estas tierras y sus contribuciones a la historia.</p>
                                        <p><strong>Precio:</strong> $90 USD</p>
                                        <p><strong>Duración:</strong> 2 días</p>
                                        <p><strong>Incluye:</strong> Visitas guiadas a sitios arqueológicos, transporte, guía experto, almuerzo y entrada a los sitios.</p>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                        <a href="compra.jsp" class="btn btn-primary">Comprar Paquete</a>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="col-lg-4 mb-5">
                            <!-- Tarjeta -->
                            <div class="card h-100 shadow border-0">
                                <img class="card-img-top" src="images/portada_avistamiento.jpg" alt="Imagen del tour" />
                                <div class="card-body p-4">
                                    <div class="badge bg-primary bg-gradient rounded-pill mb-2">Recomendado</div>
                                    <a class="text-decoration-none link-dark stretched-link" href="#" data-bs-toggle="modal" data-bs-target="#modalBirdwatching">
                                        <h5 class="card-title mb-3">Avistamiento de Aves: Un Paraíso Ornitológico</h5>
                                    </a>
                                    <p class="card-text mb-0">Sumérgete en la experiencia del avistamiento de aves en Sandoná. Explora los hábitats naturales y observa una gran variedad de especies en su entorno natural, guiado por expertos locales.</p>
                                </div>
                                <div class="card-footer p-4 pt-0 bg-transparent border-top-0">
                                    <div class="d-flex align-items-end justify-content-between">
                                        <div class="d-flex align-items-center">
                                            <img class="rounded-circle me-3" src="images/estrellaOP.jpg" alt="Calificaciones" />
                                            <div class="small">
                                                <div class="fw-bold">Calificaciones</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Modal -->
                        <div class="modal fade" id="modalBirdwatching" tabindex="-1" aria-labelledby="modalLabelBirdwatching" aria-hidden="true">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="modalLabelBirdwatching">Avistamiento de Aves: Un Paraíso Ornitológico</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <img class="img-fluid mb-4" src="images/portada_avistamiento.jpg" alt="Imagen del tour" />
                                        <p>Sumérgete en la experiencia del avistamiento de aves en Sandoná. Explora los hábitats naturales y observa una gran variedad de especies en su entorno natural, guiado por expertos locales.</p>
                                        <p><strong>Precio:</strong> $70 USD</p>
                                        <p><strong>Duración:</strong> 1 día</p>
                                        <p><strong>Incluye:</strong> Guía especializado, transporte, almuerzo y binoculares.</p>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                        <a href="compra.jsp" class="btn btn-primary">Comprar Paquete</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </section>

            <!-- Features Section -->
            <section class="py-5" id="features">
                <div class="container px-5 my-5">
                    <div class="row gx-5">
                        <div class="col-lg-4 mb-5 mb-lg-0">
                            <h2 class="fw-bolder mb-4">Explora lo Mejor de Sandoná</h2>
                            <p class="lead mb-4">Descubre nuestras ofertas destacadas y sumérgete en la rica cultura y belleza natural de nuestra región.</p>
                            <a href="#!" class="btn btn-primary">Ver Todos los Tours</a>
                        </div>
                        <div class="col-lg-8">
                            <div class="row gx-5 row-cols-1 row-cols-md-2">
                                <!-- Feature 1 -->
                                <div class="col mb-5 h-100">
                                    <div class="feature bg-success bg-gradient text-white rounded-3 mb-3 p-4">
                                        <i class="bi bi-star fs-2"></i>
                                    </div>
                                    <h3 class="h5">Gastronomía Local</h3>
                                    <p class="mb-0">Disfruta de los sabores auténticos de Sandoná en nuestros tours gastronómicos. Conoce la historia detrás de cada plato y participa en degustaciones exclusivas.</p>
                                    <a href="#!" class="btn btn-outline-primary mt-2">Descubre Más</a>
                                </div>
                                <!-- Feature 2 -->
                                <div class="col mb-5 h-100">
                                    <div class="feature bg-warning bg-gradient text-white rounded-3 mb-3 p-4">
                                        <i class="bi bi-geo-alt fs-2"></i>
                                    </div>
                                    <h3 class="h5">Aventuras en la Naturaleza</h3>
                                    <p class="mb-0">Explora los paisajes impresionantes de Sandoná, desde montañas hasta ríos. Nuestros tours te llevan a los rincones más hermosos y escondidos.</p>
                                    <a href="#!" class="btn btn-outline-primary mt-2">Explora Ahora</a>
                                </div>
                                <!-- Feature 3 -->
                                <div class="col mb-5 mb-md-0 h-100">
                                    <div class="feature bg-info bg-gradient text-white rounded-3 mb-3 p-4">
                                        <i class="bi bi-calendar-event fs-2"></i>
                                    </div>
                                    <h3 class="h5">Eventos y Festividades</h3>
                                    <p class="mb-0">Participa en las vibrantes festividades locales de Sandoná. Vive la cultura y tradiciones en eventos llenos de música, danza y alegría.</p>
                                    <a href="#!" class="btn btn-outline-primary mt-2">Ver Eventos</a>
                                </div>
                                <!-- Feature 4 -->
                                <div class="col h-100">
                                    <div class="feature bg-danger bg-gradient text-white rounded-3 mb-3 p-4">
                                        <i class="bi bi-house-door fs-2"></i>
                                    </div>
                                    <h3 class="h5">Estancias Rurales</h3>
                                    <p class="mb-0">Conéctate con la vida campestre en nuestras estancias rurales. Disfruta de la tranquilidad del campo y participa en actividades agrícolas y locales.</p>
                                    <a href="#!" class="btn btn-outline-primary mt-2">Reserva tu Estancia</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Testimonial Section -->
            <section class="py-5 bg-light">
                <div class="container px-5 my-5">
                    <div class="row gx-5 justify-content-center">
                        <div class="col-lg-10 col-xl-7">
                            <div class="text-center">
                                <div class="fs-4 mb-4 fst-italic">"La experiencia con el tour de ecoturismo en Sandoná fue inolvidable. La guía era experta y el paisaje, simplemente espectacular. ¡Definitivamente volveré para explorar más!"</div>
                                <div class="d-flex align-items-center justify-content-center mb-4">
                                    <img class="rounded-circle me-3" src="images/icono_login.jpg" alt="Testimonio de Cliente" style="width: 60px; height: 60px;" />
                                    <div class="fw-bold">
                                        María Gómez
                                        <span class="fw-bold text-primary mx-1">/</span>
                                        Turista Satisfecha
                                    </div>
                                </div>
                                <a href="#!" class="btn btn-primary">Leer Más Testimonios</a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>


            <!-- Blog preview section-->
            <section>
                <!-- Call to action-->
                <aside class="bg-image rounded-3 p-4 p-sm-5 mt-5" style="background-image: url('images/portada_aventura.jpg'); background-size: cover; background-position: center;">
                    <div class="d-flex align-items-center justify-content-between flex-column flex-xl-row text-center text-xl-start text-white">
                        <div class="mb-4 mb-xl-0">
                            <div class="fs-3 fw-bold">¡Descubre las últimas aventuras en Sandoná!</div>
                            <div class="text-white-50">Suscríbete a nuestro boletín y recibe noticias sobre nuevos tours, ofertas exclusivas y más.</div>
                        </div>
                        <div class="ms-xl-4">
                            <div class="input-group mb-2">
                                <input class="form-control" type="email" placeholder="Correo electrónico..." aria-label="Correo electrónico..." aria-describedby="button-newsletter" />
                                <button class="btn btn-outline-light" id="button-newsletter" type="button">Suscribirse</button>
                            </div>
                            <div class="small text-white-50">Nos preocupamos por tu privacidad y nunca compartiremos tus datos.</div>
                        </div>
                    </div>
                </aside>

                </div>
            </section>
        </main>
        <!-- Footer-->

        <footer class="bg-dark text-white py-4">
            <div class="container px-5">
                <div class="row align-items-center justify-content-between flex-column flex-sm-row">
                    <div class="col-auto">
                        <div class="small m-0">&copy; 2024 Sandoná Tours. Todos los derechos reservados.</div>
                    </div>
                    <div class="col-auto">
                        <a class="link-light small" href="#!"><i class="bi bi-shield-lock"></i> Privacidad</a>
                        <span class="text-white mx-1">&middot;</span>
                        <a class="link-light small" href="#!"><i class="bi bi-file-earmark-text"></i> Términos</a>
                        <span class="text-white mx-1">&middot;</span>
                        <a class="link-light small" href="#!"><i class="bi bi-envelope"></i> Contacto</a>
                    </div>
                </div>
            </div>
        </footer>


        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>


    </body>
</html>

<%--Importación del pie de página--%>
<%@include file="lib/footer.jsp" %>
