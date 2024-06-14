package com.muebleria.inventarios.utils;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class ResultCrud <T>{
    private T data;
    private boolean success;

    public boolean getSuccess(){
        return success;
    }
}
