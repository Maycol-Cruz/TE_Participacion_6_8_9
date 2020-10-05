package com.emergentes.controlador8;

import com.emergentes.modelo.Nota8;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "Controlador8", urlPatterns = {"/Controlador8"})
public class Controlador8 extends HttpServlet {
    
     @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    int op = Integer.parseInt(request.getParameter("op"));
    int id,pos;
    
     HttpSession ses = request.getSession();
     ArrayList<Nota8> lista = (ArrayList<Nota8>) ses.getAttribute("listaest");
    if(op == 1){
        Nota8 p = new Nota8();
        request.setAttribute("miactividad", p);
        request.getRequestDispatcher("editar8.jsp").forward(request, response);
    }
    if(op == 2){
      id = Integer.parseInt(request.getParameter("id"));
      pos = buscarIndice(request, id);
      Nota8 p1 = lista.get(pos);
      request.setAttribute("miactividad", p1);
      request.getRequestDispatcher("editar8.jsp").forward(request, response);
    }
    if(op == 3){
      id = Integer.parseInt(request.getParameter("id"));
      pos = buscarIndice(request, id);
      lista.remove(pos);
      ses.setAttribute("listaest", lista);
      response.sendRedirect("index8.jsp");
    }
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        int pos;
        String hora = request.getParameter("hora");
        String actividad = request.getParameter("actividad");
        String cumplido = request.getParameter("cumplido");
        String nuevo = request.getParameter("nuevo");
        
        Nota8 per = new Nota8();
        
        per.setId(id);
        per.setHora(hora);
        per.setActividad(actividad);
        per.setCumplido(cumplido);
        
        HttpSession ses = request.getSession();
        ArrayList<Nota8> lista = (ArrayList<Nota8>) ses.getAttribute("listaest");
        
        if(nuevo.equals("true")){
            lista.add(per);
        }else
        {
         pos = buscarIndice(request, id);
         lista.set(pos, per);
        }
        response.sendRedirect("index8.jsp");
    }
    
    private int buscarIndice(HttpServletRequest request, int id){
        HttpSession ses = request.getSession();
        ArrayList<Nota8> lista = (ArrayList<Nota8>) ses.getAttribute("listaest");
        
        int i = 0;
        if(lista.size() > 0){
            while(i < lista.size()){
                if(lista.get(i).getId() == id){
                    break;
                }else i++;
            }
        }
        return i;
    }
}