package com.hospital;

import com.hospital.dao.EspecialidadDao;
import com.hospital.modelo.Especialidad;

import java.util.ArrayList;
import java.util.List;

public class SistemaHospital {

    public static void main(String[] args) {
        EspecialidadDao dao = new EspecialidadDao();
        List<Especialidad> especialidades = dao.obtenerEspecialidades();
        dao.mostrarLista(especialidades);
    }

}
