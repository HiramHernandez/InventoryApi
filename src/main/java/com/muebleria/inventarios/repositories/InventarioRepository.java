package com.muebleria.inventarios.repositories;

import java.util.Date;
import java.util.List;
import com.muebleria.inventarios.modelos.Inventario;
import com.muebleria.inventarios.modelos.InventarioReporte;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface InventarioRepository extends JpaRepository<Inventario, Long> {
    @Query(value = "CALL consultarInventario();", nativeQuery = true)
    List<InventarioReporte> consultarInventario();
    @Query(value = "CALL consultarInventarioPorProducto(:idProducto);", nativeQuery = true)
    List<InventarioReporte> consultarInventarioPorProducto();
    @Query(value = "CALL consultarInventarioPorFecha(:fecha);", nativeQuery = true)
    List<InventarioReporte> consultarInventarioPorFecha(String fecha);
    @Query(value = "CALL consultarInventarioFechaProducto(:fecha, :idProducto);", nativeQuery = true)
    List<InventarioReporte> consultarInventarioPorFechaYProducto(String fecha);
    /*
    *  @Query(value = "SELECT * FROM prospectos  WHERE prospectos.rfc = :rfc LIMIT 1", nativeQuery = true)
    Prospecto findByRfc(@Param("rfc")String rfc);
    * */

    /*List<InventarioReporte> consultarInventario();
    List<InventarioReporte> consultarInventarioPorProducto(int idProducto);
    List<InventarioReporte> consultarInventarioPorFecha(Date fecha);
    List<InventarioReporte> consultarInventarioPorFechaYProducto(Date fecha, int idProducto);*/
}
