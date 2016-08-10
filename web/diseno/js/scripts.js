/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function pagina(){
    $('#enviar').removeClass('waves-effect');
    $('#enviar').removeClass('waves-light');
}

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


