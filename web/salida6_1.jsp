<%@page import="com.emergentes.modelo.Datos6_1"%>
<%
    Datos6_1 jhon = (Datos6_1) request.getAttribute("jhon");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Datos de la Persona</h1>
        <p>Su Nombre Es: <%= jhon.getNombre() %>   </p>
        <p>Su Sexo es: <%= jhon.getSexo() %>   </p>
        <p>Su Telefono Es: <%= jhon.getTelefono() %>   </p>
        <p>Su Correo Electronico Es: <%= jhon.getCorreo() %>   </p>
        <a href="index6_1.jsp">Volver</a>
        <br><br>
        <a href="superIndex.jsp">Volver Al Menú Principal</a><br>
    </body>
</html>
