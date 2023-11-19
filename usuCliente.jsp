<%@page import="java.util.List"%>
<%@page import="org.com.dao.UsuarioDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>CORPORACIÓN ROJO</title>

        <!-- Google Font: Source Sans Pro -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="../plugins/fontawesome-free/css/all.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
        <!-- Tempusdominus Bootstrap 4 -->
        <link rel="stylesheet" href="../plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
        <!-- iCheck -->
        <link rel="stylesheet" href="../plugins/icheck-bootstrap/icheck-bootstrap.min.css">
        <!-- JQVMap -->
        <link rel="stylesheet" href="../plugins/jqvmap/jqvmap.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="../dist/css/adminlte.min.css">
        <!-- overlayScrollbars -->
        <link rel="stylesheet" href="../plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
        <!-- Daterange picker -->
        <link rel="stylesheet" href="../plugins/daterangepicker/daterangepicker.css">
        <!-- summernote -->
        <link rel="stylesheet" href="../plugins/summernote/summernote-bs4.min.css">

        <body class="hold-transition sidebar-mini layout-fixed">
        <div class="wrapper">

          <!-- Preloader -->
          <div class="preloader flex-column justify-content-center align-items-center">
          </div>
    </head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

  <!-- Preloader -->
  <div class="preloader flex-column justify-content-center align-items-center">
  </div>
  
  <%@include file="../jspf/aside.jspf"%>
  
  <%@include file="../jspf/navbar.jspf"%>
  
  <div class="content-wrapper">
      <section class="content-header">
          <h1>Administrar usuCliente</h1>
              <ol class="breadcrumb float-sm-right" >
                    <li class="breadcrumb-item"><a href="/WebAppCorp_Lavanderia/index.jsp"> <i class="fa fa-dashboard"></i>
                      Inicio</a></li>
                      
                      <li class="breadcrumb-item active">Administrar usuCliente</li>
                      
                      
                      
              </ol>
      </section>
      <br>
      <section class="content">
          <div class="card">
              <div class="card-header with-border">
                  <button class="btn btn-primary" data-toggle="modal" 
                          data-target="#modalAgregarUsuario">
                      Agregar Usuario
                  </button>
              </div>
              
              <div class="card-body" >
                  <table id="example1" width="100%" class="table-striped table-border table-hover">
                      <caption> Listar usuCliente</caption>
                          <thead>
                              <tr>  
                                  <th>Código</th>
                                  <th>Usuario</th>
                                  <th>Password</th>
                                  <th>Fec_Registro</th>
                                  <th>Estado</th>   
                              </tr>
                          </thead>
                          <tbody>
                              <%//Insertar codigo java 
                              UsuarioDao usuDao = new UsuarioDao();
                              List lista = usuDao.listaUsuarios();
                              
                              for(int i=0;i<lista.size();i++){
                                  Object fila[]=(Object[])lista.get(i);
                              %>
                              <tr>
                                  <td><%=fila[0]%></td>
                                  <td><%=fila[2]%> <%=fila[3]%>, <%=fila[1]%></td>                                  
                                  <td>
                                      <img src="/AdminLTE/images/<%=fila[0]%>.jpg" width="50" height="50" position="center">
                                  </td> 
                                  <td><%=fila[4]%></td>
                                  <td><%=fila[5]%></td>
                                  <td>
                                      <%
                                      int estado =Integer.parseInt(fila[7].toString());
                                      
                                      if(estado==1){
                                      out.print("<button class='btn btn-success  btn-xs'>Activado</button>");
                                      }else{                                      
                                      out.print("<button class='btn btn-danger  btn-xs'>Desactivado</button>");
                                      }
                                      %>
                                  </td>
                                  <td>
                                      <div class="btn-group">
  
                                              <a href="editarUsuario.jsp?codigo=<%=fila[0]%>" class="btn btn-warning">
                                                  <i class="fa fa-pencil-alt" style="color:#ffffff"></i>
                                              </a> 
                                              
                                          
                                          <button class="btn btn-danger" onclick="eliminar(['<%=fila[0]%>'])" >
                                              <i class="fa fa-times"></i>
                                          </button>
                                      </div>
                                  </td>
                              </tr>
                              <%}%>
                          </tbody>
                          <tfoot></tfoot>         
                  </table>        
              </div>
          </div>
      </section>
  </div>
  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- inicio modal Agregar Usuario -->
