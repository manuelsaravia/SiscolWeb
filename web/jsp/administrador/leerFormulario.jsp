<%-- 
    Document   : leerFormulario
    Created on : 03-ago-2016, 20:46:13
    Author     : jsaravia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    String x = request.getParameter("nombre").toString();
    System.out.println(x);
    session.setAttribute("nombre", x);
    response.sendRedirect("marcos.jsp");
    %>