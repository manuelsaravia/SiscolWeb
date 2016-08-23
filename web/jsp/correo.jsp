<%-- 
    Document   : correo
    Created on : 18-ago-2016, 11:21:17
    Author     : jsaravia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="negocio" class="negocio.Negocio" scope="session"></jsp:useBean>
<%
    negocio.enviar();
    %>
