function validar() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (xhttp.readyState === 4 && xhttp.status === 200) {
            var x = xhttp.responseText;
            if (x.indexOf("no") > -1) {
                window.location.href = "index.jsp";
            }
            console.log(x);
        }
    };
    var text = "validar.jsp";
    xhttp.open("post", text, true);
    xhttp.send();
}

function validar2() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (xhttp.readyState === 4 && xhttp.status === 200) {
            var x = xhttp.responseText;
            if (x.indexOf("no") > -1) {
                window.location.href = "../../index.jsp";
            }
            console.log(x);
        }
    };
    var text = "../../validar.jsp";
    xhttp.open("post", text, true);
    xhttp.send();
}

function addPersonal() {

    var nombre = $('#nombre').val();
    var mail = $('#email').val();
    var contrasenia = $('#contrasenia').val();
    var fechaNac = $('#fechaNac').val();
    var direccion = $('#direccion').val();
    var tienda = $('#idTienda').val();
    var tipoUser = $('#tipoUser').val();
    var documento = $("#documento").val();
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (xhttp.readyState === 4 && xhttp.status === 200) {
            console.log("ok");
        }
    };
    var text = "titulo.jsp?nombre=" + nombre + "&mail=" + mail + "&contrasenia=" + contrasenia
            + "&fechaNac=" + fechaNac + "&direccion=" + direccion + "&tienda=" + tienda + "&tipoUser=" + tipoUser + "&documento=" + documento;
    xhttp.open("post", text, true);
    xhttp.send();
}

function activarPanel() {
    var dato = $("#dato").val();
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (xhttp.readyState === 4 && xhttp.status === 200) {
            if (xhttp.responseText.indexOf("vacio") > -1) {
                $.unblockUI();
                $("#panel-info").addClass('hidden');
                $("#panel-foto").addClass('hidden');
                $("#panel-info").removeClass('panel panel-info');
                $("#panel-foto").removeClass('panel panel-warning');
                toastr.options = {
                    "closeButton": false,
                    "debug": false,
                    "newestOnTop": true,
                    "progressBar": false,
                    "positionClass": "toast-top-right",
                    "preventDuplicates": true,
                    "onclick": null,
                    "showDuration": "300",
                    "hideDuration": "1000",
                    "timeOut": "5000",
                    "extendedTimeOut": "1000",
                    "showEasing": "swing",
                    "hideEasing": "linear",
                    "showMethod": "fadeIn",
                    "hideMethod": "fadeOut"
                };
                toastr.info("No se han encontrado registros del empleado.", "Ooops!");
            } else {
                $.unblockUI();
                var x = xhttp.responseText.split('##');
                //ADMINISTRADOR##MERKAGUSTO##MANUEL##MANUEL.SARAVIA.BULLA@GMAIL.COM##PRADOS DEL ESTE##1994-07-26
                $("#panel-info").removeClass('hidden');
                $("#panel-foto").removeClass('hidden');
                $("#panel-info").addClass('panel panel-info');
                $("#panel-foto").addClass('panel panel-warning');
                $("#email").addClass('active');
                $("#icon-email").addClass('active');
                $("#label-email").addClass('active');
                $("#nombre").addClass('active');
                $("#icon-nombre").addClass('active');
                $("#label-nombre").addClass('active');
                $("#direccion").addClass('active');
                $("#icon-direccion").addClass('active');
                $("#label-direccion").addClass('active');
                $("#fechaNac").addClass('active');
                $("#icon-fechaNac").addClass('active');
                $("#label-fechaNac").addClass('active');
                $("#cargo").html(x[0]);
                $("#tienda").html(x[1]);
                $("#nombre").val(x[2]);
                $("#email").val(x[3]);
                $("#direccion").val(x[4]);
                $("#fechaNac").val(x[5]);
                $("#foto").html(x[6]);
            }
        }
    };
    $.blockUI({
        message: 'Consultando Empleado',
        css: {
            border: 'none',
            padding: '15px',
            backgroundColor: '#000',
            '-webkit-border-radius': '10px',
            '-moz-border-radius': '10px',
            opacity: .5,
            color: '#fff'
        }});
    var text = "consultar.jsp?dato=" + dato;
    xhttp.open("post", text, true);
    xhttp.send();
}

