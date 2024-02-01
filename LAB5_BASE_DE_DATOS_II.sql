CREATE DATABASE
ALMACEN

USE ALMACEN

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
 DESCRIPCCIÓN VARCHAR(32),
 CANTIDAD INTEGER,
 PRECIO MONEY
 )


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

  CREATE TABLE VENDEDOR 
 (IDVENDEDOR VARCHAR(5)PRIMARY KEY,
  APELLIDO VARCHAR(30),
  NOMBRE VARCHAR(30),
  CIUDAD VARCHAR (30),
  EDAD VARCHAR (20),
  CATEGORIA VARCHAR (10), 
  SALARIO MONEY, 
  IDSUCURSAL VARCHAR(4)) 


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


ALTER TABLE
CLIENTE ADD FOREIGN KEY(IDVENDEDOR)
REFERENCES
VENDEDOR


ALTER TABLE
VENDEDOR ADD FOREIGN KEY(IDSUCURSAL)
REFERENCES
SUCURSAL


--Insercion de datos en la tabla SUCURSAL

INSERT INTO SUCURSAL(IDSUCURSAL,NOMBRE_SUCURSAL,CIUDAD,DIRECTOR) 
	VALUES('P01','DORADO','PANAMA','JOSE GALLARDO')

INSERT INTO SUCURSAL(IDSUCURSAL,NOMBRE_SUCURSAL,CIUDAD,DIRECTOR) 
	VALUES('P02','ALBROOK','PANAMA','MARIANA VÁSQUEZ')

INSERT INTO SUCURSAL(IDSUCURSAL,NOMBRE_SUCURSAL,CIUDAD,DIRECTOR) 
	VALUES('P03','COSTA DEL ESTE','PANAMA','CARLOS FERNANDEZ')

INSERT INTO SUCURSAL(IDSUCURSAL,NOMBRE_SUCURSAL,CIUDAD,DIRECTOR) 
	VALUES('P04','COSTA VERDE','PANAMA OESTE','PANCRACIA PEREZ')

INSERT INTO SUCURSAL(IDSUCURSAL,NOMBRE_SUCURSAL,CIUDAD,DIRECTOR) 
	VALUES('P05','ONDGO','PANAMA OESTE','SIRIA CARDENAS')

INSERT INTO SUCURSAL(IDSUCURSAL,NOMBRE_SUCURSAL,CIUDAD,DIRECTOR) 
	VALUES('P06','PASEO','PANAMA OESTE','CARLOS MARTINEZ')


-- Insercion de datos en la tabla VENDEDOR

INSERT INTO VENDEDOR(IDVENDEDOR,APELLIDO,NOMBRE,CIUDAD,EDAD,CATEGORIA,SALARIO,IDSUCURSAL)
	VALUES('01','SÁNCHEZ','JORGE','PANAMÁ OESTE','25','A-3',1700.0000, 'P05')

INSERT INTO VENDEDOR(IDVENDEDOR,APELLIDO,NOMBRE,CIUDAD,EDAD,CATEGORIA,SALARIO,IDSUCURSAL)
	VALUES('02','MARTÍNEZ','JULIÁN','COLÓN','39','A-5',2000.0000, 'P02')

INSERT INTO VENDEDOR(IDVENDEDOR,APELLIDO,NOMBRE,CIUDAD,EDAD,CATEGORIA,SALARIO,IDSUCURSAL)
	VALUES('03','GONZÁLEZ','MARGARITO','PANAMÁ','27','A-3',1700.0000, 'P03')

INSERT INTO VENDEDOR(IDVENDEDOR,APELLIDO,NOMBRE,CIUDAD,EDAD,CATEGORIA, SALARIO,IDSUCURSAL)
	VALUES('04','PIELDELOBO','JOSEFINO','PANAMÁ OESTE','42','A-4',1850.00000, 'P01')

