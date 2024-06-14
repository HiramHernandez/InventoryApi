package com.muebleria.inventarios.repositories;

import com.muebleria.inventarios.modelos.Devoluciones;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DevolucionRepository extends JpaRepository<Devoluciones, Long> {
}
