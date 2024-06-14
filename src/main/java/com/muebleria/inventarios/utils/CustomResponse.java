package com.muebleria.inventarios.utils;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class CustomResponse<T> {
    private T data;
    private String message;
    private boolean success;
}