INSERT INTO VENDEDOR(IDVENDEDOR,APELLIDO,NOMBRE,CIUDAD,EDAD,CATEGORIA,SALARIO,IDSUCURSAL)
	VALUES('05','PECHOABIERTO','TOROMBOLO','COLÓN','35','A-5',2000.0000, 'P04')

INSERT INTO VENDEDOR(IDVENDEDOR,APELLIDO,NOMBRE,CIUDAD,EDAD,CATEGORIA, SALARIO,IDSUCURSAL)
	VALUES('06','RAJADO','TORRENCIO','Panama','29','A-4', 1665.0000, 'P06')

INSERT INTO VENDEDOR(IDVENDEDOR,APELLIDO,NOMBRE,CIUDAD,EDAD,CATEGORIA, SALARIO,IDSUCURSAL)
	VALUES('07','TORO','CONCHA','COLÓN','33','A-3',1250.0000,'P04')
	


--Insercion de datos en la tabla PRODUCTO

INSERT INTO PRODUCTO(IDPRODUCTO,MARCA,MODELO,DESCRIPCCIÓN,CANTIDAD,PRECIO)
	VALUES('A03','DELL','INSPIRON 153567','LAPTOP','12','605.0000')
	
INSERT INTO PRODUCTO(IDPRODUCTO,MARCA,MODELO,DESCRIPCCIÓN,CANTIDAD,PRECIO)
	VALUES('A04','DELL','INSPIRON A6922','LAPTOP','17','875.0000')

INSERT INTO PRODUCTO(IDPRODUCTO,MARCA,MODELO,DESCRIPCCIÓN,CANTIDAD,PRECIO)
	VALUES('T05','TOSHIBA','DYNABOOK TECRA','LAPTOP','15','1589.0000')

INSERT INTO PRODUCTO(IDPRODUCTO,MARCA,MODELO,DESCRIPCCIÓN,CANTIDAD,PRECIO)
	VALUES('H01','HP','STREAM H-Y020','LAPTOP','7','679.0000')

INSERT INTO PRODUCTO(IDPRODUCTO,MARCA,MODELO,DESCRIPCCIÓN,CANTIDAD,PRECIO)
	VALUES('L03','LENOVO','IDEAPAD 4183','LAPTOP','12','685.0000')

INSERT INTO PRODUCTO(IDPRODUCTO,MARCA,MODELO,DESCRIPCCIÓN,CANTIDAD,PRECIO)
	VALUES('P29','TRENDNET','TC-24C6','PANEL','10','452.5878')

INSERT INTO PRODUCTO(IDPRODUCTO,MARCA,MODELO,DESCRIPCCIÓN,CANTIDAD,PRECIO)
	VALUES('S02','DELL','POWER EDGE','SERVIDOR','6','3500.0000')



--Insercion de datos en la tabla CLIENTE

INSERT INTO CLIENTE(IDCLIENTE,APELLIDO,NOMBRE,CIUDAD,EMAIL, DIRECCION, TIPO_CLIENTE,IDVENDEDOR,FECHA_NAC)
	VALUES('C01','MILAN','CARLOS','SANTIAGO','CMILAN@GMAIL.COM', 'LA PRIMAVERA', 'A1','01','1979-01-02')

INSERT INTO CLIENTE(IDCLIENTE,APELLIDO,NOMBRE,CIUDAD,EMAIL,DIRECCION,TIPO_CLIENTE,IDVENDEDOR,FECHA_NAC)
	VALUES('C02','TRUENO','MARITZA','COLÓN','MTRUENO@GMAIL.COM', '4 ALTOS', 'A2','02','1968-11-03')

INSERT INTO CLIENTE(IDCLIENTE,APELLIDO,NOMBRE,CIUDAD,EMAIL,DIRECCION,TIPO_CLIENTE,IDVENDEDOR,FECHA_NAC)
	VALUES('C03','CREMENTO','ALEX','SANTIAGO','ALCREME@GMAIL.COM', 'EL UVITO','A1','03','1958-07-28')

