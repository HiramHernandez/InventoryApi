package com.muebleria.inventarios.dto.response;

import com.muebleria.inventarios.modelos.CategoriaProducto;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;
import java.sql.Timestamp;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class ResponseProductoDto {
    private Long productoID;
    private String nombre;
    private String descripcion;
    private CategoriaProducto categoria;
    private BigDecimal precio;
    private Timestamp fechaCreacion;
}