function buscarTienda() {
    var dato = $("#dato").val();
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (xhttp.readyState === 4 && xhttp.status === 200) {
            if (xhttp.responseText.indexOf("vacio") > -1) {
                $.unblockUI();
                $("#panel-info-tienda").addClass('hidden');
                $("#panel-info-tienda").removeClass('panel panel-info');
                toastr.options = {
                    "closeButton": false,
                    "debug": false,
                    "newestOnTop": true,
                    "progressBar": false,
                    "positionClass": "toast-top-right",
                    "preventDuplicates": true,
                    "onclick": null,
                    "showDuration": "300",
                    "hideDuration": "1000",
                    "timeOut": "5000",
                    "extendedTimeOut": "1000",
                    "showEasing": "swing",
                    "hideEasing": "linear",
                    "showMethod": "fadeIn",
                    "hideMethod": "fadeOut"
                };
                toastr.info("No se han encontrado registros de la tienda.", "Ooops!");
            } else {
                $.unblockUI();
                $("#panel-info-tienda").removeClass('hidden');
                $("#panel-info-tienda").addClass('panel panel-info');
                $("#Btabla-tienda").html(xhttp.responseText);
                $("#tabla-tienda").DataTable();
            }
        }
    };
    $.blockUI({
        message: 'Consultando Tienda',
        css: {
            border: 'none',
            padding: '15px',
            backgroundColor: '#000',
            '-webkit-border-radius': '10px',
            '-moz-border-radius': '10px',
            opacity: .5,
            color: '#fff'
        }});
    var text = "buscar.jsp?dato=" + dato;
    xhttp.open("post", text, true);
    xhttp.send();
}

function buscarProveedor() {
    var dato = $("#dato").val();
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (xhttp.readyState === 4 && xhttp.status === 200) {
            if (xhttp.responseText.indexOf("vacio") > -1) {
                $.unblockUI();
                $("#panel-info-proveedor").addClass('hidden');
                $("#panel-info-proveedor").removeClass('panel panel-info');
                toastr.options = {
                    "closeButton": false,
                    "debug": false,
                    "newestOnTop": true,
                    "progressBar": false,
                    "positionClass": "toast-top-right",
                    "preventDuplicates": true,
                    "onclick": null,
                    "showDuration": "300",
                    "hideDuration": "1000",
                    "timeOut": "5000",
                    "extendedTimeOut": "1000",
                    "showEasing": "swing",
                    "hideEasing": "linear",
                    "showMethod": "fadeIn",
                    "hideMethod": "fadeOut"
                };
                toastr.info("No se han encontrado registros del proveedor.", "Ooops!");
            } else {
                $.unblockUI();
                $("#panel-info-proveedor").removeClass('hidden');
                $("#panel-info-proveedor").addClass('panel panel-info');
                $("#Btabla-proveedor").html(xhttp.responseText);
                $("#tabla-proveedor").DataTable();
            }
        }
    };
    $.blockUI({
        message: 'Consultando Proveedor',
        css: {
            border: 'none',
            padding: '15px',
            backgroundColor: '#000',
            '-webkit-border-radius': '10px',
            '-moz-border-radius': '10px',
            opacity: .5,
            color: '#fff'
        }});
    var text = "buscar.jsp?dato=" + dato;
    xhttp.open("post", text, true);
    xhttp.send();
}

