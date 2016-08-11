<%-- 
    Document   : indexPad
    Created on : 03-ago-2016, 19:00:55
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
        <!-- Stylos Varios -->
        <link rel="stylesheet" type="text/css" href="../../diseno/css/simple-sidebar.css">
        <link rel="stylesheet" type="text/css" href="../../diseno/css/normalize.css">
        <!-- Fonts -->
        <link rel="stylesheet" type="text/css" href="../../diseno/css/font-awesome.min.css">
        <!-- Alertas Toastr -->
        <link rel="stylesheet" type="text/css" href="../../diseno/css/toastr.css">
        <!-- DataTables -->
        <link rel="stylesheet" type="text/css" href="../../diseno/dataTable/css/dataTables.bootstrap.css">
        <link rel="stylesheet" type="text/css" href="../../diseno/dataTable/css/jquery.dataTables.css">
        <!-- FavIcon -->
        <link rel="shortcut icon" href="../../diseno/images/favicon.ico">
        <!-- Stylos Propios -->
        <link rel="stylesheet" type="text/css" href="../../diseno/css/style.css">
    </head>
    <body>
        <jsp:include page="../nav.jsp" />

        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-info">
                    <div class="panel-body">
                        <form action="leerDatos.jsp" method="post">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="tipoDoc" id="tipoDocl"><i class="fa fa-tags prefix" id="tipoDoci"></i>
                                            Tipo documento
                                        </label>
                                        <select class="form-control" id="tipoDoc" name="tipoDoc" style="height: 40px; border-radius: 5px;" required>
                                            <option value="1">Cedula</option>
                                            <option value="2">Registro Civil</option>
                                            <option value="3">NUIP</option>
                                        </select>
                                    </div> 
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="documento" id="documentol">
                                            <i class="fa fa-child prefix" id="documentoi"></i> 
                                            Numero Documento
                                        </label>
                                        <input id="documento" name="documento" type="number" class="form-control" placeholder="1090xxxx" required> 

                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="nombre" id="nombrel">
                                            <i class="fa fa-child prefix" id="nombrei"></i> 
                                            Nombre
                                        </label>
                                        <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Nombres" required>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group" >
                                        <label for="apellido" id="apellidol">
                                            <i class="fa fa-child prefix" id="apellidoi"></i> 
                                            Apellidos
                                        </label>
                                        <input type="text" class="form-control" id="apellido" name="apellido" placeholder="Apellidos" required>

                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group" >
                                        <label for="telCasa" id="telCasal">
                                            <i class="fa fa-volume-control-phone" id="telCasai"></i> 
                                            Telefono Casa
                                        </label>
                                        <input type="number" class="form-control" id="telCasa" name="telCasa" placeholder="Tel_Casa" required>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group" >
                                        <label for="movil" id="movill">
                                            <i class="fa fa-mobile" id="movili"></i> 
                                            Movil
                                        </label>
                                        <input type="number" class="form-control" id="movil" name="movil" placeholder="Movil" required>

                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-md-offset-3">
                                    <div class="form-group">
                                        <label for="email" id="emaill">
                                            <i class="fa fa-envelope prefix" id="emaili"></i> 
                                            email
                                        </label>
                                        <input type="email" class="form-control" id="email" name="email" placeholder="Email" required>
                                    </div>
                                </div>
                            </div>
                            <div align="center">
                                <button id="acceder" name="requerimiento" class="btn btn-danger" type="submit" value="acceder">ACCEDER</button>
                                <button id="cancelar" name="requerimiento" class="btn btn-info" type="submit" value="cancelar">CANCELAR</button>
                            </div>
                        </form>  
                    </div>
                </div>
            </div>

        </div>


        <jsp:include page="../footer.jsp" />



        <!-- jQuery -->
        <script type="text/javascript" src="../../diseno/js/jquery-2.2.3.min.js"></script>
        <script type="text/javascript" src="../../diseno/js/jquery-1.11.2.min.js"></script>

        <!-- Bootstrap tooltips -->
        <script type="text/javascript" src="../../diseno/js/tether.min.js"></script>
        <script type="text/javascript" src="../../diseno/js/bootstrap.js"></script>
        <!-- MDB core JavaScript -->
        <script type="text/javascript" src="../../diseno/js/mdb.min.js"></script>
        <!-- Scripts Varios -->
        <script type="text/javascript" src="../../diseno/js/sidebar_menu.js"></script>
        <script type="text/javascript" src="../../diseno/js/moment.js"></script>
        <script type="text/javascript" src="../../diseno/js/fileinput.js"></script>
        <!-- Scripts Propios -->
        <script type="text/javascript" src="../../diseno/js/generales.js"></script>
        <!-- Script Para Bloqueo -->
        <script type="text/javascript" src="../../diseno/js/blockUI.js"></script>
        <!-- Scripts de Alertas toastr -->
        <script type="text/javascript" src="../../diseno/js/toastr.js"></script>
        <!-- Datatables 
        <script type="text/javascript" src="diseno/dataTable/js/dataTables.bootstrap.js"></script>
        <script type="text/javascript" src="diseno/dataTable/js/jquery.dataTables.js"></script> 
        -->

    </body>
</html>
