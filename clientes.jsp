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
          <h1>Administrar Clientes</h1>
              <ol class="breadcrumb float-sm-right" >
                    <li class="breadcrumb-item"><a href="/WebAppCorp_Lavanderia/index.jsp"> <i class="fa fa-dashboard"></i>
                      Inicio</a></li>
                      
                      <li class="breadcrumb-item active">Administrar Clientes</li>
                      
                      
                      
              </ol>
      </section>
      <br>
      <section class="content">
          <div class="card">
              <div class="card-header with-border">
                  <button class="btn btn-primary" data-toggle="modal" 
                          data-target="#modalAgregarCliente">
                      Agregar Cliente
                  </button>
              </div>
              
              <div class="card-body" >
                  <table id="example1" width="100%" class="table-striped table-border table-hover">
                      <caption> Listar Cliente</caption>
                          <thead>
                              <tr>  
                                 <th>CodCliente</th>
                                  <th>Ape_Paterno</th>
                                  <th>Ape_Materno</th>
                                  <th>Nombres</th>
                                  <th>Fech_Nacimiento</th>
                                  <th>Nacionalidad</th>
                                  <th>Doc_Identidad</th>
                                  <th>Num_Documento</th>
                                  <th>Sexo</th>
                                  <th>Estado_Civil</th>
                                  <th>Distrito</th>
                                  <th>Direccion</th>                                  
                                  <th>Telefono</th>
                                  <th>Email</th>
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
<div id="modalAgregarCliente" class="modal" role="dialog">
    
    <div class="modal-dialog">
        
        <div class="modal-content">
        
            <form method="post" action="/WebAppCorp_Lavanderia/sUsuarioCRUD">
                <!--campo oculto-->
                <input type="hidden" name="accion" value="INS">
                
                <!--inicio cabeza del modal-->
                <div class="modal-header" style="background:#3c8dbc; color:white "> 
                    <h4 class="modal-title">Agregar Cliente</h4>
                    <button type="button" class="close" data-dismiss="modal">
                        &times;
                    </button>  
                </div>
                <!--fin cabeza del modal-->
                
                <!--inicio cuerpo del modal-->
                <div class="modal-body">
                    <div class="box-body">
                       
                        
                        <!--entrada para el Ap. Paterno -->
                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-text"><i class="fa fa-user"></i></span>
                                      <input class="form-control input-sm" type="text" placeholder="Ingrese Ap. Paterno" 
                                        name="nuevoPaterno" id="nuevoPaterno" required/>
                            </div>
                        </div>  
                        
                        <!--entrada para el materno -->
                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-text"><i class="fa fa-user"></i></span>
                                      <input class="form-control input-sm" type="text" placeholder="Ingrese Ap. Materno" 
                                        name="nuevoMaterno" id="nuevoMaterno" required/>
                            </div>
                        </div>
                        
                        <!--entrada para el nombre -->
                        <div class="form-group-sm">
                            <div class="input-group">
                                <span class="input-group-text"><i class="fa fa-user"></i></span>
                                      <input class="form-control input-sm" type="text" placeholder="Ingrese nombre" 
                                        name="nuevoNombre" id="nuevoNombre" required/>
                            </div>
                        </div>
                        
                        <!-- Entrada del Fec_Nac -->
                        <div class="form-group-sm">
                            <div class="input-group">
                                <span class="input-group-text"><i class="fa fa-user"></i></span>
                                      <input class="form-control input-sm" type="text" placeholder="Ingrese Fech_Nac" 
                                        name="nuevoFech_Nac" id="nuevoFech_Nac" required/>
                            </div>
                        </div>
                        
                        
                        <!--entrada para el Doc_Identidad -->
                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-text"><i class="fa fa-users"></i></span>
                                   <select class="form-control input-lg" name="nuevoDoc_Identidad" id="nuevoDoc_Identidad" >
                                       <option value="">Seleccionar Documento Identidad</option>
                                       <option value="DNI">DNI</option>
                                       <option value="RUC">RUC</option>
                                       <option value="Carnet de Pasaporte">Carnet de Pasaporte</option>
                                   </select>
                            </div>
                        </div>
                        
                        <!--entrada para el NumDoc_Identidad -->
                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-text"><i class="fa fa-lock"></i></span>
                                      <input class="form-control input-group-sm" type="NumDoc_Identidad" placeholder="Ingrese NumDoc_Identidad" 
                                        name="nuevoNumDoc_Identidad" id="nuevoNumDoc_Identidad" required/>
                            </div>
                        </div>
                        
                        <!--entrada para el Sexo -->
                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-text"><i class="fa fa-users"></i></span>
                                   <select class="form-control input-lg" name="nuevoSexo" id="nuevoSexo" >
                                       <option value="">Seleccionar Sexo</option>
                                       <option value="Femenino">Femenino</option>
                                       <option value="Masculino">Masculino</option>
                                   </select>
                            </div>
                        </div>
                        
                        <!--entrada para el Estado_Civil -->
                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-text"><i class="fa fa-users"></i></span>
                                   <select class="form-control input-lg" name="nuevoEstado_Civil" id="nuevoEstado_Civil" >
                                       <option value="">Seleccionar Estado_Civil</option>
                                       <option value="Soltero">Soltero</option>
                                       <option value="Casado">Casado</option> 
                                       <option value="Viudo">Viudo</option>
                                       <option value="Divorciado">Divorciado</option>
                                   </select>
                            </div>
                        </div>
                        
                        <!--entrada para el Distrito -->
                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-text"><i class="fa fa-user"></i></span>
                                      <input class="form-control input-sm" type="text" placeholder="Ingrese Distrito" 
                                        name="nuevoDistrito" id="nuevoDistrito" required/>
                            </div>
                        </div>  
                        
                        <!--entrada para el Direccion -->
                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-text"><i class="fa fa-user"></i></span>
                                      <input class="form-control input-sm" type="text" placeholder="Ingrese Direccion" 
                                        name="nuevoDireccion" id="nuevoDireccion" required/>
                            </div> 
                        </div>
                        
                        <!--entrada para el Telefono -->
                        <div class="form-group-sm">
                            <div class="input-group">
                                <span class="input-group-text"><i class="fa fa-user"></i></span>
                                      <input class="form-control input-sm" type="text" placeholder="Ingrese Telefono" 
                                        name="nuevoTelefono" id="nuevoTelefono" required/>
                            </div>
                        </div>
                        
                        <!-- Entrada del Email -->
                        <div class="form-group-sm">
                            <div class="input-group">
                                <span class="input-group-text"><i class="fa fa-user"></i></span>
                                      <input class="form-control input-sm" type="text" placeholder="Ingrese Email" 
                                        name="nuevoEmail" id="nuevoEmail" required/>
                            </div>
                        </div>
                        
                        <!--entrada para el Estado_Cliente -->
                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-text"><i class="fa fa-users"></i></span>
                                   <select class="form-control input-lg" name="nuevoEstado_Cliente" id="nuevoEstado_Cliente" >
                                       <option value="">Seleccionar Estado_Cliente</option>
                                       <option value="Habilitado">Habilitado</option>
                                       <option value="Deshabilitado">Deshabilitado</option> 
                                   </select>
                            </div>
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
                        Guardar Cliente
                    </button>                   
                    
                </div>
                
                <!--fin del pie del modal-->
                
                
            </form>
            
        </div>
        
    </div>
    
