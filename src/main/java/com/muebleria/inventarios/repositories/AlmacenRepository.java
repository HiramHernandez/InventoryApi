package com.muebleria.inventarios.repositories;

import com.muebleria.inventarios.modelos.Almacen;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AlmacenRepository extends JpaRepository<Almacen, Long> {
}