<div id="modalAgregarUsuario" class="modal" role="dialog">
    
    <div class="modal-dialog">
        
        <div class="modal-content">
        
            <form method="post" action="/WebAppCorp_Lavanderia/sUsuarioCRUD">
                <!--campo oculto-->
                <input type="hidden" name="accion" value="INS">
                
                <!--inicio cabeza del modal-->
                <div class="modal-header" style="background:#3c8dbc; color:white "> 
                    <h4 class="modal-title">Agregar Usuario</h4>
                    <button type="button" class="close" data-dismiss="modal">
                        &times;
                    </button>  
                </div>
                <!--fin cabeza del modal-->
                
                <!--inicio cuerpo del modal-->
                <div class="modal-body">
                    <div class="box-body">
                      
                        <!--entrada para el usuario -->
                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-text"><i class="fa fa-key"></i></span>
                                      <input class="form-control input-sm" type="text" placeholder="Ingrese Usuario" 
                                        name="nuevoUsuario" id="nuevoUsuario" required/>
                            </div>
                        </div>
                        
                        <!--entrada para el password -->
                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-text"><i class="fa fa-lock"></i></span>
                                      <input class="form-control input-group-sm" type="password" placeholder="Ingrese Password" 
                                        name="nuevoPassword" id="nuevoPassword" required/>
                            </div>
                        </div>
                        
                         <!-- Entrada del Fec_Registro -->
                        <div class="form-group-sm">
                            <div class="input-group">
                                <span class="input-group-text"><i class="fa fa-user"></i></span>
                                      <input class="form-control input-sm" type="text" placeholder="Ingrese Fec_Registro" 
                                        name="nuevoFec_Registro" id="nuevoFec_Registro" required/>
                            </div>
                        </div>
                           
                        <!-- Entrada del Estado -->
                        <div class="form-group-sm">
                            <div class="input-group">
                                <span class="input-group-text"><i class="fa fa-user"></i></span>
                                      <input class="form-control input-sm" type="text" placeholder="Ingrese Estado" 
                                        name="nuevoEstado" id="nuevoEstado" required/>
                            </div>
                        </div> 
                </div>
                </div>
                <!--fin cuerpo del modal-->
                        
                <!--inicio del pie del modal-->
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger pull-left"
                            data-dismiss="modal">
                        Salir
                    </button>
                    
                    <button type="submit" class="btn btn-primary">
                        Guardar Usuario
                    </button>                   
                    
                </div>
                
                <!--fin del pie del modal-->
                
                
            </form>
            
        </div>
        
    </div>
    
</div>


<!-- fin modal Agregar Usuario -->



<!-- inicio modal Editar Usuario -->
<div id="modalEditarUsuario" class="modal translate" role="dialog">
    
    <div class="modal-dialog">
        
        <div class="modal-content">
        
            <form method="post" action="/WebAppCorp_Lavanderia/sUsuarioCRUD">
                <!--campo oculto-->
                <input type="hidden" name="accion" value="UPD">
                
                <!--inicio cabeza del modal-->
                <div class="modal-header" style="background:#3c8dbc; color:white "> 
                    <h4 class="modal-title">Editar Usuario</h4>
                    <button type="button" class="close" data-dismiss="modal">
                        &times;
                    </button>  
                </div>
                <!--fin cabeza del modal-->
                
                <!--inicio cuerpo del modal-->
                <div class="modal-body">
                    <div class="box-body">
 
                        <!--entrada para el usuario -->
                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-text"><i class="fa fa-key"></i></span>
                                      <input class="form-control input-sm" type="text" placeholder="Editar Usuario" 
                                        name="editarUsuario" id="editarUsuario" value="" required/>
                            </div>
                        </div>
                        
                        <!--entrada para el password -->
                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-text"><i class="fa fa-lock"></i></span>
                                      <input class="form-control input-group-sm" type="password" placeholder="Editar Password" 
                                        name="editarPassword" id="editarPassword" value="" required/>
                            </div>
                        </div>
                        
                        <!-- Entrada del Fec_Registro -->
                        <div class="form-group-sm">
                            <div class="input-group">
                                <span class="input-group-text"><i class="fa fa-user"></i></span>
                                      <input class="form-control input-sm" type="text" placeholder="Editar Fec_Registro" 
                                        name="editarFech_Registro" id="editarFech_Registro" required/>
                            </div>
                        </div>
                           
                        <!-- Entrada del Estado -->
                        <div class="form-group-sm">
                            <div class="input-group">
                                <span class="input-group-text"><i class="fa fa-user"></i></span>
                                      <input class="form-control input-sm" type="text" placeholder="Editar Estado" 
                                        name="editarEstado" id="editarEstado" required/>
                            </div>
                        </div> 
                         
                    </div>
                </div>
                <!--fin cuerpo del modal-->
                           
                    </div>
                </div>
                <!--fin cuerpo del modal-->
                
                <!--inicio del pie del modal-->
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger pull-left"
                            data-dismiss="modal">
                        Salir
                    </button>
                    
                    <button type="submit" class="btn btn-primary">
                        Editar Usuario
                    </button>                   
                    
                </div>
                
                <!--fin del pie del modal-->
                
                
            </form>
            
        </div>
        
    </div>
    
</div>


<!-- fin modal Editar Usuario -->


  
  
<!-- jQuery -->
<script src="../plugins/jquery/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="../plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- ChartJS -->
<script src="../plugins/chart.js/Chart.min.js"></script>
<!-- Sparkline -->
<script src="../plugins/sparklines/sparkline.js"></script>
<!-- JQVMap -->
<script src="../plugins/jqvmap/jquery.vmap.min.js"></script>
<script src="../plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
<!-- jQuery Knob Chart -->
<script src="../plugins/jquery-knob/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="../plugins/moment/moment.min.js"></script>
<script src="../plugins/daterangepicker/daterangepicker.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="../plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Summernote -->
<script src="../plugins/summernote/summernote-bs4.min.js"></script>
<!-- overlayScrollbars -->
<script src="../plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="../dist/js/adminlte.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../dist/js/demo.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="../dist/js/pages/dashboard.js"></script>
</body>
</html>
