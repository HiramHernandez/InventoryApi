package com.muebleria.inventarios.dto.response;

import com.muebleria.inventarios.modelos.Inventario;
import com.muebleria.inventarios.modelos.RazonesAjuste;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.sql.Timestamp;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class ResponseAjustesInventarioDto {
    private Long ajusteID;
    private Inventario inventario;
    private RazonesAjuste razonesAjuste;
    private Integer cantidad;
    private Timestamp fechaAjuste;
    private String descripcion;
}