INSERT INTO CLIENTE(IDCLIENTE,APELLIDO,NOMBRE,CIUDAD,EMAIL,DIRECCION,TIPO_CLIENTE,IDVENDEDOR,FECHA_NAC)
	VALUES('C04','SOLIS','PANTALEONA','PANAMÁ','PANTESOL@GMAIL.COM', 'COSTA DEL ESTE','A1','04','1999-06-01')

INSERT INTO CLIENTE(IDCLIENTE,APELLIDO,NOMBRE,CIUDAD,EMAIL,DIRECCION,TIPO_CLIENTE,IDVENDEDOR,FECHA_NAC)
	VALUES('C05','CAMPBELL','DEBORA','PANAMÁ OESTE','DEBORACAMB@GMAIL.COM', 'VALLE DORADO','B1','05','1985-08-03')

INSERT INTO CLIENTE(IDCLIENTE,APELLIDO,NOMBRE,CIUDAD,EMAIL,DIRECCION,TIPO_CLIENTE,IDVENDEDOR,FECHA_NAC)
	VALUES('C06','MUÑOZ','ERNESTO','PANAMÁ OESTE','EMUNOZ@GMAIL.COM','SAN ANTONIO','B2','06','1977-01-01')


--Insercion de datos a la tabla VENTA

INSERT INTO VENTA(NOFACTURA,FECHA_FACT,TOTAL,IDCLIENTE,IDPRODUCTO,IDVENDEDOR)
	VALUES('2445','2021-12-28',895.0000,'C02','H01','02')

INSERT INTO VENTA(NOFACTURA,FECHA_FACT,TOTAL,IDCLIENTE,IDPRODUCTO,IDVENDEDOR)
	VALUES('2571','2022-03-22',2569.7000,'C06','A03','06')

INSERT INTO VENTA(NOFACTURA,FECHA_FACT,TOTAL,IDCLIENTE,IDPRODUCTO,IDVENDEDOR)
	VALUES('2956','2022-04-03',615.2500,'C03','L03','03')

INSERT INTO VENTA(NOFACTURA,FECHA_FACT,TOTAL,IDCLIENTE,IDPRODUCTO,IDVENDEDOR)
	VALUES('2945','2022-05-06',1605.0000,'C01','T05','01')

INSERT INTO VENTA(NOFACTURA,FECHA_FACT,TOTAL,IDCLIENTE,IDPRODUCTO,IDVENDEDOR)
	VALUES('2960','2022-03-19',4500.0000,'C04','S02','04')

INSERT INTO VENTA(NOFACTURA,FECHA_FACT,TOTAL,IDCLIENTE,IDPRODUCTO,IDVENDEDOR)
	VALUES('2962','2022-06-24',1895.7500,'C05','L03','05')

use almacen


--- PRIMERA PARTE   1. Creacion de la base de datos lab5identity y la tabla articulos

 create database lab5identity

 use lab5identity

 create table articulos(
 
 codigo int identity,
 nombre varchar(20),
 descripcion varchar(30),
 precio money,
 cantidad tinyint default 0,
 primary key(codigo)
 
 );

 select * from articulos


 insert into articulos (nombre, descripcion, precio, cantidad)
 values('impresora', 'Epson Stylus C45', 400.80, 20);
 
 insert into articulos (nombre, descripcion, precio)
 values('impresora', 'Epson Stylus C85', 500);

 insert into articulos (nombre, descripcion, precio)
 values('monitor', 'Samsung 14', 800);

 insert into articulos (nombre, descripcion, precio, cantidad)
 values('teclado', 'ingles Biswal',100, 50);

 
 select * from articulos  --- 2. desde la fila de diseno se inserto un registro mas y el contador (codigo) se incremento

 
 --- 3. Creacion de una tabla similar a articulos pero codigo se incrementara en 2 a partir de uno

 use lab5identity


  create table articulosNuevo(
 
 codigo int identity(1,2),
 nombre varchar(20),
 descripcion varchar(30),
 precio money,
 cantidad tinyint default 0,
 primary key(codigo)
 
 );

 insert into articulosNuevo  (nombre, descripcion, precio, cantidad)
 values('televisor', 'lg 50 pulgadas', 600, 12),
