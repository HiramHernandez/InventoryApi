package com.muebleria.inventarios.services.contrants;

import com.muebleria.inventarios.modelos.Categoria;
import com.muebleria.inventarios.modelos.Examen;

import java.util.List;
import java.util.Set;

public interface IExamenService {
    Examen agregarExamen(Examen examen);
    Examen actualizarExamen(Examen examen);
    Set<Examen> obtenerExamenes();
    Examen obtenerExamen(Long examenId);
    void eliminarExamen(Long examenId);
    List<Examen> listarExamenesDeUnaCategoria(Categoria categoria);
    List<Examen> obtenerExamenesActivos();
    List<Examen> obtenerExamenesActivosDeUnaCategoria(Categoria categoria);
}