function addProducto() {

    var nombre = $("#nombre").val();
    var codigo = $("#codigo").val();
    var descripcion = $("#descripcion").val();
    var descripcion2 = $("#descripcion2").val();
    var categoria = $("#categoria").val();
    var precioProveedor = $("#precioProveedor").val();
    var precioPublico = $("#precioPublico").val();
    var precioPromo = $("#precioPromo").val();
    var proveedor = $("#proveedor").val();
    var cantidad = $("#cantidad").val();
    var color = $("#color").val();
    var peso = $("#peso").val();
    var fechaExp = $("#fechaExp").val();
    var altura = $("#altura").val();
    var anchura = $("#anchura").val();
    var nombreImpuesto = $("#nombreImpuesto").val();
    var porcentajeImpuesto = $("#porcentajeImpuesto").val();
    var descuento = $("#descuento").val();
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (xhttp.readyState === 4 && xhttp.status === 200) {
            console.log(xhttp.responseText);
        }
    };
    var text = "caracteristicas.jsp?nombre=" + nombre + "&codigo=" + codigo + "&descripcion=" + descripcion
            + "&descripcion2=" + descripcion2 + "&categoria=" + categoria + "&precioProveedor=" + precioProveedor
            + "&precioPublico=" + precioPublico + "&precioPromo=" + precioPromo
            + "&proveedor=" + proveedor + "&cantidad=" + cantidad
            + "&color=" + color + "&peso=" + peso + "&fechaExp=" + fechaExp
            + "&altura=" + altura + "&anchura=" + anchura
            + "&nombreImpuesto=" + nombreImpuesto + "&porcentajeImpuesto=" + porcentajeImpuesto + "&descuento=" + descuento;
    ;
    xhttp.open("post", text, true);
    xhttp.send();
}

function consultarProducto() {
    var dato = $("#dato").val();
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (xhttp.readyState === 4 && xhttp.status === 200) {
            if (xhttp.responseText.indexOf("vacio") > -1) {
                $.unblockUI();
                $("#panel-info-producto").addClass('hidden');
                $("#panel-foto-producto").addClass('hidden');
                $("#panel-info-producto").removeClass('panel panel-info');
                $("#panel-foto-producto").removeClass('panel panel-warning');
                toastr.options = {
                    "closeButton": false,
                    "debug": false,
                    "newestOnTop": true,
                    "progressBar": false,
                    "positionClass": "toast-top-right",
                    "preventDuplicates": true,
                    "onclick": null,
                    "showDuration": "300",
                    "hideDuration": "1000",
                    "timeOut": "5000",
                    "extendedTimeOut": "1000",
                    "showEasing": "swing",
                    "hideEasing": "linear",
                    "showMethod": "fadeIn",
                    "hideMethod": "fadeOut"
                };
                toastr.info("No se han encontrado registros del Producto.", "Ooops!");
            } else {
                $.unblockUI();
                var x = xhttp.responseText.split('##');
                //ADMINISTRADOR##MERKAGUSTO##MANUEL##MANUEL.SARAVIA.BULLA@GMAIL.COM##PRADOS DEL ESTE##1994-07-26
                $("#nombre").val(x[0]);
                $("#codigo").val(x[1]);
                $("#descripcion2").val(x[2]);
                $("#categoria").val(x[3]);
                $("#precioProveedor").val(x[4]);
                $("#precioPublico").val(x[5]);
                $("#precioPromo").val(x[6]);
                $("#proveedor").val(x[7]);
                $("#cantidad").val(x[8]);
                $("#color").val(x[9]);
                $("#peso").val(x[10]);
                $("#altura").val(x[11]);
                $("#anchura").val(x[12]);
                $("#nombreImpuesto").val(x[13]);
                $("#porcentajeImpuesto").val(x[14]);
                $("#descuento").val(x[15]);
                $("#panel-foto-producto").html(x[16]);
                
                $("#panel-info-producto").removeClass('hidden');
                $("#panel-foto-producto").removeClass('hidden');
                $("#panel-info-producto").addClass('panel panel-info');
                $("#panel-foto-producto").addClass('panel panel-warning');
                $("#nombre").addClass('active');
                $("#pnombre").addClass('active');
                $("#pinombre").addClass('active');
                $("#codigo").addClass('active');
                $("#picodigo").addClass('active');
                $("#pcodigo").addClass('active');
                $("#descripcion2").addClass('active');
                $("#pdescripcion2").addClass('active');
                $("#pidescripcion2").addClass('active');
                $("#categoria").addClass('active');
                $("#pcategoria").addClass('active');
                $("#picategoria").addClass('active');
                $("#precioProveedor").addClass('active');
                $("#pprecioProveedor").addClass('active');
                $("#piprecioProveedor").addClass('active');
                $("#precioPublico").addClass('active');
                $("#pprecioPublico").addClass('active');
                $("#piprecioPublico").addClass('active');
                $("#precioPromo").addClass('active');
                $("#pprecioPromo").addClass('active');
                $("#piprecioPromo").addClass('active');
                $("#proveedor").addClass('active');
                $("#pproveedor").addClass('active');
                $("#piproveedor").addClass('active');
                $("#cantidad").addClass('active');
                $("#pcantidad").addClass('active');
                $("#picantidad").addClass('active');
                $("#color").addClass('active');
                $("#pcolor").addClass('active');
                $("#picolor").addClass('active');
                $("#peso").addClass('active');
                $("#ppeso").addClass('active');
                $("#pipeso").addClass('active');
                $("#altura").addClass('active');
                $("#paltura").addClass('active');
                $("#pialtura").addClass('active');
                $("#anchura").addClass('active');
                $("#panchura").addClass('active');
                $("#pianchura").addClass('active');
                $("#nombreImpuesto").addClass('active');
                $("#pnombreImpuesto").addClass('active');
                $("#pinombreImpuesto").addClass('active');
                $("#porcentajeImpuesto").addClass('active');
                $("#pporcentajeImpuesto").addClass('active');
                $("#piporcentajeImpuesto").addClass('active');
                $("#descuento").addClass('active');
                $("#pdescuento").addClass('active');
                $("#pidescuento").addClass('active');

                
            }
        }
    };
    $.blockUI({
        message: 'Consultando Producto',
        css: {
            border: 'none',
            padding: '15px',
            backgroundColor: '#000',
            '-webkit-border-radius': '10px',
            '-moz-border-radius': '10px',
            opacity: .5,
            color: '#fff'
        }});
    var text = "consultar.jsp?dato=" + dato;
    xhttp.open("post", text, true);
    xhttp.send();
}

