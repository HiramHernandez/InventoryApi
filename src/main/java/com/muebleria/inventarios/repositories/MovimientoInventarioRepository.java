package com.muebleria.inventarios.repositories;

import com.muebleria.inventarios.modelos.MovimientosInventario;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MovimientoInventarioRepository extends JpaRepository<MovimientosInventario, Long> {

}
