package com.muebleria.inventarios.controllers;

import com.muebleria.inventarios.dto.response.ResponseAlmacenDto;
import com.muebleria.inventarios.services.AlmacenService;
import com.muebleria.inventarios.services.ExternalService;
import com.muebleria.inventarios.services.contrants.IAlmacenService;
import com.muebleria.inventarios.utils.CustomResponse;
import com.muebleria.inventarios.utils.ResultCrud;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import io.swagger.v3.oas.annotations.Operation;

import java.util.List;

@RestController
@RequestMapping("/api/almacenes")
public class AlmacenController {
    private final IAlmacenService almacenService;
    private final ExternalService externalService;
    public AlmacenController(AlmacenService almacenService, ExternalService externalService){
       this.almacenService = almacenService;
       this.externalService = externalService;
    }

    @GetMapping("/test")
    public ResponseEntity<String> fetchData() {
        String result = externalService.fetchData(3);
        return ResponseEntity.ok(result);
    }
    @GetMapping
    @Operation( summary = "Trae una lista de los almacenes")
    @ApiResponses(
            value = @ApiResponse(responseCode = "200", description = "Operacion exitosa",
                    content = {@Content(mediaType = "application/json",
                            schema = @Schema(implementation = CustomResponse.class))})
    )//@ApiResponses
    public ResponseEntity<CustomResponse<List<ResponseAlmacenDto>>>  getAll(
            @RequestParam(required = false, defaultValue = "true") Boolean useCache){
        CustomResponse<List<ResponseAlmacenDto>> customResponse = new CustomResponse<>();
        ResultCrud<List<ResponseAlmacenDto>> resultAlmacenes = this.almacenService.getAll();

        customResponse.setData(resultAlmacenes.getData());
        customResponse.setSuccess(resultAlmacenes.getSuccess());
        HttpStatus status;
        if(resultAlmacenes.getSuccess()){
            customResponse.setMessage(resultAlmacenes.getData().isEmpty() ? "No se encontraron almacenes" : "success");
            status = resultAlmacenes.getData().isEmpty() ? HttpStatus.NOT_FOUND : HttpStatus.OK;
        }else{
            customResponse.setMessage("Ha ocurrido un error al consultar los almacenes");
            status = HttpStatus.INTERNAL_SERVER_ERROR;
        }
        return ResponseEntity.status(status).body(customResponse);
    }

}
