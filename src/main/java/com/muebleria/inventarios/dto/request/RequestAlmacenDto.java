package com.muebleria.inventarios.dto.request;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class RequestAlmacenDto {
    private String nombre;
    private String ubicacion;
}
