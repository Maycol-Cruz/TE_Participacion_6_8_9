package com.emergentes;

import com.emergentes.modelo.Datos6_2;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "MostrarDatos6_2", urlPatterns = {"/MostrarDatos6_2"})
public class MostrarDatos6_2 extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String descripcion = request.getParameter("descripcion");
        String categoria = request.getParameter("categoria");
        
        Datos6_2 maycol = new Datos6_2();
        maycol.setId(id);
        maycol.setDescripcion(descripcion);
        maycol.setCategoria(categoria);
        request.setAttribute("jhon", maycol);
        request.getRequestDispatcher("salida6_2.jsp").forward(request, response);
    }

}
