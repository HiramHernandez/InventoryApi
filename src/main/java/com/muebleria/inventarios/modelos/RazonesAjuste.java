package com.muebleria.inventarios.modelos;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "RazonesAjuste")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class RazonesAjuste {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long razonesAjusteID;

    @Column(nullable = false)
    private String nombre;

    // Getters y setters

    // Constructor vacío y constructor con parámetros
}
