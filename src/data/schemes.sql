-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: inventarios
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `ajustesinventario`
--

LOCK TABLES `ajustesinventario` WRITE;
/*!40000 ALTER TABLE `ajustesinventario` DISABLE KEYS */;
/*!40000 ALTER TABLE `ajustesinventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `almacenes`
--

LOCK TABLES `almacenes` WRITE;
/*!40000 ALTER TABLE `almacenes` DISABLE KEYS */;
INSERT INTO `almacenes` VALUES (1,'Almacén Central','Ciudad Principal'),(2,'Almacén Secundario','Ciudad Secundaria');
/*!40000 ALTER TABLE `almacenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `categoriasproductos`
--

LOCK TABLES `categoriasproductos` WRITE;
/*!40000 ALTER TABLE `categoriasproductos` DISABLE KEYS */;
INSERT INTO `categoriasproductos` VALUES (1,'Electrónica'),(2,'Ropa'),(3,'Alimentos');
/*!40000 ALTER TABLE `categoriasproductos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Cliente 1','Carlos Ramírez','555-8765','carlos@cliente.com'),(2,'Cliente 2','Ana Gómez','555-4321','ana@cliente.com');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `devoluciones`
--

LOCK TABLES `devoluciones` WRITE;
/*!40000 ALTER TABLE `devoluciones` DISABLE KEYS */;
INSERT INTO `devoluciones` VALUES (2,3,1,2,'2024-06-11 19:23:29','Galletas devueltas por cliente debido a paquete dañado');
/*!40000 ALTER TABLE `devoluciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `estadoproducto`
--

LOCK TABLES `estadoproducto` WRITE;
/*!40000 ALTER TABLE `estadoproducto` DISABLE KEYS */;
INSERT INTO `estadoproducto` VALUES (1,'Revendible'),(2,'Defectuoso'),(3,'Para Descartar');
/*!40000 ALTER TABLE `estadoproducto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `inventario`
--

LOCK TABLES `inventario` WRITE;
/*!40000 ALTER TABLE `inventario` DISABLE KEYS */;
INSERT INTO `inventario` VALUES (1,1,1,0),(2,2,1,200),(3,3,2,150);
/*!40000 ALTER TABLE `inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `movimientosinventario`
--

LOCK TABLES `movimientosinventario` WRITE;
/*!40000 ALTER TABLE `movimientosinventario` DISABLE KEYS */;
INSERT INTO `movimientosinventario` VALUES (1,1,1,1,50,'2024-06-11 18:37:32','Compra inicial de Teléfonos móviles'),(2,2,1,2,20,'2024-06-11 18:37:32','Venta de Camisetas'),(3,3,2,3,10,'2024-06-11 18:37:32','Devolución de Galletas por cliente'),(4,1,1,4,5,'2024-06-11 18:37:32','Devolución de Teléfonos móviles al proveedor por defecto'),(5,2,1,5,-2,'2024-06-11 18:37:32','Ajuste de inventario por pérdida de Camisetas'),(6,3,1,6,30,'2024-06-11 18:37:32','Transferencia de Galletas del Almacén Secundario al Central'),(7,1,1,2,10,'2024-06-11 19:47:24','Venta de productos'),(8,1,1,2,2,'2024-06-11 19:49:36','Venta de productos'),(9,1,1,2,-12,'2024-06-11 19:50:46','Venta de productos'),(10,1,1,2,5,'2024-06-11 19:52:01','Venta de productos'),(11,1,1,2,5,'2024-06-11 19:53:08','Venta de productos'),(12,1,1,2,5,'2024-06-11 19:55:01','Venta de productos'),(13,1,1,2,5,'2024-06-11 19:55:11','Venta de productos'),(14,1,1,2,-5,'2024-06-11 19:59:24','Venta de productos'),(15,1,1,2,-5,'2024-06-11 19:59:34','Venta de productos'),(16,1,1,2,-5,'2024-06-11 19:59:41','Venta de productos');
/*!40000 ALTER TABLE `movimientosinventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Teléfono móvil','Teléfono móvil con pantalla táctil',1,299.99,'2024-06-11 18:34:46'),(2,'Camiseta','Camiseta de algodón',2,19.99,'2024-06-11 18:34:46'),(3,'Galletas','Galletas de chocolate',3,2.99,'2024-06-11 18:34:46');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'Proveedor Electrónica','Juan Pérez','555-1234','juan@proveedor.com'),(2,'Proveedor Ropa','María López','555-5678','maria@proveedor.com');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `razonesajuste`
--

LOCK TABLES `razonesajuste` WRITE;
/*!40000 ALTER TABLE `razonesajuste` DISABLE KEYS */;
/*!40000 ALTER TABLE `razonesajuste` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tipomovimiento`
--

LOCK TABLES `tipomovimiento` WRITE;
/*!40000 ALTER TABLE `tipomovimiento` DISABLE KEYS */;
INSERT INTO `tipomovimiento` VALUES (1,'Compra'),(2,'Venta'),(3,'Devolución de Cliente'),(4,'Devolución a Proveedor'),(5,'Ajuste de Inventario'),(6,'Transferencia Interna');
/*!40000 ALTER TABLE `tipomovimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'inventarios'
--
/*!50003 DROP PROCEDURE IF EXISTS `consularInventario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `consularInventario`()
BEGIN
	SELECT 
    p.Nombre AS Producto,
    a.Nombre AS Almacen,
    SUM(mi.Cantidad) AS Cantidad
FROM 
    MovimientosInventario mi
JOIN 
    Productos p ON mi.ProductoID = p.ProductoID
JOIN 
    Almacenes a ON mi.AlmacenID = a.AlmacenID
GROUP BY 
    p.ProductoID, a.AlmacenID
ORDER BY 
    p.Nombre, a.Nombre;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `consultarInventario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `consultarInventario`()
BEGIN
	SELECT 
    p.Nombre AS Producto,
    a.Nombre AS Almacen,
    SUM(mi.Cantidad) AS Cantidad
FROM 
    MovimientosInventario mi
JOIN 
    Productos p ON mi.ProductoID = p.ProductoID
JOIN 
    Almacenes a ON mi.AlmacenID = a.AlmacenID
GROUP BY 
    p.ProductoID, a.AlmacenID
ORDER BY 
    p.Nombre, a.Nombre;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `consultarInventarioFechaProducto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `consultarInventarioFechaProducto`(in fecha date, in productoId int)
BEGIN
	   SELECT 
        p.Nombre AS Producto,
        a.Nombre AS Almacen,
        SUM(mi.Cantidad) AS Cantidad
    FROM 
        MovimientosInventario mi
    JOIN 
        Productos p ON mi.ProductoID = p.ProductoID
    JOIN 
        Almacenes a ON mi.AlmacenID = a.AlmacenID
    WHERE 
        mi.FechaMovimiento <= fecha and p.ProductoID = productoId
    GROUP BY 
        p.ProductoID, a.AlmacenID
    ORDER BY 
        p.Nombre, a.Nombre;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `consultarInventarioPorFecha` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `consultarInventarioPorFecha`(in fecha date)
BEGIN
	   SELECT 
       p.ProductoID,
        p.Nombre AS Producto,
        a.Nombre AS Almacen,
        SUM(mi.Cantidad) AS Cantidad
    FROM 
        MovimientosInventario mi
    JOIN 
        Productos p ON mi.ProductoID = p.ProductoID
    JOIN 
        Almacenes a ON mi.AlmacenID = a.AlmacenID
    WHERE 
        mi.FechaMovimiento <= fecha
    GROUP BY 
        p.ProductoID, a.AlmacenID
    ORDER BY 
        p.Nombre, a.Nombre;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `consultarInventarioPorProducto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `consultarInventarioPorProducto`(in productoId int)
BEGIN
	SELECT 
	p.ProductoID,
    p.Nombre AS Producto,
    a.Nombre AS Almacen,
    SUM(mi.Cantidad) AS Cantidad
FROM 
    MovimientosInventario mi
JOIN 
    Productos p ON mi.ProductoID = p.ProductoID
JOIN 
    Almacenes a ON mi.AlmacenID = a.AlmacenID
Where p.ProductoID = productoId
GROUP BY 
    p.ProductoID, a.AlmacenID
ORDER BY 
    p.ProductoID, p.Nombre, a.Nombre;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `RegistrarMovimientoInventario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `RegistrarMovimientoInventario`(
	IN producto_id INT,
    IN almacen_id INT,
    IN tipo_movimiento_id INT,
    IN cantidad INT,
    IN referencia VARCHAR(255)
)
BEGIN
  DECLARE cantidad_disponible INT;
  DECLARE cantidad_a_afectar INT;
    
    -- Obtener la cantidad disponible en el inventario
    SELECT Cantidad INTO cantidad_disponible
    FROM Inventario
    WHERE ProductoID = producto_id AND AlmacenID = almacen_id;

    -- Validar la cantidad disponible si el movimiento es una venta
    IF tipo_movimiento_id = 2 AND cantidad_disponible < cantidad THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: No hay suficiente cantidad disponible en el inventario para completar la venta.';
    END IF;
    
    -- Iniciar la transacción
    START TRANSACTION;

  

   
    IF tipo_movimiento_id = 1 OR tipo_movimiento_id = 4 OR tipo_movimiento_id = 6 THEN
        -- Movimientos que incrementan el inventario
       set cantidad_a_afectar = cantidad;
    ELSE
        -- Movimientos que decrementan el inventario
       set cantidad_a_afectar = cantidad * -1;
    END IF;
    
	-- Insertar el registro del movimiento en MovimientosInventario
    INSERT INTO MovimientosInventario (ProductoID, AlmacenID, TipoMovimientoID, Cantidad, Referencia)
    VALUES (producto_id, almacen_id, tipo_movimiento_id, cantidad_a_afectar, referencia);
	 -- Actualizar la cantidad en la tabla Inventario incrematar o decrementar
    UPDATE Inventario
        SET Cantidad = Cantidad + cantidad_a_afectar
        WHERE ProductoID = producto_id AND AlmacenID = almacen_id;

    -- Confirmar la transacción
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-11 14:41:05

