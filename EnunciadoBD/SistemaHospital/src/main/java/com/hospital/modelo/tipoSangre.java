package com.hospital.modelo;

public class tipoSangre {
    private String idTipo;
    private String descripciom;
    private String compatible;

    public tipoSangre(String idTipo, String descripciom, String compatible) {
        this.idTipo = idTipo;
        this.descripciom = descripciom;
        this.compatible = compatible;
    }
    public tipoSangre(){
    }

    public String getIdTipo() {
        return idTipo;
    }

    public void setIdTipo(String idTipo) {
        this.idTipo = idTipo;
    }

    public String getDescripciom() {
        return descripciom;
    }

    public void setDescripciom(String descripciom) {
        this.descripciom = descripciom;
    }

    public String getCompatible() {
        return compatible;
    }

    public void setCompatible(String compatible) {
        this.compatible = compatible;
    }

    @Override
    public String toString() {
        return "tipoSangre{" +
                "idTipo='" + idTipo + '\'' +
                ", descripciom='" + descripciom + '\'' +
                ", compatible='" + compatible + '\'' +
                '}';
    }
}
