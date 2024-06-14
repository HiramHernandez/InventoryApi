package com.muebleria.inventarios.repositories;

import com.muebleria.inventarios.modelos.AjustesInventario;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AjusteInventarioRepository extends JpaRepository<AjustesInventario, Long> {
}
