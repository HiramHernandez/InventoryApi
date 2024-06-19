package com.muebleria.inventarios.modelos;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
/*@SqlResultSetMapping(
        name = "InventarioReporteMapping",
        classes = @ConstructorResult(
                targetClass = InventarioReporte.class,
                columns = {
                        @ColumnResult(name = "ProductoID", type = Integer.class),
                        @ColumnResult(name = "Producto", type = String.class),
                        @ColumnResult(name = "Almacen", type = String.class),
                        @ColumnResult(name = "Cantidad", type = Integer.class)
                }
        )
)*/
@Getter
@Setter
public class InventarioReporte {
    @Id
    private Integer ProductoID;
    private String Producto;
    private String Almacen;
    public Integer Cantidad;

    public  InventarioReporte(){

    }
    public InventarioReporte(Integer ProductoID, String Producto, String Almacen, Integer Cantidad){

        this.Cantidad = Cantidad;
        this.ProductoID = ProductoID;
        this.Producto = Producto;
        this.Almacen = Almacen;
    }

}
