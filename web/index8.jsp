<%@page import="com.emergentes.modelo.Nota8" %>
<%@page import="java.util.ArrayList" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MVC Agenda</title>
    </head>
    <body>
        <%
        if(session.getAttribute("listaest") == null){
            ArrayList<Nota8> listaux = new ArrayList<Nota8>();
            session.setAttribute("listaest", listaux);
        }    
        ArrayList<Nota8> lista = (ArrayList<Nota8>) session.getAttribute("listaest");
        %>
        <h1>Agenda Personal</h1>
        <a href="Controlador8?op=1">Agregar Actividad</a>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Hora</th>
                <th>Actividad</th>
                <th>Cumplido</th>
            </tr>       
        <%
        if(lista != null){
            for(Nota8 item : lista){
        %>
        <tr>
            <td><%= item.getId() %></td>
            <td><%= item.getHora() %></td>
            <td><%= item.getActividad() %></td>
            <td><%= item.getCumplido() %></td>
            <td><a href="Controlador8?op=2&id=<%= item.getId()%>">Modificar</a></td>
            <td><a href="Controlador8?op=3&id=<%= item.getId()%>"
                   onclick="return confirm('Esta seguro de que ya cumplio la actividad');">Eliminar</a></td>
        </tr>
        <%
            }
        }
        %>
        </table>
        <br><br>
        <a href="superIndex.jsp">Volver Al Menú Principal</a><br>
    </body>
</html>
