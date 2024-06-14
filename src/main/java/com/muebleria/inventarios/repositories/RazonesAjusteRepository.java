package com.muebleria.inventarios.repositories;

import com.muebleria.inventarios.modelos.RazonesAjuste;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RazonesAjusteRepository extends JpaRepository<RazonesAjuste, Long> {

}
