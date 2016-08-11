/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function pagina(){
    $('#enviar').removeClass('waves-effect');
    $('#enviar').removeClass('waves-light');
}

function leerDatosPersona() {
    
    alert('llego a leerdatos');
    
    var tipoDoc = $('#tipoDoc').val();
    
    var documento = $('#documento').val();
    if(documento === ''){
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
            else{
                alert('no hizo caso');
            }
        }
    };
    
    
    var text = "leerDatos.jsp?tipo="+tipoDoc+"&documento="+documento
    +"&nombre="+nombre+"&apellido="+apellido+"&telCasa="+telCasa+"&movil="+movil
    +"&email="+email;
    
    xhttp.open("post", text, true);
    xhttp.send();
}


