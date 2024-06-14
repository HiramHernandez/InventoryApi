package com.muebleria.inventarios.modelos;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;

@Entity
@Table(name = "Inventario")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class Inventario {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long inventarioID;

    @ManyToOne
    @JoinColumn(name = "ProductoID")
    private Producto producto;

    @ManyToOne
    @JoinColumn(name = "AlmacenID")
    private Almacen almacen;

    @Column(nullable = false)
    private Integer cantidad;


}