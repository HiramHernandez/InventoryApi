package com.muebleria.inventarios.modelos;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "CategoriasProductos")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class CategoriaProducto {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long categoriaID;

    @Column(nullable = false)
    private String nombre;
}
