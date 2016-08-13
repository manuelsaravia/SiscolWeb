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
        <link rel="stylesheet" type="text/css" href="../../diseno/css/select2.css">
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
    <body onload="pagina();">
        <jsp:include page="../nav.jsp"/>
        <div class="row" style="margin-bottom: 15px;">

            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <h3 class="panel-title">Pre-Matricula</h3>
                    </div>
                    <div class="panel-body">
                        <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-info">
                                <div class="panel-heading" role="tab" id="headingOne">
                                    <h4 class="panel-title">
                                        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                            INFORMACÓN DEL ESTUDIANTE
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label for="tipoDoc" id="tipoDocl"><i class="fa fa-tags prefix" id="tipoDoci"></i> Tipo de Usuario</label>
                                                    <select class="form-control " id="tipoDoc" style="height: 40px; border-radius: 5px;">
                                                        <option class="selected select-none">Seleccione el tipo de Documento</option>
                                                        <option value="1">REGISTRO CIVIL</option>
                                                        <option value="2">TARJETA DE IDENTIDAD</option>
                                                        <option value="3">CEDULA DE CIUDADANIA</option>
                                                    </select>
                                                </div> 
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label for="documento">
                                                        <i class="fa fa-child prefix"></i> 
                                                        Nº Documento
                                                    </label>
                                                    <input type="number" class="form-control" id="documento" placeholder="Nº Documento">
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label for="expedicion">
                                                        <i class="fa fa-child prefix"></i>
                                                        Lugar de Expedición
                                                    </label>
                                                    <input type="text" id="expedicion" class="form-control" placeholder="Lugar de Expedicion del Documento">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="nombre">
                                                        <i class="fa fa-child prefix"></i> 
                                                        Nombre del Estudiante
                                                    </label>
                                                    <input type="text" id="nombre" class="form-control" placeholder="Nombre del Estudiante">
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="apellido">
                                                        <i class="fa fa-user prefix"></i> 
                                                        Apellidos del Estudiante
                                                    </label>
                                                    <input type="text" id="apellido" class="form-control" placeholder="Apellidos del Estudiante">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label for="tipoDoc" id="tipoDocl"><i class="fa fa-tags prefix" id="tipoDoci"></i>Tipo de Sexo</label>
                                                    <select class="form-control " id="tipoDoc" style="height: 40px; border-radius: 5px;">
                                                        <option class="selected select-none">Seleccione el tipo de Sexo</option>
                                                        <option value="M">MASCULINO</option>
                                                        <option value="F">FEMENINO</option>
                                                    </select>
                                                </div> 
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label for="tipoDoc" id="tipoDocl"><i class="fa fa-tags prefix" id="tipoDoci"></i> Tipo de Sangre</label>
                                                    <select class="form-control " id="tipoDoc" style="height: 40px; border-radius: 5px;">
                                                        <option class="selected select-none">Seleccione el tipo de Sangre</option>
                                                        <optgroup label="RH Positivos">
                                                            <option value="1">A+</option>
                                                            <option value="2">B+</option>
                                                            <option value="3">AB+</option>
                                                            <option value="3">O+</option>
                                                        </optgroup>
                                                        <optgroup label="RH Negativos">
                                                            <option value="4">A-</option>
                                                            <option value="5">B-</option>
                                                            <option value="6">AB-</option>
                                                            <option value="7">O-</option>
                                                        </optgroup>
                                                    </select>
                                                </div> 
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label for="fechaNac">
                                                        <i class="fa fa-user prefix"></i> 
                                                        Fecha de Nacimiento
                                                    </label>
                                                    <input type="date" id="fechaNac" class="form-control">
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label for="lugarNac">
                                                        <i class="fa fa-user prefix"></i> 
                                                        Lugar de Nacimiento
                                                    </label>
                                                    <input type="text" id="lugarNac" class="form-control" placeholder="Lugar de Nacimiento">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row" style="border-bottom: 1px solid #ecf0f1;">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="direccion">
                                                        <i class="fa fa-user prefix"></i> 
                                                        Dirección de Residencia
                                                    </label>
                                                    <input type="text" id="direccion" class="form-control" placeholder="Direccion de la Vivienda">
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label for="telefono">
                                                        <i class="fa fa-user prefix"></i> 
                                                        Telefono Fijo
                                                    </label>
                                                    <input type="number" id="telefono" class="form-control" placeholder="5755555">
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label for="telefonoMovil">
                                                        <i class="fa fa-user prefix"></i> 
                                                        Telefono Móvil
                                                    </label>
                                                    <input type="number" id="telefonoMovil" class="form-control" placeholder="3103333333">
                                                </div>
                                            </div>
                                        </div>
                                        <br>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="institucion" style="margin-bottom: 0px;">
                                                        <i class="fa fa-user prefix"></i> 
                                                        Institución educativa anterior 
                                                        <button class="btn btn-default btn-xs" id="infoInstitucion" type="button" data-container="body" data-toggle="popover" data-trigger="focus" data-placement="button" data-content="En caso de que el estudiante haya cursado algun grado en el mismo colegio el año pasado, acontinuacion escriba el número 1">
                                                            <i class="fa fa-question-circle-o prefix"></i>
                                                        </button>
                                                    </label>
                                                    <input type="text" id="institucion" class="form-control" placeholder="Institución educativa inmediatamente anterior" data-toggle="tooltip" data-placement="left" title="En caso de ser la misma instucion escriba el número 1" style="margin-top: 0px;">
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label for="grados" id="gradosl"><i class="fa fa-tags prefix" id="gradosi"></i>Tipo de Sexo</label>
                                                    <select class="form-control js-example-basic-multiple" multiple="multiple" id="grados" style="height: 40px; border-radius: 5px; margin-top: 20px;">
                                                        <optgroup label="Primaria">
                                                            <option value="1">PRIMERO</option>
                                                            <option value="2">SEGUNDO</option>
                                                            <option value="3">TERCERO</option>
                                                            <option value="4">CUARTO</option>
                                                            <option value="5">QUINTO</option>
                                                        </optgroup>
                                                        <optgroup label="Secundaria">
                                                            <option value="6">SEXTO</option>
                                                            <option value="7">SEPTIMO</option>
                                                            <option value="8">OCTAVO</option>
                                                            <option value="9">NOVENO</option>
                                                            <option value="10">DECIMO</option>
                                                        </optgroup>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label for="religion" id="religionl"><i class="fa fa-tags prefix" id="religioni"></i> Religion Profesada</label>
                                                    <select class="form-control " id="religion" style="height: 40px; border-radius: 5px; margin-top: 15px;">
                                                        <option class="selected select-none">Seleccione la Religion que profesa</option>
                                                        <option value="c">CATOLICA</option>
                                                        <option value="e">EVANGELICA</option>
                                                        <option value="m">MORMON</option>
                                                        <option value="j">JUDIA</option>
                                                    </select>
                                                </div> 
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-info">
                                <div class="panel-heading" role="tab" id="headingTwo">
                                    <h4 class="panel-title">
                                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                            INFORMACIÓN DE LA MATRICULA
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label for="gradoMat" id="gradoMatl"><i class="fa fa-tags prefix" id="gradoMati"></i> Religion Profesada</label>
                                                    <select class="form-control " id="gradoMat" style="height: 40px; border-radius: 5px; margin-top: 15px;">
                                                        <option class="selected select-none">Seleccione el grado al que se matricula</option>
                                                        <optgroup label="Primaria">
                                                            <option value="1">PRIMERO</option>
                                                            <option value="2">SEGUNDO</option>
                                                            <option value="3">TERCERO</option>
                                                            <option value="4">CUARTO</option>
                                                            <option value="5">QUINTO</option>
                                                        </optgroup>
                                                        <optgroup label="Secundaria">
                                                            <option value="6">SEXTO</option>
                                                            <option value="7">SEPTIMO</option>
                                                            <option value="8">OCTAVO</option>
                                                            <option value="9">NOVENO</option>
                                                            <option value="10">DECIMO</option>
                                                            <option value="11">UNDECIMO</option>
                                                        </optgroup>
                                                    </select>
                                                </div>
                                            </div>

                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label for="tipoEst" id="tipoEstl"><i class="fa fa-tags prefix" id="tipoEsti"></i> Religion Profesada</label>
                                                    <select class="form-control " id="tipoEst" style="height: 40px; border-radius: 5px; margin-top: 15px;">
                                                        <option class="selected select-none">Seleccione el tipo de estudiante</option>

                                                    </select>
                                                </div>
                                            </div>

                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label for="tipoMat" id="tipoMatl"><i class="fa fa-tags prefix" id="tipoMati"></i> Religion Profesada</label>
                                                    <select class="form-control " id="tipoMat" style="height: 40px; border-radius: 5px; margin-top: 15px;">
                                                        <option class="selected select-none">Seleccione el tipo de matricula</option>

                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-info">
                                <div class="panel-heading" role="tab" id="headingThree">
                                    <h4 class="panel-title">
                                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                            INFORMACIÓN DEL ACUDIENTES
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                                    <div class="panel-body">
                                        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-info">
                                <div class="panel-heading" role="tab" id="headingFour">
                                    <h4 class="panel-title">
                                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                            INFORMACIÓN DE LA MADRE
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
                                    <div class="panel-body">
                                        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-info">
                                <div class="panel-heading" role="tab" id="headingFive">
                                    <h4 class="panel-title">
                                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                                            INFORMACIÓN DE LA MADRE
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseFive" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFive">
                                    <div class="panel-body">
                                        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-info">
                                <div class="panel-heading" role="tab" id="headingSix">
                                    <h4 class="panel-title">
                                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
                                            INFORMACIÓN DE LA MADRE
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseSix" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSix">
                                    <div class="panel-body">
                                        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div align="center">
                            <button class="btn btn-danger" id="enviar">ENVIAR DATOS</button>
                        </div>
                    </div>
                </div>
                <br><br>
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
        <script type="text/javascript" src="../../diseno/js/select2.min.js"></script>
        <!-- Scripts Propios -->
        <script type="text/javascript" src="../../diseno/js/generales.js"></script>
        <script type="text/javascript" src="../../diseno/js/scripts.js"></script>
        <!-- Script Para Bloqueo -->
        <script type="text/javascript" src="../../diseno/js/blockUI.js"></script>
        <!-- Scripts de Alertas toastr -->
        <script type="text/javascript" src="../../diseno/js/toastr.js"></script>
        <!-- Datatables 
        <script type="text/javascript" src="diseno/dataTable/js/dataTables.bootstrap.js"></script>
        <script type="text/javascript" src="diseno/dataTable/js/jquery.dataTables.js"></script> 
        -->

        <script>
                $(document).ready(function () {
                    $('[data-toggle="popover"]').popover();
                });
        </script>

        <script type="text/javascript">
            $('#grados').select2();
        </script>

        <script type="text/javascript">
            $(".js-example-basic-multiple").select2({
                placeholder: "Seleccione los grados cursados"
            });
        </script>
    </body>
</html>
