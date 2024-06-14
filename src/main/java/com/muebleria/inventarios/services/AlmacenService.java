package com.muebleria.inventarios.services;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.muebleria.inventarios.InventariosApplication;
import com.muebleria.inventarios.dto.request.RequestAlmacenDto;
import com.muebleria.inventarios.dto.response.ResponseAlmacenDto;
import com.muebleria.inventarios.modelos.Almacen;
import com.muebleria.inventarios.services.contrants.IAlmacenService;
import com.muebleria.inventarios.repositories.AlmacenRepository;
import com.muebleria.inventarios.utils.GenericMapper;
import com.muebleria.inventarios.utils.ResultCrud;
import org.hibernate.HibernateError;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.cache.CacheManager;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.dao.DataAccessException;
import org.springframework.retry.annotation.Backoff;
import org.springframework.retry.annotation.Recover;
import org.springframework.retry.annotation.Retryable;
import org.springframework.retry.support.RetrySynchronizationManager;
import org.springframework.stereotype.Service;

import java.time.LocalTime;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class AlmacenService implements IAlmacenService {
    private  Logger logger = LoggerFactory.getLogger(AlmacenService.class);
    private final AlmacenRepository almacenRepository;
    private final ObjectMapper objectMapper;
    private  final GenericMapper<Almacen, ResponseAlmacenDto> mapperResponse;
    private final GenericMapper<Almacen, RequestAlmacenDto> mapperRequest;

    public AlmacenService(AlmacenRepository almacenRepository, ObjectMapper objectMapper){
        this.almacenRepository = almacenRepository;
        this.objectMapper = objectMapper;
        this.mapperResponse = new GenericMapper<>(this.objectMapper);
        this.mapperRequest = new GenericMapper<>(this.objectMapper);
    }
    @Override
    @Retryable(retryFor = {DataAccessException.class}, maxAttempts = 12, backoff = @Backoff(delay = 8000))
    //@Cacheable("almacenes")
    public ResultCrud<List<ResponseAlmacenDto>> getAll() {
        ResultCrud<List<ResponseAlmacenDto>> resultCrud = new ResultCrud();
        boolean success = false;
        List<ResponseAlmacenDto> almacenes = new ArrayList<>();
        try{
            almacenes = almacenRepository.findAll().stream()
                    .map(almacen -> mapperResponse.mapToDTO(almacen, ResponseAlmacenDto.class))
                    .collect(Collectors.toList());
        }catch (DataAccessException ex){
            logger.error(ex.getMessage());
            throw ex;
        }

        resultCrud.setSuccess(success);
        resultCrud.setData(almacenes);
        return resultCrud;
    }
    @Recover
    public ResultCrud<List<ResponseAlmacenDto>> recover(DataAccessException ex) {
        logger.error("All retry attempts failed! Recovering from exception: " + ex.getMessage());
        ResultCrud<List<ResponseAlmacenDto>> resultCrud = new ResultCrud<>();
        resultCrud.setSuccess(false);
        resultCrud.setData(new ArrayList<>()); // Puedes definir datos predeterminados o vacíos en caso de recuperación
        return resultCrud;
    }
    @Override
    public ResponseAlmacenDto retrieve(Long id) {
        Optional<Almacen> optionalAlmacen = almacenRepository.findById(id);
        if (!optionalAlmacen.isPresent())
            return null;
        return mapperResponse.mapToDTO(optionalAlmacen.get(), ResponseAlmacenDto.class);
    }

    @Override
    public ResponseAlmacenDto save(RequestAlmacenDto almacen) {
        try{
            Almacen newAlmacen =
                    almacenRepository.save(this.mapperRequest.mapToEntity(almacen, Almacen.class));

            return mapperResponse.mapToDTO(newAlmacen, ResponseAlmacenDto.class);
        }catch (Exception ex){
            //throw new Exception(String.format("Lo sentimos no se pudo guardar el prospecto: %s", ex.getMessage()));
            return null;
        }
    }
}