</div>


<!-- fin modal Agregar Cliente -->



<!-- inicio modal Editar Cliente -->
<div id="modalEditarCliente" class="modal translate" role="dialog">
    
    <div class="modal-dialog">
        
        <div class="modal-content">
        
            <form method="post" action="/WebAppCorp_Lavanderia/sUsuarioCRUD">
                <!--campo oculto-->
                <input type="hidden" name="accion" value="UPD">
                
                <!--inicio cabeza del modal-->
                <div class="modal-header" style="background:#3c8dbc; color:white "> 
                    <h4 class="modal-title">Editar Cliente</h4>
                    <button type="button" class="close" data-dismiss="modal">
                        &times;
                    </button>  
                </div>
                <!--fin cabeza del modal-->
                
                <!--inicio cuerpo del modal-->
                <div class="modal-body">
                    <div class="box-body">
                        
                        <!--entrada para el Ap. Paterno -->
                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-text"><i class="fa fa-user"></i></span>
                                      <input class="form-control input-sm" type="text" placeholder="Editar Ap. Paterno" 
                                        name="editarPaterno" id="editarPaterno" required/>
                            </div>
                        </div>  
                        
                        <!--entrada para el materno -->
                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-text"><i class="fa fa-user"></i></span>
                                      <input class="form-control input-sm" type="text" placeholder="Editar Ap. Materno" 
                                        name="editarMaterno" id="editarMaterno" required/>
                            </div>
                        </div>
                        
                        <!--entrada para el nombre -->
                        <div class="form-group-sm">
                            <div class="input-group">
                                <span class="input-group-text"><i class="fa fa-user"></i></span>
                                      <input class="form-control input-sm" type="text" placeholder="Editar nombre" 
                                        name="editarNombre" id="editarNombre" required/>
                            </div>
                        </div>
                        
                        <!-- Entrada del Fec_Nac -->
                        <div class="form-group-sm">
                            <div class="input-group">
                                <span class="input-group-text"><i class="fa fa-user"></i></span>
                                      <input class="form-control input-sm" type="text" placeholder="Editar Fech_Nac" 
                                        name="editarFech_Nac" id="editarFech_Nac" required/>
                            </div>
                        </div>
                        
                        
                        <!--entrada para el Doc_Identidad -->
                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-text"><i class="fa fa-users"></i></span>
                                   <select class="form-control input-lg" name="editarDoc_Identidad" id="editarDoc_Identidad" >
                                       <option value="">Seleccionar Documento Identidad</option>
                                       <option value="DNI">DNI</option>
                                       <option value="RUC">RUC</option>
                                       <option value="Carnet de Pasaporte">Carnet de Pasaporte</option>
                                   </select>
                            </div>
                        </div>
                        
                        <!--entrada para el NumDoc_Identidad -->
                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-text"><i class="fa fa-lock"></i></span>
                                      <input class="form-control input-group-sm" type="text" placeholder="Editar NumDoc_Identidad" 
                                        name="editarNumDoc_Identidad" id="editarNumDoc_Identidad" required/>
                            </div>
                        </div>
                        
                        <!--entrada para el Sexo -->
                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-text"><i class="fa fa-users"></i></span>
                                   <select class="form-control input-lg" name="editarSexo" id="editarSexo" >
                                       <option value="">Seleccionar Sexo</option>
                                       <option value="Femenino">Femenino</option>
                                       <option value="Masculino">Masculino</option>
                                   </select>
                            </div>
                        </div>
                        
                        <!--entrada para el Estado_Civil -->
                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-text"><i class="fa fa-users"></i></span>
                                   <select class="form-control input-lg" name="editarEstado_Civil" id="editarEstado_Civil" >
                                       <option value="">Seleccionar Estado_Civil</option>
                                       <option value="Soltero">Soltero</option>
                                       <option value="Casado">Casado</option> 
                                       <option value="Viudo">Viudo</option>
                                       <option value="Divorciado">Divorciado</option>
                                   </select>
                            </div>
                        </div>
                        
                        <!--entrada para el Distrito -->
                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-text"><i class="fa fa-user"></i></span>
                                      <input class="form-control input-sm" type="text" placeholder="Editar Distrito" 
                                        name="editarDistrito" id="editarDistrito" required/>
                            </div>
                        </div>  
                        
                        <!--entrada para el Direccion -->
                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-text"><i class="fa fa-user"></i></span>
                                      <input class="form-control input-sm" type="text" placeholder="Editar Direccion" 
                                        name="editarDireccion" id="editarDireccion" required/>
                            </div> 
                        </div>
                        
                        <!--entrada para el Telefono -->
                        <div class="form-group-sm">
                            <div class="input-group">
                                <span class="input-group-text"><i class="fa fa-user"></i></span>
                                      <input class="form-control input-sm" type="text" placeholder="Editar Telefono" 
                                        name="editarTelefono" id="editarTelefono" required/>
                            </div>
                        </div>
                        
                        <!-- Entrada del Email -->
                        <div class="form-group-sm">
                            <div class="input-group">
                                <span class="input-group-text"><i class="fa fa-user"></i></span>
                                      <input class="form-control input-sm" type="text" placeholder="Editar Email" 
                                        name="editarEmail" id="editarEmail" required/>
                            </div>
                        </div>
                        
                        <!--entrada para el Estado_Cliente -->
                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-text"><i class="fa fa-users"></i></span>
                                   <select class="form-control input-lg" name="editarEstado_Cliente" id="editarEstado_Cliente" >
                                       <option value="">Seleccionar Estado_Cliente</option>
                                       <option value="Habilitado">Habilitado</option>
                                       <option value="Deshabilitado">Deshabilitado</option> 
                                   </select>
                            </div>
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
                        Editar Cliente
                    </button>                   
                    
                </div>
                                
                <!--fin del pie del modal-->
                
                
            </form>
            
        </div>
        
    </div>
    
</div>


<!-- fin modal Editar Cliente -->


  
  
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
