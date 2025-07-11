package com.hospital;

import com.hospital.dao.EspecialidadDao;
import com.hospital.dao.GeneroDao;
import com.hospital.modelo.Especialidad;
import com.hospital.modelo.Genero;

import java.util.ArrayList;
import java.util.List;

public class SistemaHospital {

    public static void main(String[] args) {
    //    EspecialidadDao dao = new EspecialidadDao();
       // List<Especialidad> especialidades = dao.obtenerEspecialidades();
      //  dao.mostrarLista(especialidades);

        GeneroDao generoDao = new GeneroDao();
        List<Genero> genero = generoDao.obtenerGenero();
        generoDao.mostrarLista(genero);
    }

}
