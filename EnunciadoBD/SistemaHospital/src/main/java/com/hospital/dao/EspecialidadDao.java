package com.hospital.dao;

import com.hospital.baseDatos.Conexion;
import com.hospital.modelo.Especialidad;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class EspecialidadDao {

    public EspecialidadDao() {}

    // CRUD
    // Metodo que consulta todos los datos
    public List<Especialidad> obtenerEspecialidades() {
        Conexion con = new Conexion();
        List<Especialidad> lista = new ArrayList<>();
        String sqlSelect = "select * from especialidad;";
        try(Statement statement = con.getConnection().createStatement();
            ResultSet resultSet = statement.executeQuery(sqlSelect)){

            while(resultSet.next()){
                String idEspecialidad = resultSet.getString("id_especialidad");
                String nombre = resultSet.getString("nombre");
                String descripcion = resultSet.getString("descripcion");
                Especialidad especialidad = new Especialidad(idEspecialidad, nombre, descripcion);
                lista.add(especialidad);
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return lista;
    }

    public void mostrarLista(List<Especialidad> lista){
        lista.forEach((especialidad) -> {
            System.out.println(especialidad);
        });
    }

}
