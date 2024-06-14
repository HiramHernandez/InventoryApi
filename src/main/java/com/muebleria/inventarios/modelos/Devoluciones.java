package com.muebleria.inventarios.modelos;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.sql.Timestamp;

@Entity
@Table(name = "Devoluciones")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class Devoluciones {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long devolucionID;

    @ManyToOne
    @JoinColumn(name = "MovimientoID")
    private MovimientosInventario movimiento;

    @ManyToOne
    @JoinColumn(name = "ClienteID")
    private Cliente cliente;

    @ManyToOne
    @JoinColumn(name = "EstadoProductoID")
    private EstadoProducto estadoProducto;

    @Column(name = "FechaDevolucion", nullable = false, updatable = false)
    private Timestamp fechaDevolucion;

    @Column
    private String descripcion;

    // Getters y setters

    // Constructor vacío y constructor con parámetros
}