<%-- 
    Document   : index
    Created on : 02-ago-2016, 18:42:42
    Author     : jsaravia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Siscol</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <!-- Bootstrap -->
        <link rel="stylesheet" type="text/css" href="diseno/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="diseno/css/mdb.min.css">
        <link rel="stylesheet" type="text/css" href="diseno/css/fileinput.css">
        <!-- Stylos Varios -->
        <link rel="stylesheet" type="text/css" href="diseno/css/simple-sidebar.css">
        <link rel="stylesheet" type="text/css" href="diseno/css/normalize.css">
        <!-- Fonts -->
        <link rel="stylesheet" type="text/css" href="diseno/css/font-awesome.min.css">
        <!-- Alertas Toastr -->
        <link rel="stylesheet" type="text/css" href="diseno/css/toastr.css">
        <!-- DataTables -->
        <link rel="stylesheet" type="text/css" href="diseno/dataTable/css/dataTables.bootstrap.css">
        <link rel="stylesheet" type="text/css" href="diseno/dataTable/css/jquery.dataTables.css">
        <!-- FavIcon -->
        <link rel="shortcut icon" href="diseno/images/favicon.ico">
        <!-- Stylos Propios -->
        <link rel="stylesheet" type="text/css" href="diseno/css/style.css">


    </head>
    <body>
        <div id="encabezado">
            <div class="row">
                <div class="col-lg-8 col-md-8 col-sm-6">

                </div>
                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">

                </div>
            </div>

        </div>
        <div class="row">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-12 col-lg-offset-1 col-md-offset-1 col-sm-offset-1">
                <div class="row" id="panel-inicio">
                    <div align="left">
                        <a href="index.jsp" class="btn btn-danger"><i class="fa fa-home" aria-hidden="true"></i></a>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-8 col-xs-12 col-lg-offset-3 col-md-offset-3 col-sm-offset-2">
                        <div class="panel">
                            <div class="panel-body">
                                <div align="center">
                                    <p>Digite el correo del cual desea recuperar la contraseña.</p>
                                </div>
                                <div class="md-form">
                                    <i class="fa fa-user prefix"></i>
                                    <input type="email" id="usuario" class="form-control">
                                    <label for="usuario">Usuario</label>
                                </div>
                                <div align="center">
                                    <button id="acceder" class="btn btn-danger">ENVIAR</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id="footer">
            <div align="center" style="margin-top: 15px;">
                Desarrollado por: <a style="color: #ecf0f1;"><strong>Soluciones Informaticas Ltda.</strong><i class="fa fa-registered" aria-hidden="true"></i></a>
            </div>
        </div>


        <!-- jQuery -->
        <script type="text/javascript" src="diseno/js/jquery-2.2.3.min.js"></script>
        <script type="text/javascript" src="diseno/js/jquery-1.11.2.min.js"></script>

        <!-- Bootstrap tooltips -->
        <script type="text/javascript" src="diseno/js/tether.min.js"></script>
        <script type="text/javascript" src="diseno/js/bootstrap.js"></script>
        <!-- MDB core JavaScript -->
        <script type="text/javascript" src="diseno/js/mdb.min.js"></script>
        <!-- Scripts Varios -->
        <script type="text/javascript" src="diseno/js/sidebar_menu.js"></script>
        <script type="text/javascript" src="diseno/js/moment.js"></script>
        <script type="text/javascript" src="diseno/js/fileinput.js"></script>
        <!-- Scripts Propios -->
        <script type="text/javascript" src="diseno/js/generales.js"></script>
        <!-- Script Para Bloqueo -->
        <script type="text/javascript" src="diseno/js/blockUI.js"></script>
        <!-- Scripts de Alertas toastr -->
        <script type="text/javascript" src="diseno/js/toastr.js"></script>
        <!-- Datatables 
        <script type="text/javascript" src="diseno/dataTable/js/dataTables.bootstrap.js"></script>
        <script type="text/javascript" src="diseno/dataTable/js/jquery.dataTables.js"></script> 
        -->
    </body>
</html>
