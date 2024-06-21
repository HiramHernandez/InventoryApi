package com.muebleria.inventarios.repositories;

import com.muebleria.inventarios.modelos.Categoria;
import com.muebleria.inventarios.modelos.Examen;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ExamenRepostiory extends JpaRepository<Examen, Long> {
    List<Examen> findByCategoria(Categoria categoria);
    List<Examen> findByActivo(Boolean estado);
    List<Examen> findByCategoriaAndActivo(Categoria categoria,Boolean estado);
}