function listarEmpleados() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (xhttp.readyState === 4 && xhttp.status === 200) {
            if (xhttp.responseText.indexOf("vacio") > -1) {
                $.unblockUI();
                $("#tabla-listado").addClass('hidden');
                $("#tabla-listado").removeClass('table table-hover');
                toastr.options = {
                    "closeButton": false,
                    "debug": false,
                    "newestOnTop": true,
                    "progressBar": false,
                    "positionClass": "toast-top-right",
                    "preventDuplicates": true,
                    "onclick": null,
                    "showDuration": "300",
                    "hideDuration": "1000",
                    "timeOut": "5000",
                    "extendedTimeOut": "1000",
                    "showEasing": "swing",
                    "hideEasing": "linear",
                    "showMethod": "fadeIn",
                    "hideMethod": "fadeOut"
                };
                toastr.info("No se han encontrado registros de la consulta.", "Ooops!");
            } else {
                $.unblockUI();
                console.log(xhttp.responseText);
                var x = xhttp.responseText.split('%%');
                $("#tabla-listado").removeClass('hidden');
                $("#tabla-listado").addClass('table table-hover');
                $("#head-list").html(x[0]);
                $("#body-list").html(x[1]);
                $("#tabla-listado").DataTable();
            }
        }
    };
    $.blockUI({
        message: 'Listando Empleados',
        css: {
            border: 'none',
            padding: '15px',
            backgroundColor: '#000',
            '-webkit-border-radius': '10px',
            '-moz-border-radius': '10px',
            opacity: .5,
            color: '#fff'
        }});
    //var text = "buscar.jsp?dato=1";
    var text = "listarEmpleados.jsp";
    xhttp.open("post", text, true);
    xhttp.send();
}

