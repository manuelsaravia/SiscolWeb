<%-- 
    Document   : principal
    Created on : 05-sep-2016, 20:04:07
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
        <link rel="stylesheet" type="text/css" href="../../diseno/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="../../diseno/css/mdb.min.css">
        <link rel="stylesheet" type="text/css" href="../../diseno/css/fileinput.css">
        <!-- Bootstrap Material Design -->
        <link rel="stylesheet" type="text/css" href="../../diseno/css/bootstrap-material-design.css">
        <link rel="stylesheet" type="text/css" href="../../diseno/css/bootstrap-material-design.css.map">
        <link rel="stylesheet" type="text/css" href="../../diseno/css/ripples.css">
        <link rel="stylesheet" type="text/css" href="../../diseno/css/ripples.css.map">
        <!-- Stylos Varios -->
        <link rel="stylesheet" type="text/css" href="../../diseno/css/simple-sidebar.css">
        <link rel="stylesheet" type="text/css" href="../../diseno/css/normalize.css">
        <link rel="stylesheet" type="text/css" href="../../diseno/css/select2.css">
        <!-- Fonts -->
        <link rel="stylesheet" type="text/css" href="../../diseno/css/font-awesome.min.css">
        <!-- Alertas Toastr -->
        <link rel="stylesheet" type="text/css" href="../../diseno/css/toastr.css">
        <!-- DataTables -->
        <link rel="stylesheet" type="text/css" href="../../diseno/dataTable/css/dataTables.bootstrap.css">
        <link rel="stylesheet" type="text/css" href="../../diseno/dataTable/css/jquery.dataTables.css">
        <!-- jQueryUI -->
        <link rel="stylesheet" type="text/css" href="../../diseno/css/jquery-ui.css">
        <link rel="stylesheet" type="text/css" href="../../diseno/css/jquery-ui.theme.css">
        <link rel="stylesheet" type="text/css" href="../../diseno/css/jquery-ui.structure.css">
        <!-- FavIcon -->
        <link rel="shortcut icon" href="../../diseno/images/favicon.ico">
        <!-- Stylos Propios -->
        <link rel="stylesheet" type="text/css" href="../../diseno/css/style.css">


    </head>
    <body onload="calcularMenu();">
        <jsp:include page="../nav.jsp"/>

        <jsp:include page="menu.jsp" />

        <div id="contenido">
            <div class="row">
                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                    <div class="panel panel-wet">
                        <div class="panel-heading">
                            <h3 class="panel-title">Bienvenido</h3>
                        </div>
                        <div class="panel-body"></div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-3">
                    <div class="panel panel-wet">
                        <div class="panel-heading">
                            <h3 class="panel-title">Siguenos</h3>
                        </div>
                        <div class="panel-body">
                            <div align="center">
                                <a class="btn btn-raised btn-inverse"><i class="fa fa-facebook-official fa-2x" aria-hidden="true"></i></a>
                                <a class="btn btn-raised btn-info"><i class="fa fa-twitter fa-2x" aria-hidden="true"></i></a>
                                <a class="btn btn-raised btn-danger"><i class="fa fa-youtube fa-2x" aria-hidden="true"></i></a>
                                <a class="btn btn-raised btn-warning"><i class="fa fa-home fa-2x" aria-hidden="true"></i></a>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <jsp:include page="../footer.jsp"/>
        <!-- jQuery -->
        <script type="text/javascript" src="../../diseno/js/jquery-2.2.3.min.js"></script>
        <script type="text/javascript" src="../../diseno/js/jquery-1.12.14.js"></script>
        <script type="text/javascript" src="../../diseno/js/jquery-1.11.2.min.js"></script>
        <!-- jQueryUI -->
        <script type="text/javascript" src="../../diseno/js/jquery-ui.js"></script>
        <!-- Bootstrap tooltips -->
        <script type="text/javascript" src="../../diseno/js/tether.min.js"></script>
        <script type="text/javascript" src="../../diseno/js/bootstrap.js"></script>

        <!-- MDB core JavaScript -->
        <script type="text/javascript" src="../../diseno/js/mdb.min.js"></script>
        <!-- Scripts Varios -->
        <script type="text/javascript" src="../../diseno/js/sidebar_menu.js"></script>
        <script type="text/javascript" src="../../diseno/js/moment.js"></script>
        <script type="text/javascript" src="../../diseno/js/fileinput.js"></script>
        <script type="text/javascript" src="../../diseno/js/select2.min.js"></script>
        <!-- Scripts Propios -->
        <script type="text/javascript" src="../../diseno/js/generales.js"></script>
        <script type="text/javascript" src="../../diseno/js/scripts.js"></script>
        <!-- Script Para Bloqueo -->
        <script type="text/javascript" src="../../diseno/js/blockUI.js"></script>
        <!-- Scripts de Alertas toastr -->
        <script type="text/javascript" src="../../diseno/js/toastr.js"></script>
        <!-- Material Desing -->
        <script type="text/javascript" src="../../diseno/js/material.js"></script>
        <script type="text/javascript" src="../../diseno/js/ripples.js"></script>
        <!-- Datatables 
        <script type="text/javascript" src="diseno/dataTable/js/dataTables.bootstrap.js"></script>
        <script type="text/javascript" src="diseno/dataTable/js/jquery.dataTables.js"></script> 
        -->
    </body>
</html>
