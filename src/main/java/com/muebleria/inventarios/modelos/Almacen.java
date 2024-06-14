package com.muebleria.inventarios.modelos;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "Almacenes")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class Almacen {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long almacenID;

    @Column(nullable = false)
    private String nombre;

    @Column
    private String ubicacion;

}