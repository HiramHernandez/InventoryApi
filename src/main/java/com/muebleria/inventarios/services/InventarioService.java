package com.muebleria.inventarios.services;

import com.muebleria.inventarios.dto.response.ResponseAlmacenDto;
import com.muebleria.inventarios.modelos.InventarioReporte;
import com.muebleria.inventarios.repositories.InventarioRepository;
import com.muebleria.inventarios.services.contrants.IInventarioService;
import com.muebleria.inventarios.utils.ResultCrud;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
@Service
public class InventarioService implements IInventarioService {
    private Logger logger = LoggerFactory.getLogger(AlmacenService.class);
    private final InventarioRepository inventarioRepository;

    public InventarioService(InventarioRepository inventarioRepository){
        this.inventarioRepository = inventarioRepository;
    }

    @Override
    public ResultCrud<List<InventarioReporte>> consultarInventario() {

        ResultCrud<List<InventarioReporte>> resultCrud = new ResultCrud();
        boolean success = false;
        List<InventarioReporte> inventario = new ArrayList<>();
        try{
            inventario = this.inventarioRepository.consultarInventario();
            success = true;
        }catch (DataAccessException ex){
            logger.error(ex.getMessage());
            throw ex;
        }

        resultCrud.setSuccess(success);
        resultCrud.setData(inventario);
        return resultCrud;
    }
}
