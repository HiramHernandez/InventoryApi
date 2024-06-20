package com.muebleria.inventarios.services.contrants;

import com.muebleria.inventarios.modelos.Usuario;
import com.muebleria.inventarios.modelos.UsuarioRol;

import java.util.Set;

public interface IUsuarioService {
    public Usuario guardarUsuario(Usuario usuario, Set<UsuarioRol> usuarioRoles) throws Exception;
    public Usuario obtenerUsuario(String username);
    public void eliminarUsuario(Long usuarioId);
}
