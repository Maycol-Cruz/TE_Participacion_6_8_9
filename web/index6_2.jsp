<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Ingrese Datos Del Producto</h1>
        <form action="MostrarDatos6_2" method="post">
            <table>
                <tr>
                    <td>Id:</td>
                    <td><input type="text" name="id" ></td>
                </tr>
                <tr>
                    <td>Descripcion:</td>
                    <td><input type="text" name="descripcion" ></td>
                </tr>
                <tr>
                    <td>Categoria del producto
                    <select name="categoria">
                    <option value="Nuevo">Nuevo
                    <option value='Estrella'>Estrella
                    <option value='Seguidores'>Seguidores
                    <option value='Apoyo'>Apoyo
                    <option value='Temporada'>Temporada
                    <option value='A La Baja'>A La Baja
                    </select></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Enviar" ></td>
                </tr>
            </table>
        </form>
        <br><br>
        <a href="superIndex.jsp">Volver Al Menú Principal</a><br>
    </body>
</html>
