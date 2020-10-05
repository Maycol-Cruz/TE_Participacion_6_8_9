<%@page import="com.emergentes.modelo.Datos6_2"%>
<%
    Datos6_2 jhon = (Datos6_2) request.getAttribute("jhon");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Datos Del Producto</h1>
        <p>El ID Es: <%= jhon.getId() %>  </p>
        <p>Descripcion Del Producto: <%= jhon.getDescripcion() %>  </p>
        <p>La Categoria Del Prodcuto Es: <%= jhon.getCategoria() %>  </p>
        <a href="index6_2.jsp">Volver</a>
        <br><br>
        <a href="superIndex.jsp">Volver Al Menú Principal</a><br>
    </body>
    
</html>
