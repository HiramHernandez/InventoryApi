package com.muebleria.inventarios.modelos;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


import java.math.BigDecimal;
import java.sql.Timestamp;

@Entity
@Table(name = "Productos")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class Producto {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long productoID;

    @Column(nullable = false)
    private String nombre;

    @Column
    private String descripcion;

    @ManyToOne
    @JoinColumn(name = "CategoriaID")
    private CategoriaProducto categoria;

    @Column(nullable = false)
    private BigDecimal precio;

    @Column(name = "FechaCreacion", nullable = false, updatable = false)
    private Timestamp fechaCreacion;


}
