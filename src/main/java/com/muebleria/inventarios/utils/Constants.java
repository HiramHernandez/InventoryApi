package com.muebleria.inventarios.utils;

import java.util.List;

public class Constants {
    public static final int RESULTS_BY_QUERY = 10;
    public static final List<String>  UNPROTECTED_URS =  List.of(
            "/api/almacenes",
            "/api/usuarios",
            "/api/generate-token",
            "/swagger-ui.html",
            "/swagger-ui/index.html",
            "/openapi/openapi.yml",
            "/swagger-ui/index.html",
            "/swagger-ui/swagger-initializer.js",
            "/swagger-ui/favicon-32x32.png",
            "/v3/api-docs/swagger-config",
            "/v3/api-docs");
}
