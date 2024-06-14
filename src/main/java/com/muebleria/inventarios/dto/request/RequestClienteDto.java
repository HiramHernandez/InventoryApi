package com.muebleria.inventarios.dto.request;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class RequestClienteDto {
    private String nombre;
    private String contacto;
    private String telefono;
    private String email;
}
