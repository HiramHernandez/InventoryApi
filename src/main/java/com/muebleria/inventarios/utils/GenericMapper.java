package com.muebleria.inventarios.utils;

import com.fasterxml.jackson.databind.ObjectMapper;

public class GenericMapper <TEntity, TDto>{
    private final ObjectMapper objectMapper;

    public GenericMapper(ObjectMapper objectMapper){
        this.objectMapper = objectMapper;
    }

    public TDto mapToDTO(TEntity entity, Class<TDto> dtoClass) {
        return objectMapper.convertValue(entity, dtoClass);
    }

    public TEntity mapToEntity(TDto dto, Class<TEntity> entityClass) {
        return objectMapper.convertValue(dto, entityClass);
    }
}
