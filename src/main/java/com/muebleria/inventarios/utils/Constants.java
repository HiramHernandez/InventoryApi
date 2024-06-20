package com.muebleria.inventarios.utils;

import java.util.List;

public class Constants {
    public static final int RESULTS_BY_QUERY = 10;
    public static final List<String>  UNPROTECTED_URS =  List.of(
            "/api/almacenes",
            "/api/usuarios",
            "/api/generate-token");
}
