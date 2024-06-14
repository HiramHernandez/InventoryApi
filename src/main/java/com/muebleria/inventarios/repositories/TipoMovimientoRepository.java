package com.muebleria.inventarios.repositories;

import com.muebleria.inventarios.modelos.TipoMovimiento;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TipoMovimientoRepository extends JpaRepository<TipoMovimiento, Long> {

}
