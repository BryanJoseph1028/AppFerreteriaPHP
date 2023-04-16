
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>

    <div>
        <form action="login.php" method="post">
            <div>
                <label for="lbl_usuario" class="form-label"><b>Nombre de usuario:</b></label>
                <input type="text" name="txt_usuario" id="txt_usuario" class="form-control" placeholder="" required>
                <small id="helpId" class="text_muted">Ejemplo: Juanito</small>
            </div>
            <br>
            <div>
                <label for="lbl_contrasena" class="form-label"><b>Contraseña:</b></label>
                <input type="text" name="txt_contraseña" id="txt_contrasena" class="form-control" placeholder="" required>
                <small id="helpId" class="text-muted">Ejemplo: Chacajyos</small>
            </div>
            <br>
            <input type="submit" class="Iniciar sesión">
        </form>
    </div>
</head>
<body>
    
</body>
</html>