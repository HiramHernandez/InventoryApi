package com.muebleria.inventarios.dto.response;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class ResponseCategoriaProductoDto {
    private Long categoriaID;
    private String nombre;
}
