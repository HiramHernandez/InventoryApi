package com.muebleria.inventarios.modelos;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class InventarioReporte {
    private Long ProductoID;
    private String Proucto;
    private String Almacen;
    public Integer Cantidad;
}
