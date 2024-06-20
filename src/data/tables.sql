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
-- Table structure for table `ajustesinventario`
--

DROP TABLE IF EXISTS `ajustesinventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ajustesinventario` (
  `AjusteID` int NOT NULL AUTO_INCREMENT,
  `InventarioID` int DEFAULT NULL,
  `RazonesAjusteID` int DEFAULT NULL,
  `Cantidad` int DEFAULT NULL,
  `FechaAjuste` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Descripcion` text,
  PRIMARY KEY (`AjusteID`),
  KEY `InventarioID` (`InventarioID`),
  KEY `RazonesAjusteID` (`RazonesAjusteID`),
  CONSTRAINT `ajustesinventario_ibfk_1` FOREIGN KEY (`InventarioID`) REFERENCES `inventario` (`InventarioID`),
  CONSTRAINT `ajustesinventario_ibfk_2` FOREIGN KEY (`RazonesAjusteID`) REFERENCES `razonesajuste` (`RazonesAjusteID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ajustesinventario`
--

LOCK TABLES `ajustesinventario` WRITE;
/*!40000 ALTER TABLE `ajustesinventario` DISABLE KEYS */;
/*!40000 ALTER TABLE `ajustesinventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `almacenes`
--

DROP TABLE IF EXISTS `almacenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `almacenes` (
  `AlmacenID` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) NOT NULL,
  `Ubicacion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`AlmacenID`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `almacenes`
--

LOCK TABLES `almacenes` WRITE;
/*!40000 ALTER TABLE `almacenes` DISABLE KEYS */;
INSERT INTO `almacenes` VALUES (1,'Almacén Central','Ciudad Principal'),(2,'Almacén Secundario','Ciudad Secundaria'),(3,'Almacen 3','Ciudad 3'),(4,'Almacen 4','Ciudad 4'),(5,'Almacen 5','Ciudad 5'),(6,'Almacen 6','Ciudad 6'),(7,'Almacen 7','Ciudad 7'),(8,'Almacen 8','Ciudad 8'),(9,'Almacen 9','Ciudad 9'),(10,'Almacen 10','Ciudad 10'),(11,'Almacen 11','Ciudad 11'),(12,'Almacen 12','Ciudad 12'),(13,'Almacen 13','Ciudad 13'),(14,'Almacen 14','Ciudad 14'),(15,'Almacen 15','Ciudad 15'),(16,'Almacen 16','Ciudad 16'),(17,'Almacen 17','Ciudad 17'),(18,'Almacen 18','Ciudad 18'),(19,'Almacen 19','Ciudad 19'),(20,'Almacen 20','Ciudad 20'),(21,'Almacen 21','Ciudad 21'),(22,'Almacen 22','Ciudad 22'),(23,'Almacen 23','Ciudad 23'),(24,'Almacen 24','Ciudad 24'),(25,'Almacen 25','Ciudad 25'),(26,'Almacen 26','Ciudad 26'),(27,'Almacen 27','Ciudad 27'),(28,'Almacen 28','Ciudad 28'),(29,'Almacen 29','Ciudad 29'),(30,'Almacen 30','Ciudad 30'),(31,'Almacen 31','Ciudad 31'),(32,'Almacen 32','Ciudad 32'),(33,'Almacen 33','Ciudad 33'),(34,'Almacen 34','Ciudad 34'),(35,'Almacen 35','Ciudad 35'),(36,'Almacen 36','Ciudad 36'),(37,'Almacen 37','Ciudad 37'),(38,'Almacen 38','Ciudad 38'),(39,'Almacen 39','Ciudad 39'),(40,'Almacen 40','Ciudad 40'),(41,'Almacen 41','Ciudad 41'),(42,'Almacen 42','Ciudad 42'),(43,'Almacen 43','Ciudad 43'),(44,'Almacen 44','Ciudad 44'),(45,'Almacen 45','Ciudad 45'),(46,'Almacen 46','Ciudad 46'),(47,'Almacen 47','Ciudad 47'),(48,'Almacen 48','Ciudad 48'),(49,'Almacen 49','Ciudad 49'),(50,'Almacen 50','Ciudad 50'),(51,'Almacen 51','Ciudad 51');
/*!40000 ALTER TABLE `almacenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoriasproductos`
--

DROP TABLE IF EXISTS `categoriasproductos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoriasproductos` (
  `CategoriaID` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`CategoriaID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoriasproductos`
--

LOCK TABLES `categoriasproductos` WRITE;
/*!40000 ALTER TABLE `categoriasproductos` DISABLE KEYS */;
INSERT INTO `categoriasproductos` VALUES (1,'Electrónica'),(2,'Ropa'),(3,'Alimentos');
/*!40000 ALTER TABLE `categoriasproductos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `ClienteID` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) NOT NULL,
  `Contacto` varchar(255) DEFAULT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ClienteID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Cliente 1','Carlos Ramírez','555-8765','carlos@cliente.com'),(2,'Cliente 2','Ana Gómez','555-4321','ana@cliente.com');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devoluciones`
--

DROP TABLE IF EXISTS `devoluciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `devoluciones` (
  `DevolucionID` int NOT NULL AUTO_INCREMENT,
  `MovimientoID` int DEFAULT NULL,
  `ClienteID` int DEFAULT NULL,
  `EstadoProductoID` int DEFAULT NULL,
  `FechaDevolucion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Descripcion` text,
  PRIMARY KEY (`DevolucionID`),
  KEY `MovimientoID` (`MovimientoID`),
  KEY `ClienteID` (`ClienteID`),
  KEY `EstadoProductoID` (`EstadoProductoID`),
  CONSTRAINT `devoluciones_ibfk_1` FOREIGN KEY (`MovimientoID`) REFERENCES `movimientosinventario` (`MovimientoID`),
  CONSTRAINT `devoluciones_ibfk_2` FOREIGN KEY (`ClienteID`) REFERENCES `clientes` (`ClienteID`),
  CONSTRAINT `devoluciones_ibfk_3` FOREIGN KEY (`EstadoProductoID`) REFERENCES `estadoproducto` (`EstadoProductoID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devoluciones`
--

LOCK TABLES `devoluciones` WRITE;
/*!40000 ALTER TABLE `devoluciones` DISABLE KEYS */;
INSERT INTO `devoluciones` VALUES (2,3,1,2,'2024-06-11 19:23:29','Galletas devueltas por cliente debido a paquete dañado');
/*!40000 ALTER TABLE `devoluciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estadoproducto`
--

DROP TABLE IF EXISTS `estadoproducto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estadoproducto` (
  `EstadoProductoID` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`EstadoProductoID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estadoproducto`
--

LOCK TABLES `estadoproducto` WRITE;
/*!40000 ALTER TABLE `estadoproducto` DISABLE KEYS */;
INSERT INTO `estadoproducto` VALUES (1,'Revendible'),(2,'Defectuoso'),(3,'Para Descartar');
/*!40000 ALTER TABLE `estadoproducto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario`
--

DROP TABLE IF EXISTS `inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventario` (
  `InventarioID` int NOT NULL AUTO_INCREMENT,
  `ProductoID` int DEFAULT NULL,
  `AlmacenID` int DEFAULT NULL,
  `Cantidad` int DEFAULT NULL,
  PRIMARY KEY (`InventarioID`),
  KEY `ProductoID` (`ProductoID`),
  KEY `AlmacenID` (`AlmacenID`),
  CONSTRAINT `inventario_ibfk_1` FOREIGN KEY (`ProductoID`) REFERENCES `productos` (`ProductoID`),
  CONSTRAINT `inventario_ibfk_2` FOREIGN KEY (`AlmacenID`) REFERENCES `almacenes` (`AlmacenID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario`
--

LOCK TABLES `inventario` WRITE;
/*!40000 ALTER TABLE `inventario` DISABLE KEYS */;
INSERT INTO `inventario` VALUES (1,1,1,0),(2,2,1,200),(3,3,2,150);
/*!40000 ALTER TABLE `inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimientosinventario`
--

DROP TABLE IF EXISTS `movimientosinventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movimientosinventario` (
  `MovimientoID` int NOT NULL AUTO_INCREMENT,
  `ProductoID` int DEFAULT NULL,
  `AlmacenID` int DEFAULT NULL,
  `TipoMovimientoID` int DEFAULT NULL,
  `Cantidad` int DEFAULT NULL,
  `FechaMovimiento` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Referencia` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`MovimientoID`),
  KEY `ProductoID` (`ProductoID`),
  KEY `AlmacenID` (`AlmacenID`),
  KEY `TipoMovimientoID` (`TipoMovimientoID`),
  CONSTRAINT `movimientosinventario_ibfk_1` FOREIGN KEY (`ProductoID`) REFERENCES `productos` (`ProductoID`),
  CONSTRAINT `movimientosinventario_ibfk_2` FOREIGN KEY (`AlmacenID`) REFERENCES `almacenes` (`AlmacenID`),
  CONSTRAINT `movimientosinventario_ibfk_3` FOREIGN KEY (`TipoMovimientoID`) REFERENCES `tipomovimiento` (`TipoMovimientoID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimientosinventario`
--

LOCK TABLES `movimientosinventario` WRITE;
/*!40000 ALTER TABLE `movimientosinventario` DISABLE KEYS */;
INSERT INTO `movimientosinventario` VALUES (1,1,1,1,50,'2024-06-11 18:37:32','Compra inicial de Teléfonos móviles'),(2,2,1,2,20,'2024-06-11 18:37:32','Venta de Camisetas'),(3,3,2,3,10,'2024-06-11 18:37:32','Devolución de Galletas por cliente'),(4,1,1,4,5,'2024-06-11 18:37:32','Devolución de Teléfonos móviles al proveedor por defecto'),(5,2,1,5,-2,'2024-06-11 18:37:32','Ajuste de inventario por pérdida de Camisetas'),(6,3,1,6,30,'2024-06-11 18:37:32','Transferencia de Galletas del Almacén Secundario al Central'),(7,1,1,2,10,'2024-06-11 19:47:24','Venta de productos'),(8,1,1,2,2,'2024-06-11 19:49:36','Venta de productos'),(9,1,1,2,-12,'2024-06-11 19:50:46','Venta de productos'),(10,1,1,2,5,'2024-06-11 19:52:01','Venta de productos'),(11,1,1,2,5,'2024-06-11 19:53:08','Venta de productos'),(12,1,1,2,5,'2024-06-11 19:55:01','Venta de productos'),(13,1,1,2,5,'2024-06-11 19:55:11','Venta de productos'),(14,1,1,2,-5,'2024-06-11 19:59:24','Venta de productos'),(15,1,1,2,-5,'2024-06-11 19:59:34','Venta de productos'),(16,1,1,2,-5,'2024-06-11 19:59:41','Venta de productos');
/*!40000 ALTER TABLE `movimientosinventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `ProductoID` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) NOT NULL,
  `Descripcion` text,
  `CategoriaID` int DEFAULT NULL,
  `Precio` decimal(10,2) DEFAULT NULL,
  `FechaCreacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ProductoID`),
  KEY `CategoriaID` (`CategoriaID`),
  CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`CategoriaID`) REFERENCES `categoriasproductos` (`CategoriaID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Teléfono móvil','Teléfono móvil con pantalla táctil',1,299.99,'2024-06-11 18:34:46'),(2,'Camiseta','Camiseta de algodón',2,19.99,'2024-06-11 18:34:46'),(3,'Galletas','Galletas de chocolate',3,2.99,'2024-06-11 18:34:46');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `ProveedorID` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) NOT NULL,
  `Contacto` varchar(255) DEFAULT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ProveedorID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'Proveedor Electrónica','Juan Pérez','555-1234','juan@proveedor.com'),(2,'Proveedor Ropa','María López','555-5678','maria@proveedor.com');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `razonesajuste`
--

DROP TABLE IF EXISTS `razonesajuste`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `razonesajuste` (
  `RazonesAjusteID` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`RazonesAjusteID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `razonesajuste`
--

LOCK TABLES `razonesajuste` WRITE;
/*!40000 ALTER TABLE `razonesajuste` DISABLE KEYS */;
/*!40000 ALTER TABLE `razonesajuste` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipomovimiento`
--

DROP TABLE IF EXISTS `tipomovimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipomovimiento` (
  `TipoMovimientoID` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`TipoMovimientoID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipomovimiento`
--

LOCK TABLES `tipomovimiento` WRITE;
/*!40000 ALTER TABLE `tipomovimiento` DISABLE KEYS */;
INSERT INTO `tipomovimiento` VALUES (1,'Compra'),(2,'Venta'),(3,'Devolución de Cliente'),(4,'Devolución a Proveedor'),(5,'Ajuste de Inventario'),(6,'Transferencia Interna');
/*!40000 ALTER TABLE `tipomovimiento` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-17 11:44:51
CREATE TABLE usuarios (
    id BIGINT NOT NULL AUTO_INCREMENT,
    username VARCHAR(255),
    password VARCHAR(255),
    nombre VARCHAR(255),
    apellido VARCHAR(255),
    email VARCHAR(255),
    telefono VARCHAR(255),
    enabled TINYINT(1) DEFAULT 1,
    perfil VARCHAR(255),
    PRIMARY KEY (id)
);


CREATE TABLE roles (
    rolId BIGINT NOT NULL,
    rolNombre VARCHAR(255),
    PRIMARY KEY (rolId)
);

CREATE TABLE usuario_rol (
    usuarioRolId BIGINT NOT NULL AUTO_INCREMENT,
    usuario_id BIGINT,
    rol_id BIGINT,
    PRIMARY KEY (usuarioRolId),
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
    FOREIGN KEY (rol_id) REFERENCES roles(rolId)
);
