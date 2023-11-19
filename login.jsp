<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Corporaci�n Rojo</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
  
   <!-- Css de Login Personalizado-->
  <link href="dist/css/Login.css" rel="stylesheet" type="text/css"/>
  
</head>
<body class="hold-transition login-page">
    <div class="login-box" id="div-logion">
        <!-- /.login-logo -->
        <div class="card card-outline card-primary">
            <div class="card-header text-center">
                <a class="h2"> <b>CORPORACI�N ROJO</b></a>
            </div>
            <div class="card-body" id="FormularioLogin">
                <p class="login-box-msg h4"  id="pIniciarSesion" >Inicio de Sesi�n</p>
                <form action="/WebAppCorp_Lavanderia/sUsuarios" method="post" id="login-form">
                    <div class="input-group mb-3">
                        <input type="text" name="CodUsuario" id="CodUsuario" class="form-control" placeholder="Ingrese Usuario">
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <span class="fas fa-user-check"></span>
                            </div>
                        </div>
                    </div>
                    <div class="input-group mb-3">
                        <input type="password" name="Password" id="Password" class="form-control" placeholder="Ingrese Contrase�a">
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <span class="fas fa-eye-slash"></span>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-8">
                            <div class="icheck-primary">
                                <input type="checkbox" id="remember">
                                <label for="remember">
                                    Recordar
                                </label>
                            </div>
                        </div>
                        <!-- /.col -->
                        <div class="col-4">
                            <button type="submit" class="btn btn-primary btn-block" id="btnIngresar">Ingresar</button>
                            <!-- /.col -->   
                        </div>
                    </div>
                    <div id="mensaje">
                        <!-- Mostrar los errores en el login -->      
                    </div>
                </form>
                <!-- /.social-auth-links -->
                <div id="loader">
                    <!-- Pre carga -->
                </div>
                <br>
                <p class="mb-0" style="text-align: center;">
                    <a href="forgot-password.html" class="small" style="float: left;">Olvide mi Contrase�a</a>
                    <a href="vistas/usuarios.jsp" class="text-black small-box-footer small" style="float: right;">Registra un Nuevo Usuario</a>
                </p>
            </div>
            <!-- /.login-card-body -->
  </div>
</div>
<!-- /.login-box -->
<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>
<script src="js/script.js" type="text/javascript"></script>
</body>
</html>
