package com.hospital.dao;

import com.hospital.baseDatos.Conexion;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class tipoSangreDao {

    public List<tipoSangreDao> obtenerTipoSangre(){
        Conexion conexion = new Conexion();
        List<tipoSangreDao> lista = new ArrayList<>();
        String sqlSelect = "select * from tipoSangre";
//        try(Statement statement = conexion.getConnection().createStatement());
//        ResultSet resultSet = statement.executeQuery(sqlSelect)){
//          while(resultSet.next()){
//            String idTipoSangre = resultSet.getString("id_tipo");
//            String descripciom = resultSet.getString('descripción');
//            // String
//            }
//        }
        return null;
    }

}
