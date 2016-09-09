/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function pagina() {

    alert(screen.width + " x " + screen.height);

    $.material.init();
    $('#enviar').removeClass('waves-effect');
    $('#enviar').removeClass('waves-light');
    $('#infoInstitucion').removeClass('waves-effect');
    $('#infoInstitucion').removeClass('waves-light');

}

function leerDatosPersona() {

    alert('llego a leerdatos');

    var tipoDoc = $('#tipoDoc').val();

    var documento = $('#documento').val();
    if (documento === '') {
        alert('no lleno el documento');
        $('#acceder').removeClass('btn-danger');
        $('#acceder').addClass('btn-warning');

    }
    var nombre = $('#nombre').val();

    var apellido = $('#apellido').val();

    var telCasa = $('#telCasa').val();

    var movil = $('#movil').val();

    var email = $('#email').val();



    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (xhttp.readyState === 4 && xhttp.status === 200) {

            var x = xhttp.responseText;

            if (x.indexOf("ok") > -1) {
                alert('el usuario ingreso todos los datos');
                console.log('registro exitoso');
            }
            else {
                alert('no hizo caso');
            }
        }
    };


    var text = "leerDatos.jsp?tipo=" + tipoDoc + "&documento=" + documento
            + "&nombre=" + nombre + "&apellido=" + apellido + "&telCasa=" + telCasa + "&movil=" + movil
            + "&email=" + email;

    xhttp.open("post", text, true);
    xhttp.send();
}

function loading(btn) {
    $(btn).button('loading');
}

function parar(btn) {
    $('#' + btn).button('reset');


}

function padre() {
    alert('padre');
    $('#parentesco').addClass('hidden');

}

function madre() {
    alert('madre');
    $('#parentesco').addClass('hidden');
}

function otro() {
    alert('otro');
    $('#parentesco').removeClass('hidden');
}

function calcularMenu() {
    var myWidth = 0, myHeight = 0;
    if (typeof (window.innerWidth) == 'number') {
        //No-IE 
        myWidth = window.innerWidth;
        myHeight = window.innerHeight;
    } else if (document.documentElement && (document.documentElement.clientWidth || document.documentElement.clientHeight)) {
        //IE 6+ 
        myWidth = document.documentElement.clientWidth;
        myHeight = document.documentElement.clientHeight;
    } else if (document.body && (document.body.clientWidth || document.body.clientHeight)) {
        //IE 4 compatible 
        myWidth = document.body.clientWidth;
        myHeight = document.body.clientHeight;
    }
    //window.alert('Width = ' + myWidth);
    //window.alert('Height = ' + myHeight);



    if (myWidth > 767) {
        $('#menuPadre').height(myHeight - 100);
        $('#contenido').width(myWidth - 250);
        $("#contenido").css({"margin-left": "230px", "margin-top": "-" + (myHeight-100) + "px"});
    }
    else {
        $('#menuPadre').addClass('hidden');
        $("#contenido").css({"width":"90%","margin-left": "5%", "margin-top": "20px"});
    }


}
