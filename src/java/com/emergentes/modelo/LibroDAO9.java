package com.emergentes.modelo;
import java.util.ArrayList;
import java.util.Iterator;

public class LibroDAO9 {
    private ArrayList<Libro9> libros;
    
    public LibroDAO9(){
        libros = new ArrayList<Libro9>();
    }

    public ArrayList<Libro9> getLibros() {
        return libros;
    }

    public void setLibros(ArrayList<Libro9> libros) {
        this.libros = libros;
    }
    
    public void insertar(Libro9 item){
        libros.add(item);
    }
    
    public void modificar(int id, Libro9 item){
        int pos = posicion(id);
        libros.set(pos, item);
    }
    
    public void eliminar(int id){
        int pos = posicion(id);
        libros.remove(pos);
    }    
    
    public int posicion(int id){
        int i = -1;
        if(libros.size() > 0){
            for(Libro9 item : libros){
                i++;
                if(item.getId() == id){
                    break;
                }
            }
        }
        return i;
    }
     
}
    
