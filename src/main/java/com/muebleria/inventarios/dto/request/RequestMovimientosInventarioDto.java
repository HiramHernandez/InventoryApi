package com.muebleria.inventarios.dto.request;

import com.muebleria.inventarios.modelos.Almacen;
import com.muebleria.inventarios.modelos.Producto;
import com.muebleria.inventarios.modelos.TipoMovimiento;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.sql.Timestamp;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class RequestMovimientosInventarioDto {
    private Long movimientoID;
    private Producto producto;
    private Almacen almacen;
    private TipoMovimiento tipoMovimiento;
    private Integer cantidad;
    private Timestamp fechaMovimiento;
    private String referencia;
}
