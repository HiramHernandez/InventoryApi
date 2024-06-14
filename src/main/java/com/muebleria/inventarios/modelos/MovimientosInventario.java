package com.muebleria.inventarios.modelos;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;
import java.sql.Timestamp;

@Entity
@Table(name = "MovimientosInventario")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class MovimientosInventario {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long movimientoID;

    @ManyToOne
    @JoinColumn(name = "ProductoID")
    private Producto producto;

    @ManyToOne
    @JoinColumn(name = "AlmacenID")
    private Almacen almacen;

    @ManyToOne
    @JoinColumn(name = "TipoMovimientoID")
    private TipoMovimiento tipoMovimiento;

    @Column(nullable = false)
    private Integer cantidad;

    @Column(name = "FechaMovimiento", nullable = false, updatable = false)
    private Timestamp fechaMovimiento;

    @Column
    private String referencia;

}
