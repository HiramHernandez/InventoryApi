package com.muebleria.inventarios.services.contrants;

import com.muebleria.inventarios.modelos.Examen;
import com.muebleria.inventarios.modelos.Pregunta;

import java.util.Set;

public interface IPreguntaService {
    Pregunta agregarPregunta(Pregunta pregunta);
    Pregunta actualizarPregunta(Pregunta pregunta);
    Set<Pregunta> obtenerPreguntas();
    Pregunta obtenerPregunta(Long preguntaId);
    Set<Pregunta> obtenerPreguntasDelExamen(Examen examen);
    void eliminarPregunta(Long preguntaId);
    Pregunta listarPregunta(Long preguntaId);
}
