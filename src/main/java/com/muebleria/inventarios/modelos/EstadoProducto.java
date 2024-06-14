package com.muebleria.inventarios.modelos;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "EstadoProducto")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class EstadoProducto {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long estadoProductoID;

    @Column(nullable = false)
    private String nombre;

}
