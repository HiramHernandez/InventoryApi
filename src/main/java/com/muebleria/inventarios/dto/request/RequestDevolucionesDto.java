package com.muebleria.inventarios.dto.request;

import com.muebleria.inventarios.modelos.Cliente;
import com.muebleria.inventarios.modelos.EstadoProducto;
import com.muebleria.inventarios.modelos.MovimientosInventario;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.sql.Timestamp;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class RequestDevolucionesDto {

    private MovimientosInventario movimiento;
    private Cliente cliente;
    private EstadoProducto estadoProducto;
    private Timestamp fechaDevolucion;
    private String descripcion;
}