package com.muebleria.inventarios.modelos;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.sql.Timestamp;

@Entity
@Table(name = "AjustesInventario")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class AjustesInventario {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long ajusteID;

    @ManyToOne
    @JoinColumn(name = "InventarioID")
    private Inventario inventario;

    @ManyToOne
    @JoinColumn(name = "RazonesAjusteID")
    private RazonesAjuste razonesAjuste;

    @Column(nullable = false)
    private Integer cantidad;

    @Column(name = "FechaAjuste", nullable = false, updatable = false)
    private Timestamp fechaAjuste;

    @Column
    private String descripcion;

    // Getters y setters

    // Constructor vacío y constructor con parámetros
}