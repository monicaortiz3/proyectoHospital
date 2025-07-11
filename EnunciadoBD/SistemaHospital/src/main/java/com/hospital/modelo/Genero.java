package com.hospital.modelo;

public class Genero {
    private String idGenero;
    private String descripcion;

    public Genero(String idGenero, String descripcion) {
        this.idGenero = idGenero;
        this.descripcion = descripcion;
    }
    public Genero(){
    }

    public String getIdGenero() {
        return idGenero;
    }

    public void setIdGenero(String idGenero) {
        this.idGenero = idGenero;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    @Override
    public String toString() {
        return "Genero{" +
                "idGenero='" + idGenero + '\'' +
                ", descripcion='" + descripcion + '\'' +
                '}';
    }
}
