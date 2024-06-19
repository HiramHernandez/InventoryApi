package com.muebleria.inventarios.utils;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Schema(description = "Clase génerica para respuestas customizadas")
public class CustomResponse<T> {
    @Schema(description = "Datos de la Respuesta")
    private T data;
    @Schema(description = "Mensaje de la respuesta")
    private String message;
    @Schema(description = "Éxito de la respuesta")
    private boolean success;
}
