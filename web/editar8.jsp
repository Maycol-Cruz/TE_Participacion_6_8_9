<%@page import="com.emergentes.modelo.Nota8" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%
        Nota8 item = (Nota8) request.getAttribute("miactividad");
        boolean nuevo = true;
        if(item.getId() > 0){
            nuevo = false;
        }
  %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>  
        <h1>Registro de Actividades</h1>
        <form action="Controlador8" method="post">
            <table>
                <tr>
                    <td>ID</td>
                    <td><input type="text" name="id" value="<%= item.getId()  %>" /></td>
                </tr>
                <tr>
                    <td>Hora</td>
                    <td><input type="text" name="hora" value="<%= item.getHora()  %>" /></td>
                </tr>
                <tr>
                    <td>Actividad</td>
                    <td><input type="text" name="actividad" value="<%= item.getActividad()  %>" /></td>
                </tr>
                <tr>
                    <td>Cumplido</td>
                    <td><input type="text" name="cumplido" value="<%= item.getCumplido()  %>" ></td>
                </tr>
                <tr>
                    <td><input type="hidden" name="op" value="4" />
                    <input type="hidden" name="nuevo" value="<%= nuevo%>" />
                    <td><input type="submit" value="Enviar"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
