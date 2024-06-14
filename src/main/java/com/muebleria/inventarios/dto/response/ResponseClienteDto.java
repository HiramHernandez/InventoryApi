package com.muebleria.inventarios.dto.response;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class ResponseClienteDto {
    private Long clienteID;
    private String nombre;
    private String contacto;
    private String telefono;
    private String email;
}