('monitor', 'acer 14 pulgadas', 120, 5)


select * from articulosNuevo   --- al ejecutar el select vemos que el codigo del segundo articulo es 3




--- SEGUNDA PARTE GROUP BY HAVING


use almacen


---- 1. Se desea proyectar el nombre, apellido, codigo de vendedor y categoria de vendedor, agrupar
---- por categoria donde la misma sea igual a A-3


select * from vendedor


select nombre, apellido, idvendedor, categoria
from vendedor
group by nombre, apellido, idvendedor, categoria
having categoria = 'A-3'




---- 2. Selecciona la descripcion y precio de los productos, agrupandolos por descripcion donde precio
---- sea mayor o igual a 579.

select * from PRODUCTO

select DESCRIPCCIÓN, precio
from producto
group by DESCRIPCCIÓN, precio
having precio >= 579




--- 3. Necesitamos conocer la descripcion y el total de los precios agrupados por descripcion de los productos laptop
--- y panel


select DESCRIPCCIÓN, sum(precio) as Precio
from producto
group by DESCRIPCCIÓN
having DESCRIPCCIÓN in ('LAPTOP', 'PANEL')





--- TERCERA PARTE PROCEDIMIENTOS ALMACENADOS

--- 1. Crear un procedimiento almacenado que muestre un saludo

use almacen

create procedure paSaludo
as 
begin
print 'Hola Mundo'
end

exec paSaludo



--- 2.	Crear un procedimiento que recibe el nombre de una marca como parámetro para mostrar todos los
---- productos asociados a esa marca más su descripción y precio, usar tabla almacén.

create procedure info_marca
@marca varchar(30)
as
select descripcción, precio 
from producto
where marca = @marca


exec info_marca 'Dell'

select * from producto


---- 3. Crear un procedimiento almacenado para sumar dos números, que imprima el resultado

create procedure suma
 @num1 int,
 @num2 int
 as 
 begin 
 
  declare @Resultado int

  set @Resultado = @num1 + @num2

  select @Resultado as suma

 end

 exec suma @num1 = 5 , @num2 = 7

--- 4. Hacer un procedimiento almacenado para dividir dos números y que mande un error si el divisor es igual a
---- cero

-- Crear el procedimiento almacenado
CREATE PROCEDURE DividirNumeros
    @Dividendo FLOAT,
    @Divisor FLOAT
AS
BEGIN
    -- Verificar si el divisor es igual a cero
    IF @Divisor = 0
    BEGIN
        -- Generar un error si el divisor es cero
        Select 'El divisor no puede ser igual a cero.'
        
    END

	else if @Divisor != 0

	begin 

    -- Realizar la división
    DECLARE @Resultado FLOAT
    SET @Resultado = @Dividendo / @Divisor

    -- Devolver el resultado
    SELECT @Resultado AS Division

	end
END




exec DividirNumeros @Dividendo = 5, @Divisor = 0   --- Prueba cuando el divisor es 0
exec DividirNumeros @Dividendo =4 , @Divisor = 2 ---- Prueba cuando el divisor no es 0





--- 5. Usar alguna de las tablas dadas de Almacén y crear un procedimiento almacenado que inserte una línea en
---- alguna de sus tablas


use almacen

select * from venta

create procedure insertar_venta

@nofactura varchar(8), @fecha_fact smalldatetime, @total money, @idcliente varchar(5), @idproducto char(4), @idvendedor varchar (5)
as
insert into venta
values (@nofactura, @fecha_fact, @total, @idcliente, @idproducto, @idvendedor)

insertar_venta '3031', '2023-08-12', 1000.00, 'C05', 'S02', '05'


select * from cliente
select * from producto
select * from vendedor
select * from venta


