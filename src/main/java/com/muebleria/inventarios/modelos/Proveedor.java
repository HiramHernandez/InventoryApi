package com.muebleria.inventarios.modelos;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "Proveedores")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class Proveedor {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long proveedorID;

    @Column(nullable = false)
    private String nombre;

    @Column
    private String contacto;

    @Column
    private String telefono;

    @Column
    private String email;

    // Getters y setters

    // Constructor vacío y constructor con parámetros
}