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
        <jsp:include page="../nav.jsp"/>
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-danger">
                    <div class="panel-body">
                        <div class="table-responsive">
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>Nombre</th>
                                    <th>apellido</th>
                                    <th>cedula</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>marco</td>
                                    <td>moreno</td>
                                    <td>1</td>
                                </tr>
                                <tr>
                                    <td>manuel</td>
                                    <td>saravia</td>
                                    <td>2</td>
                                </tr>
                                <tr>
                                    <td>marisol</td>
                                    <td>bulla</td>
                                    <td>3</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
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

