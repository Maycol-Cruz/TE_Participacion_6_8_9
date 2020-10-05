package com.emergentes.modelo;
public class Nota8 {
    private int id;
    private String hora;
    private String actividad;
    private String cumplido;

    public Nota8() {
        id = 0;
        hora = "";
        actividad = "";
        cumplido = "";
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }

    public String getActividad() {
        return actividad;
    }

    public void setActividad(String actividad) {
        this.actividad = actividad;
    }

    public String getCumplido() {
        return cumplido;
    }

    public void setCumplido(String cumplido) {
        this.cumplido = cumplido;
    }    
}
