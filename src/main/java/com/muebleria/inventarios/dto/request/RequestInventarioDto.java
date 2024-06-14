package com.muebleria.inventarios.dto.request;

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
public class RequestInventarioDto {
    private Producto producto;
    private Almacen almacen;
    private Integer cantidad;
}
