package com.muebleria.inventarios.services.contrants;

import com.muebleria.inventarios.dto.request.RequestAlmacenDto;
import com.muebleria.inventarios.dto.response.ResponseAlmacenDto;
import com.muebleria.inventarios.utils.ResultCrud;

import java.util.HashMap;
import java.util.List;

public interface IAlmacenService {
    ResultCrud<List<ResponseAlmacenDto>> getAll();
    ResponseAlmacenDto retrieve(Long id);
    ResponseAlmacenDto save(RequestAlmacenDto almacen);

}
