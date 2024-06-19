package com.muebleria.inventarios.controllers;

import com.muebleria.inventarios.modelos.InventarioReporte;

import com.muebleria.inventarios.services.InventarioService;
import com.muebleria.inventarios.services.contrants.IAlmacenService;
import com.muebleria.inventarios.services.contrants.IInventarioService;
import com.muebleria.inventarios.utils.CustomResponse;
import com.muebleria.inventarios.utils.ResultCrud;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import io.swagger.v3.oas.annotations.Operation;

import java.util.List;

@RestController
@RequestMapping("/api/inventario")
public class InventarioController {
    private final IInventarioService inventarioService;

    public InventarioController(InventarioService inventarioService){
        this.inventarioService = inventarioService;
    }

    @GetMapping
    @Operation( summary = "Trae el inventario por productos")
    @ApiResponses(
            value = @ApiResponse(responseCode = "200", description = "Operacion exitosa",
                    content = {@Content(mediaType = "application/json",
                            schema = @Schema(implementation = CustomResponse.class))})
    )//@ApiResponses
    @Transactional
    public ResponseEntity<CustomResponse<List<InventarioReporte>>>  getAll(){
        CustomResponse<List<InventarioReporte>> customResponse = new CustomResponse<>();
        ResultCrud<List<InventarioReporte>> resutados = this.inventarioService.consultarInventario();

        customResponse.setData(resutados.getData());
        customResponse.setSuccess(resutados.getSuccess());
        HttpStatus status;
        if(resutados.getSuccess()){
            customResponse.setMessage(resutados.getData().isEmpty() ? "No se encontro inventario" : "success");
            status = resutados.getData().isEmpty() ? HttpStatus.NOT_FOUND : HttpStatus.OK;
        }else{
            customResponse.setMessage("Ha ocurrido un error al consultar los almacenes");
            status = HttpStatus.INTERNAL_SERVER_ERROR;
        }
        return ResponseEntity.status(status).body(customResponse);
    }

}
