package com.muebleria.inventarios.services.contrants;

import com.muebleria.inventarios.modelos.Categoria;

import java.util.Set;

public interface ICategoriaService {
    Categoria agregarCategoria(Categoria categoria);
    Categoria actualizarCategoria(Categoria categoria);
    Set<Categoria> obtenerCategorias();
    Categoria obtenerCategoria(Long categoriaId);
    void eliminarCategoria(Long categoriaId);
}
