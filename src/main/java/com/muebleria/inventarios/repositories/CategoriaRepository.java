package com.muebleria.inventarios.repositories;

import com.muebleria.inventarios.modelos.Categoria;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CategoriaRepository extends JpaRepository<Categoria, Long> {

}
