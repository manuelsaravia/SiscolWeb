<%-- 
    Document   : leerDatos
    Created on : 10-ago-2016, 18:33:15
    Author     : msaravia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="negocio" class="negocio.Negocio" scope="session"></jsp:useBean>
<jsp:useBean id="persona" class="dto.Persona" scope="session"></jsp:useBean>
<%
    String boton = request.getParameter("requerimiento").toString();

    if (boton.equals("acceder")) {
        String tipoDoc = request.getParameter("tipoDoc").toString();
        String documento = request.getParameter("documento").toString();
        String nombre = request.getParameter("nombre").toString();
        String apellido = request.getParameter("apellido").toString();
        String telCasa = request.getParameter("telCasa").toString();
        String movil = request.getParameter("movil").toString();
        String email = request.getParameter("email").toString();

        if (!tipoDoc.isEmpty() && !documento.isEmpty() && !nombre.isEmpty() && !apellido.isEmpty() && !telCasa.isEmpty()
                && !movil.isEmpty() && !email.isEmpty()) {
            persona.setApellido(apellido);
            persona.setEmail(email);
            persona.setMovil(movil);
            persona.setNombre(nombre);
            persona.setTelCasa(telCasa);
            persona.setTipoDoc(tipoDoc);
            persona.setDocumento(documento);

            String mensaje = negocio.leerDatosPersona(persona);

            out.print(mensaje);
        } else {
            out.print("campos vacios");

        }

    }
    else{
        out.print("boton cancelar");
    }
%>
