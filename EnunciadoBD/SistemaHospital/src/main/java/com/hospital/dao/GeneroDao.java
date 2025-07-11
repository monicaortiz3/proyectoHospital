package com.hospital.dao;

import com.hospital.baseDatos.Conexion;
import com.hospital.modelo.Especialidad;
import com.hospital.modelo.Genero;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class GeneroDao {
    public List<Genero> obtenerGenero(){
        Conexion conexion = new Conexion();
        List<Genero> lista = new ArrayList<>();
        String sqlSelect = "select * from Genero";
        try(Statement statement = conexion.getConnection().createStatement();
        ResultSet resultSet = statement.executeQuery(sqlSelect)){
            while(resultSet.next()){
                String idGenero = resultSet.getString("id_genero");
                String descripcion = resultSet.getString("descripción");
                Genero genero = new Genero(idGenero, descripcion);
                lista.add(genero);
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return lista;
    }

    public void mostrarLista(List<Genero> lista){
        lista.forEach((genero) -> {
            System.out.println(genero);
        });
    }

}