function listarProveedores() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (xhttp.readyState === 4 && xhttp.status === 200) {
            if (xhttp.responseText.indexOf("vacio") > -1) {
                $.unblockUI();
                $("#tabla-listado").addClass('hidden');
                $("#tabla-listado").removeClass('table table-hover');
                toastr.options = {
                    "closeButton": false,
                    "debug": false,
                    "newestOnTop": true,
                    "progressBar": false,
                    "positionClass": "toast-top-right",
                    "preventDuplicates": true,
                    "onclick": null,
                    "showDuration": "300",
                    "hideDuration": "1000",
                    "timeOut": "5000",
                    "extendedTimeOut": "1000",
                    "showEasing": "swing",
                    "hideEasing": "linear",
                    "showMethod": "fadeIn",
                    "hideMethod": "fadeOut"
                };
                toastr.info("No se han encontrado registros de la consulta.", "Ooops!");
            } else {
                $.unblockUI();
                console.log(xhttp.responseText);
                var x = xhttp.responseText.split('%%');
                $("#tabla-listado").removeClass('hidden');
                $("#tabla-listado").addClass('table table-hover');
                $("#head-list").html(x[0]);
                $("#body-list").html(x[1]);
                $("#tabla-listado").DataTable();
            }
        }
    };
    $.blockUI({
        message: 'Listando Proveedores',
        css: {
            border: 'none',
            padding: '15px',
            backgroundColor: '#000',
            '-webkit-border-radius': '10px',
            '-moz-border-radius': '10px',
            opacity: .5,
            color: '#fff'
        }});
    //var text = "buscar.jsp?dato=1";
    var text = "listarProveedores.jsp";
    xhttp.open("post", text, true);
    xhttp.send();
}

function listarProductos() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (xhttp.readyState === 4 && xhttp.status === 200) {
            if (xhttp.responseText.indexOf("vacio") > -1) {
                $.unblockUI();
                $("#tabla-listado").addClass('hidden');
                $("#tabla-listado").removeClass('table table-hover');
                toastr.options = {
                    "closeButton": false,
                    "debug": false,
                    "newestOnTop": true,
                    "progressBar": false,
                    "positionClass": "toast-top-right",
                    "preventDuplicates": true,
                    "onclick": null,
                    "showDuration": "300",
                    "hideDuration": "1000",
                    "timeOut": "5000",
                    "extendedTimeOut": "1000",
                    "showEasing": "swing",
                    "hideEasing": "linear",
                    "showMethod": "fadeIn",
                    "hideMethod": "fadeOut"
                };
                toastr.info("No se han encontrado registros de la consulta.", "Ooops!");
            } else {
                $.unblockUI();
                console.log(xhttp.responseText);
                var x = xhttp.responseText.split('%%');
                $("#tabla-listado").removeClass('hidden');
                $("#tabla-listado").addClass('table table-hover');
                $("#head-list").html(x[0]);
                $("#body-list").html(x[1]);
                $("#tabla-listado").DataTable();
            }
        }
    };
    $.blockUI({
        message: 'Listando Productos',
        css: {
            border: 'none',
            padding: '15px',
            backgroundColor: '#000',
            '-webkit-border-radius': '10px',
            '-moz-border-radius': '10px',
            opacity: .5,
            color: '#fff'
        }});
    //var text = "buscar.jsp?dato=1";
    var text = "listarProductos.jsp";
    xhttp.open("post", text, true);
    xhttp.send();
}

