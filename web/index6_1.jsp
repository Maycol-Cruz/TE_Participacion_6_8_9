<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Ingrese Sus Datos</h1>
        <form action="MostrarDatos6_1" method="post">
            <table>
                <tr>
                    <td>Nombre:</td>
                    <td><input type="text" name="nombre" ></td>
                </tr>
                <tr>
                    <td>Sexo:</td>
                    <td>Varon<input type="checkbox" name="sexo" value="Varon" ></td>
                    <td>Mujer<input type="checkbox" name="sexo" value="Mujer" ></td>
                </tr>
                <tr>
                    <td>Telefono:</td>
                    <td><input type="text" name="telefono" ></td>
                </tr>
                <tr>
                    <td>Correo:</td>
                    <td><input type="email" name="correo" ></td>
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
