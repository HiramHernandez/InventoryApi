package com.muebleria.inventarios.services.contrants;

import com.muebleria.inventarios.modelos.InventarioReporte;
import com.muebleria.inventarios.utils.ResultCrud;
import org.springframework.stereotype.Service;

import java.util.List;

public interface IInventarioService {
    ResultCrud<List<InventarioReporte>> consultarInventario();
}
