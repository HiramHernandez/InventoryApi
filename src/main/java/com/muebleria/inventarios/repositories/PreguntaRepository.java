package com.muebleria.inventarios.repositories;

import com.muebleria.inventarios.modelos.Examen;
import com.muebleria.inventarios.modelos.Pregunta;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Set;

public interface PreguntaRepository extends JpaRepository<Pregunta, Long> {
    Set<Pregunta> findByExamen(Examen examen);
}
