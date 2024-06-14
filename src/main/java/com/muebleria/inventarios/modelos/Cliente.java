package com.muebleria.inventarios.modelos;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
@Entity
@Table(name = "Clientes")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class Cliente {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long clienteID;

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
