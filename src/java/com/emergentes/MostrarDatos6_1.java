package com.emergentes;

import com.emergentes.modelo.Datos6_1;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "MostrarDatos6_1", urlPatterns = {"/MostrarDatos6_1"})
public class MostrarDatos6_1 extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    String nombre = request.getParameter("nombre");
    String sexo = request.getParameter("sexo");
    int telefono = Integer.parseInt(request.getParameter("telefono"));
    String correo = request.getParameter("correo");
    
    Datos6_1 maycol = new Datos6_1();
    maycol.setNombre(nombre);
    maycol.setSexo(sexo);
    maycol.setTelefono(telefono);
    maycol.setCorreo(correo);
    request.setAttribute("jhon", maycol);
    request.getRequestDispatcher("salida6_1.jsp").forward(request, response);
    }
}
