INSERT INTO CategoriasProductos (Nombre) VALUES
('Electrónica'),
('Ropa'),
('Alimentos');


Select * From CategoriasProductos;

INSERT INTO Productos (Nombre, Descripcion, CategoriaID, Precio) VALUES
('Teléfono móvil', 'Teléfono móvil con pantalla táctil', 1, 299.99),
('Camiseta', 'Camiseta de algodón', 2, 19.99),
('Galletas', 'Galletas de chocolate', 3, 2.99);


INSERT INTO Almacenes (Nombre, Ubicacion) VALUES
('Almacén Central', 'Ciudad Principal'),
('Almacén Secundario', 'Ciudad Secundaria');

INSERT INTO Inventario (ProductoID, AlmacenID, Cantidad) VALUES
(1, 1, 100), -- 100 Teléfonos móviles en el Almacén Central
(2, 1, 200), -- 200 Camisetas en el Almacén Central
(3, 2, 150); -- 150 Galletas en el Almacén Secundario

INSERT INTO TipoMovimiento (Nombre) VALUES
('Compra'),
('Venta'),
('Devolución de Cliente'),
('Devolución a Proveedor'),
('Ajuste de Inventario'),
('Transferencia Interna');

INSERT INTO MovimientosInventario (ProductoID, AlmacenID, TipoMovimientoID, Cantidad, Referencia) VALUES
(1, 1, 1, 50, 'Compra inicial de Teléfonos móviles'), -- Compra de 50 Teléfonos móviles
(2, 1, 2, 20, 'Venta de Camisetas'), -- Venta de 20 Camisetas
(3, 2, 3, 10, 'Devolución de Galletas por cliente'), -- Devolución de 10 Galletas
(1, 1, 4, 5, 'Devolución de Teléfonos móviles al proveedor por defecto'), -- Devolución de 5 Teléfonos móviles al proveedor
(2, 1, 5, -2, 'Ajuste de inventario por pérdida de Camisetas'), -- Ajuste de inventario por pérdida de 2 Camisetas
(3, 1, 6, 30, 'Transferencia de Galletas del Almacén Secundario al Central'); -- Transferencia de 30 Galletas al Almacén Central

INSERT INTO EstadoProducto (Nombre) VALUES
('Revendible'),
('Defectuoso'),
('Para Descartar');

INSERT INTO Devoluciones (MovimientoID, ClienteID, EstadoProductoID, Descripcion) VALUES
(3, 1, 2, 'Galletas devueltas por cliente debido a paquete dañado'); -- Galletas defectuosas devueltas


INSERT INTO Proveedores (Nombre, Contacto, Telefono, Email) VALUES
('Proveedor Electrónica', 'Juan Pérez', '555-1234', 'juan@proveedor.com'),
('Proveedor Ropa', 'María López', '555-5678', 'maria@proveedor.com');


INSERT INTO Clientes (Nombre, Contacto, Telefono, Email) VALUES
('Cliente 1', 'Carlos Ramírez', '555-8765', 'carlos@cliente.com'),
('Cliente 2', 'Ana Gómez', '555-4321', 'ana@cliente.com');
