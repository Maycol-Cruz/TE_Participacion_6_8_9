<%@page import="com.emergentes.modelo.Libro9"%>
<%@page import="com.emergentes.modelo.LibroDAO9"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Libro9 item = (Libro9) request.getAttribute("item");
        %>
        <h1>Editar Libro</h1>
        <form action="Principal9?op=guardar" method="post">
            Id: <input type="text" name="id" value="<%= item.getId() %>" size="2" pattern="[1-9]{1}[0-9]*"/>
            <input type="hidden" name="tipo" value="<%= item.getId() %>" required/>
            <br>
            Titulo: <input type="text" name="titulo" value="<%= item.getTitulo()%>" requerid />
            <br>
            Autor: <input type="text" name="autor" value="<%= item.getAutor()%>" />
            <br>
            Estado: <input type="radio" name="estado" value="1" <%= (item.getEstado() == 1) ? "checked":"" %> requerid/>Disponible
            <input type="radio" name="estado" value="2" <%= (item.getEstado() == 2) ? "checked":"" %> requerid="" />Prestado
            <br>
            <input type="submit" value="Enviar" />
        </form>
    </body>
</html>
