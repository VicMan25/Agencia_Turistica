<%@page import="Modelo.Usuario"%>
<%@page import="Modelo.Nodo"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="styles/style_Usuarios.css">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
        <title>Formulario Registro</title>
    </head>
    <body>
        <div class="form-body">
            <img src="images/icono_login.jpg" alt="user-signup">
            <p class="text">Crear Cuenta</p>
            <form class="signup-form" method="post" action="sv_AgregarUsuario" onsubmit="return validarContrasenas()">
                <input type="text" id="nombre" name="nombre" placeholder="Nombre de usuario" required>
                <input type="number" id="edad" name="edad" placeholder="Edad" required>
                <input type="number" id="idPersona" name="idPersona" placeholder="Número de identificación" required>
                <select id="sexo" name="sexo" required>
                    <option value="">Selecciona tu sexo</option>
                    <option value="Masculino">Masculino</option>
                    <option value="Femenino">Femenino</option>
                    <option value="Otro">Prefiero no decirlo</option>
                </select>
                <input type="email" id="correo" name="correo" placeholder="Correo electrónico" required>
                <input type="number" id="celular" name="celular" placeholder="Número de Celular" required>
                <input type="password" id="contrasena" name="contrasena" placeholder="Contraseña" required>
                <input type="password" id="confirm-password" name="confirm-password" placeholder="Confirmar contraseña" required>
                <button type="submit">Crear Cuenta</button>
            </form>
            <a href="index.jsp" class="create-account-link">Ya tengo una cuenta</a>
        </div>

        <script>
            function validarContrasenas() {
                const contraseña = document.getElementById('contrasena').value;
                const confirmPassword = document.getElementById('confirm-password').value;
                if (contraseña !== confirmPassword) {
                    alert('Las contraseñas no coinciden');
                    return false;
                }
                return true;
            }
        </script>
    </body>
</html>
