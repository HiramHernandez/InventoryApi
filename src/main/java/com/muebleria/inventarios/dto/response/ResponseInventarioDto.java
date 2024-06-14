package com.muebleria.inventarios.dto.response;

import com.muebleria.inventarios.modelos.Almacen;
import com.muebleria.inventarios.modelos.Producto;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class ResponseInventarioDto {
    private Long inventarioID;
    private Producto producto;
    private Almacen almacen;
    private Integer cantidad;
}
