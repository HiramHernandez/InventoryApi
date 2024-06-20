package com.muebleria.inventarios.services;

import com.muebleria.inventarios.exceptions.UsuarioFoundException;
import com.muebleria.inventarios.modelos.Usuario;
import com.muebleria.inventarios.modelos.UsuarioRol;
import com.muebleria.inventarios.repositories.RolRepository;
import com.muebleria.inventarios.repositories.UsuarioRepository;
import com.muebleria.inventarios.services.contrants.IUsuarioService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import java.sql.SQLException;

import java.sql.SQLException;
import java.util.Set;

@Service
public class UsuarioService implements IUsuarioService {
    private Logger logger = LoggerFactory.getLogger(UsuarioService.class);
    @Autowired
    private UsuarioRepository usuarioRepository;
    @Autowired
    private RolRepository rolRepository;


    @Override
    public Usuario guardarUsuario(Usuario usuario, Set<UsuarioRol> usuarioRoles) throws Exception {
        Usuario usuarioLocal = usuarioRepository.findByUsername(usuario.getUsername());
        if(usuarioLocal != null){
            logger.error(String.format("El usuario:% ya existe", usuario.getUsername()));
            throw new UsuarioFoundException("El usuario ya esta presente");
        }
        for(UsuarioRol usuarioRol: usuarioRoles){
            System.out.println("AHi va el rol: " + usuarioRol.getRol());
            //rolRepository.save(usuarioRol.getRol());
        }
        try{
            //usuario.getUsuarioRoles().addAll(usuarioRoles);
            usuarioLocal = usuarioRepository.save(usuario);
            return usuarioLocal;
        }catch (DataAccessException ex){
            logger.error(String.format("Ha ocurrido un error: %s", ex.getMessage()));
            return null;
        }


        /*if(usuarioLocal != null){
            System.out.println("El usuario ya existe");
            throw new UsuarioFoundException("El usuario ya esta presente");
        }
        else{
            for(UsuarioRol usuarioRol:usuarioRoles){
                rolRepository.save(usuarioRol.getRol());
            }
            usuario.getUsuarioRoles().addAll(usuarioRoles);
            usuarioLocal = usuarioRepository.save(usuario);
        }
        return usuarioLocal;*/
    }

    @Override
    public Usuario obtenerUsuario(String username) {
        return usuarioRepository.findByUsername(username);
    }

    @Override
    public void eliminarUsuario(Long usuarioId) {
        usuarioRepository.deleteById(usuarioId);
    }
}