function listarTiendas() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (xhttp.readyState === 4 && xhttp.status === 200) {
            if (xhttp.responseText.indexOf("vacio") > -1) {
                $.unblockUI();
                $("#tabla-listado").addClass('hidden');
                $("#tabla-listado").removeClass('table table-hover');
                toastr.options = {
                    "closeButton": false,
                    "debug": false,
                    "newestOnTop": true,
                    "progressBar": false,
                    "positionClass": "toast-top-right",
                    "preventDuplicates": true,
                    "onclick": null,
                    "showDuration": "300",
                    "hideDuration": "1000",
                    "timeOut": "5000",
                    "extendedTimeOut": "1000",
                    "showEasing": "swing",
                    "hideEasing": "linear",
                    "showMethod": "fadeIn",
                    "hideMethod": "fadeOut"
                };
                toastr.info("No se han encontrado registros de la consulta.", "Ooops!");
            } else {
                $.unblockUI();
                console.log(xhttp.responseText);
                var x = xhttp.responseText.split('%%');
                $("#tabla-listado").removeClass('hidden');
                $("#tabla-listado").addClass('table table-hover');
                $("#head-list").html(x[0]);
                $("#body-list").html(x[1]);
                $("#tabla-listado").DataTable();
            }
        }
    };
    $.blockUI({
        message: 'Listando Tiendas',
        css: {
            border: 'none',
            padding: '15px',
            backgroundColor: '#000',
            '-webkit-border-radius': '10px',
            '-moz-border-radius': '10px',
            opacity: .5,
            color: '#fff'
        }});
    //var text = "buscar.jsp?dato=1";
    var text = "listarTiendas.jsp";
    xhttp.open("post", text, true);
    xhttp.send();
}

function consultarVentas() {
    var desde = $("#desde").val();
    var hasta = $("#hasta").val();
    if ($.isEmptyObject(desde) || $.isEmptyObject(hasta)) {
        toastr.options = {
            "closeButton": false,
            "debug": false,
            "newestOnTop": true,
            "progressBar": false,
            "positionClass": "toast-top-right",
            "preventDuplicates": true,
            "onclick": null,
            "showDuration": "300",
            "hideDuration": "1000",
            "timeOut": "5000",
            "extendedTimeOut": "1000",
            "showEasing": "swing",
            "hideEasing": "linear",
            "showMethod": "fadeIn",
            "hideMethod": "fadeOut"
        };
        toastr.warning("Se deben llenar los campos requeridos.", "Ooops!");
    }
    else {
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function () {
            if (xhttp.readyState === 4 && xhttp.status === 200) {
                if (xhttp.responseText.indexOf("vacio") > -1) {
                    $.unblockUI();
                    $("#tabla-listado").addClass('hidden');
                    $("#tabla-listado").removeClass('table table-hover');
                    toastr.options = {
                        "closeButton": false,
                        "debug": false,
                        "newestOnTop": true,
                        "progressBar": false,
                        "positionClass": "toast-top-right",
                        "preventDuplicates": true,
                        "onclick": null,
                        "showDuration": "300",
                        "hideDuration": "1000",
                        "timeOut": "5000",
                        "extendedTimeOut": "1000",
                        "showEasing": "swing",
                        "hideEasing": "linear",
                        "showMethod": "fadeIn",
                        "hideMethod": "fadeOut"
                    };
                    toastr.info("No se han encontrado registros de la consulta.", "Ooops!");
                } else {
                    $.unblockUI();
                    console.log(xhttp.responseText);
                    var x = xhttp.responseText.split('%%');
                    $("#tabla-listado").removeClass('hidden');
                    $("#tabla-listado").addClass('table table-hover');
                    $("#head-list").html(x[0]);
                    $("#body-list").html(x[1]);
                    $("#tabla-listado").DataTable();
                }
            }
        };
        $.blockUI({
            message: 'Listando Ventas',
            css: {
                border: 'none',
                padding: '15px',
                backgroundColor: '#000',
                '-webkit-border-radius': '10px',
                '-moz-border-radius': '10px',
                opacity: .5,
                color: '#fff'
            }});
        //var text = "buscar.jsp?dato=1";
        var text = "listarVentas.jsp?desde="+desde+"&hasta="+hasta;
        xhttp.open("post", text, true);
        xhttp.send();
    }
}