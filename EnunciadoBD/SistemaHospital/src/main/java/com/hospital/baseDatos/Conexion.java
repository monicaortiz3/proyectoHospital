package com.hospital.baseDatos;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion{
    private String url = "jdbc:mysql://localhost:3306/hospital?useSSL=false&serverTimezone=UTC";
    private String usuario = "root";
    private String clave = "12345";
    private Connection connection;

    public Conexion(){
        try{
            this.connection = DriverManager.getConnection(this.url, this.usuario, this.clave);
            System.out.println("----------CONECTADO------------");
        }catch (Exception e){
            System.out.println("--------ERROR AL CONECTARTE------------" + e);
        }
    }

    public Connection getConnection(){
        return this.connection;
    }

    public void cerrarConexion(){
        try{
            this.connection.close();
        }catch (Exception e){
            System.out.println("--------ERROR AL CERRAR CONEXION------------" + e);
        }
    }

}

