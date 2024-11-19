<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%--Importación de la página de emcabezado--%>
<%@include file="lib/header.jsp" %>


<!-- login.jsp -->
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="styles/style.css">
        <title>Formulario Login </title>
    </head>
    <body>
        <div class="form-body">
            <img src="images/icono_login.jpg" alt="user-login">
            <p class="text">Bienvenido Turista</p>
            <form class="login-form" action="Servlet_Login" method="post">
                <input type="text" id="id" name="id" placeholder="Número de identificación" required>
                <input type="password" id="password" name="password" placeholder="Contraseña" required>

                <button type="submit">Iniciar Sesión</button>
                <c:if test="${param.error != null}">
                    <div class="alert alert-danger">Identificación o contraseña incorrecta.</div>
                </c:if>
            </form>

            <a href="recuperarContra.jsp" class="forgot-password">¿Olvidaste tu contraseña?</a>
            <br>
            <div class="create-account">
                <a href="sing-up.jsp" class="create-account-link">Crear cuenta nueva</a>
            </div>

        </div>


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
            setTimeout(function () {
                autoToast.show();
            }, 0);
        </script> 

    </body>
</html>


<%--Importación del pie de página--%>
<%@include file="lib/footer.jsp" %>
