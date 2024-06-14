package com.muebleria.inventarios.repositories;

import com.muebleria.inventarios.modelos.EstadoProducto;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EstadoProductoRepository extends JpaRepository<EstadoProducto, Long> {
}
