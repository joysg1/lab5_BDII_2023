CREATE DATABASE
ALMACEN
 GO
 
USE ALMACEN
GO
CREATE TABLE SUCURSAL
(IDSUCURSAL VARCHAR(4) PRIMARY KEY,
NOMBRE_SUCURSAL VARCHAR (30),
CIUDAD VARCHAR(30),
DIRECTOR VARCHAR (28))
GO


CREATE TABLE PRODUCTO
(IDPRODUCTO CHAR(4) PRIMARY KEY,
 MARCA VARCHAR(30),
 MODELO VARCHAR(30),
 DESCRIPCCI�N VARCHAR(32),
 CANTIDAD INTEGER,
 PRECIO MONEY
 )
GO



CREATE TABLE CLIENTE
 (IDCLIENTE VARCHAR(5)PRIMARY KEY,
  APELLIDO VARCHAR(30),
  NOMBRE VARCHAR(30),
  CIUDAD VARCHAR (30),
  EMAIL VARCHAR (20),
  DIRECCION VARCHAR (30),
  TIPO_CLIENTE VARCHAR (10), 
  IDVENDEDOR VARCHAR(5),
  FECHA_NAC datetime)
GO

CREATE TABLE VENDEDOR 
 (IDVENDEDOR VARCHAR(5)PRIMARY KEY,
  APELLIDO VARCHAR(30),
  NOMBRE VARCHAR(30),
  CIUDAD VARCHAR (30),
  EDAD VARCHAR (20),
  CATEGORIA VARCHAR (10), 
  SALARIO MONEY, 
  IDSUCURSAL VARCHAR(4)) 
GO

CREATE TABLE VENTA
 (NOFACTURA VARCHAR(8)PRIMARY KEY,
  FECHA_FACT smalldatetime,
  TOTAL MONEY,
  IDCLIENTE VARCHAR(5),
  IDPRODUCTO CHAR(4),
  IDVENDEDOR VARCHAR(5),
CONSTRAINT FK_VENTA FOREIGN KEY (IDCLIENTE) REFERENCES CLIENTE(IDCLIENTE),
CONSTRAINT FK_VENTA2 FOREIGN KEY (IDPRODUCTO) REFERENCES PRODUCTO(IDPRODUCTO),
CONSTRAINT FK_VENTA3 FOREIGN KEY (IDVENDEDOR) REFERENCES VENDEDOR(IDVENDEDOR),
)
GO

ALTER TABLE
CLIENTE ADD FOREIGN KEY(IDVENDEDOR)
REFERENCES
VENDEDOR
GO

ALTER TABLE
VENDEDOR ADD FOREIGN KEY(IDSUCURSAL)
REFERENCES
SUCURSAL
GO