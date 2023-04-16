--------------------------------------------------------
-- Archivo creado  - s�bado-abril-15-2023   
--------------------------------------------------------
DROP TABLE "USR_FERRETERIA"."ARTICULOS_CARRITO" cascade constraints;
DROP TABLE "USR_FERRETERIA"."CARRO" cascade constraints;
DROP TABLE "USR_FERRETERIA"."CATEGORIAS" cascade constraints;
DROP TABLE "USR_FERRETERIA"."CLIENTES" cascade constraints;
DROP TABLE "USR_FERRETERIA"."DETALLES_ORDEN" cascade constraints;
DROP TABLE "USR_FERRETERIA"."DIRECCION_DE_ENVIO" cascade constraints;
DROP TABLE "USR_FERRETERIA"."ENVIO_DE_PEDIDO" cascade constraints;
DROP TABLE "USR_FERRETERIA"."METODO_DE_PAGO" cascade constraints;
DROP TABLE "USR_FERRETERIA"."ORDEN" cascade constraints;
DROP TABLE "USR_FERRETERIA"."PAGO" cascade constraints;
DROP TABLE "USR_FERRETERIA"."PRODUCTOS" cascade constraints;
DROP TABLE "USR_FERRETERIA"."PROVEEDORES" cascade constraints;
DROP TABLE "USR_FERRETERIA"."REVISAR" cascade constraints;
DROP TABLE "USR_FERRETERIA"."USUARIOS" cascade constraints;
--------------------------------------------------------
--  DDL for Table ARTICULOS_CARRITO
--------------------------------------------------------

  CREATE TABLE "USR_FERRETERIA"."ARTICULOS_CARRITO" 
   (	"ID_ARTICULOS_CARRITO" NUMBER, 
	"ID_CARRO" NUMBER, 
	"ID_PRODUCTO" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CARRO
--------------------------------------------------------

  CREATE TABLE "USR_FERRETERIA"."CARRO" 
   (	"ID_CARRO" NUMBER, 
	"ID_USUARIO" NUMBER, 
	"FECHA_CREACION_CARRITO" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CATEGORIAS
--------------------------------------------------------

  CREATE TABLE "USR_FERRETERIA"."CATEGORIAS" 
   (	"ID_CATEGORIA" NUMBER, 
	"NOMBRE_CATEGORIA" VARCHAR2(50 BYTE), 
	"DESCRIPCION" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CLIENTES
--------------------------------------------------------

  CREATE TABLE "USR_FERRETERIA"."CLIENTES" 
   (	"ID_CLIENTES" NUMBER, 
	"NOMBRE" VARCHAR2(50 BYTE), 
	"APELLIDO" VARCHAR2(50 BYTE), 
	"DIRECCION" VARCHAR2(50 BYTE), 
	"TELEFONO" NUMBER(8,0), 
	"CORREO" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table DETALLES_ORDEN
--------------------------------------------------------

  CREATE TABLE "USR_FERRETERIA"."DETALLES_ORDEN" 
   (	"ID_DETALLE_DE_PEDIDO" NUMBER, 
	"ID_PEDIDO" NUMBER, 
	"ID_PRODUCTO" NUMBER, 
	"CANTIDAD" NUMBER, 
	"PRECIO_UNITARIO" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table DIRECCION_DE_ENVIO
--------------------------------------------------------

  CREATE TABLE "USR_FERRETERIA"."DIRECCION_DE_ENVIO" 
   (	"ID_DIRECCION_DE_ENVIO" NUMBER, 
	"ID_USUARIO" NUMBER, 
	"DIRECCION" VARCHAR2(50 BYTE), 
	"CIUDAD" VARCHAR2(50 BYTE), 
	"CODIGO_POSTAL" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ENVIO_DE_PEDIDO
--------------------------------------------------------

  CREATE TABLE "USR_FERRETERIA"."ENVIO_DE_PEDIDO" 
   (	"ID_ENVIO_DE_PEDIDO" NUMBER, 
	"ID_PEDIDO" NUMBER, 
	"ID_DIRECCION_DE_ENVIO" NUMBER, 
	"FECHA_ENVIO" DATE, 
	"COSTO_ENVIO" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table METODO_DE_PAGO
--------------------------------------------------------

  CREATE TABLE "USR_FERRETERIA"."METODO_DE_PAGO" 
   (	"ID_METODO_PAGO" NUMBER, 
	"TIPO_DE_PAGO" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ORDEN
--------------------------------------------------------

  CREATE TABLE "USR_FERRETERIA"."ORDEN" 
   (	"ID_PEDIDO" NUMBER, 
	"FECHA_PEDIDO" DATE, 
	"ID_CLIENTE" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PAGO
--------------------------------------------------------

  CREATE TABLE "USR_FERRETERIA"."PAGO" 
   (	"ID_PAGO" NUMBER, 
	"ID_PEDIDO" NUMBER, 
	"ID_METODO_PAGO" NUMBER, 
	"FECHA_DE_PAGO" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PRODUCTOS
--------------------------------------------------------

  CREATE TABLE "USR_FERRETERIA"."PRODUCTOS" 
   (	"ID_PRODUCTO" NUMBER, 
	"NOMBRE_PRODUCTO" VARCHAR2(50 BYTE), 
	"DESCRIPCION" VARCHAR2(50 BYTE), 
	"PRECIO" VARCHAR2(50 BYTE), 
	"ID_CATEGORIA" NUMBER, 
	"ID_PROVEEDOR" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PROVEEDORES
--------------------------------------------------------

  CREATE TABLE "USR_FERRETERIA"."PROVEEDORES" 
   (	"ID_PROVEEDOR" NUMBER, 
	"NOMBRE_PROVEEDOR" VARCHAR2(50 BYTE), 
	"DIRECCION" VARCHAR2(50 BYTE), 
	"CIUDAD" VARCHAR2(50 BYTE), 
	"TELEFONO" NUMBER(8,0), 
	"CORREO" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table REVISAR
--------------------------------------------------------

  CREATE TABLE "USR_FERRETERIA"."REVISAR" 
   (	"ID_REVISION" NUMBER, 
	"ID_PRODUCTO" NUMBER, 
	"ID_USUARIO" NUMBER, 
	"CLASIFICACION" VARCHAR2(50 BYTE), 
	"COMENTARIO" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table USUARIOS
--------------------------------------------------------

  CREATE TABLE "USR_FERRETERIA"."USUARIOS" 
   (	"ID_USUARIO" NUMBER, 
	"CORREO" VARCHAR2(50 BYTE), 
	"CONTRASE�A" VARCHAR2(50 BYTE), 
	"NOMBRE" VARCHAR2(50 BYTE), 
	"APELLIDO" VARCHAR2(50 BYTE), 
	"DIRECCION" VARCHAR2(50 BYTE), 
	"TELEFONO" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
REM INSERTING into USR_FERRETERIA.ARTICULOS_CARRITO
SET DEFINE OFF;
REM INSERTING into USR_FERRETERIA.CARRO
SET DEFINE OFF;
REM INSERTING into USR_FERRETERIA.CATEGORIAS
SET DEFINE OFF;
REM INSERTING into USR_FERRETERIA.CLIENTES
SET DEFINE OFF;
REM INSERTING into USR_FERRETERIA.DETALLES_ORDEN
SET DEFINE OFF;
REM INSERTING into USR_FERRETERIA.DIRECCION_DE_ENVIO
SET DEFINE OFF;
REM INSERTING into USR_FERRETERIA.ENVIO_DE_PEDIDO
SET DEFINE OFF;
REM INSERTING into USR_FERRETERIA.METODO_DE_PAGO
SET DEFINE OFF;
REM INSERTING into USR_FERRETERIA.ORDEN
SET DEFINE OFF;
REM INSERTING into USR_FERRETERIA.PAGO
SET DEFINE OFF;
REM INSERTING into USR_FERRETERIA.PRODUCTOS
SET DEFINE OFF;
REM INSERTING into USR_FERRETERIA.PROVEEDORES
SET DEFINE OFF;
REM INSERTING into USR_FERRETERIA.REVISAR
SET DEFINE OFF;
REM INSERTING into USR_FERRETERIA.USUARIOS
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index ARTICULOS_CARRITO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "USR_FERRETERIA"."ARTICULOS_CARRITO_PK" ON "USR_FERRETERIA"."ARTICULOS_CARRITO" ("ID_ARTICULOS_CARRITO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CARRO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "USR_FERRETERIA"."CARRO_PK" ON "USR_FERRETERIA"."CARRO" ("ID_CARRO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CATEGORIAS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "USR_FERRETERIA"."CATEGORIAS_PK" ON "USR_FERRETERIA"."CATEGORIAS" ("ID_CATEGORIA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CLIENTES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "USR_FERRETERIA"."CLIENTES_PK" ON "USR_FERRETERIA"."CLIENTES" ("ID_CLIENTES") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index DETALLES_ORDEN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "USR_FERRETERIA"."DETALLES_ORDEN_PK" ON "USR_FERRETERIA"."DETALLES_ORDEN" ("ID_DETALLE_DE_PEDIDO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index DIRECCION_DE_ENVIO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "USR_FERRETERIA"."DIRECCION_DE_ENVIO_PK" ON "USR_FERRETERIA"."DIRECCION_DE_ENVIO" ("ID_DIRECCION_DE_ENVIO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ENVIO_DE_PEDIDO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "USR_FERRETERIA"."ENVIO_DE_PEDIDO_PK" ON "USR_FERRETERIA"."ENVIO_DE_PEDIDO" ("ID_ENVIO_DE_PEDIDO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index METODO_DE_PAGO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "USR_FERRETERIA"."METODO_DE_PAGO_PK" ON "USR_FERRETERIA"."METODO_DE_PAGO" ("ID_METODO_PAGO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ORDEN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "USR_FERRETERIA"."ORDEN_PK" ON "USR_FERRETERIA"."ORDEN" ("ID_PEDIDO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PAGO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "USR_FERRETERIA"."PAGO_PK" ON "USR_FERRETERIA"."PAGO" ("ID_PAGO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PRODUCTOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "USR_FERRETERIA"."PRODUCTOS_PK" ON "USR_FERRETERIA"."PRODUCTOS" ("ID_PRODUCTO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PROVEEDORES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "USR_FERRETERIA"."PROVEEDORES_PK" ON "USR_FERRETERIA"."PROVEEDORES" ("ID_PROVEEDOR") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index REVISAR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "USR_FERRETERIA"."REVISAR_PK" ON "USR_FERRETERIA"."REVISAR" ("ID_REVISION") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index USUARIOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "USR_FERRETERIA"."USUARIOS_PK" ON "USR_FERRETERIA"."USUARIOS" ("ID_USUARIO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table CLIENTES
--------------------------------------------------------

  ALTER TABLE "USR_FERRETERIA"."CLIENTES" MODIFY ("ID_CLIENTES" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."CLIENTES" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."CLIENTES" MODIFY ("APELLIDO" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."CLIENTES" MODIFY ("DIRECCION" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."CLIENTES" MODIFY ("TELEFONO" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."CLIENTES" MODIFY ("CORREO" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."CLIENTES" ADD CONSTRAINT "CLIENTES_PK" PRIMARY KEY ("ID_CLIENTES")
  USING INDEX "USR_FERRETERIA"."CLIENTES_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ENVIO_DE_PEDIDO
--------------------------------------------------------

  ALTER TABLE "USR_FERRETERIA"."ENVIO_DE_PEDIDO" MODIFY ("ID_ENVIO_DE_PEDIDO" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."ENVIO_DE_PEDIDO" MODIFY ("ID_PEDIDO" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."ENVIO_DE_PEDIDO" MODIFY ("ID_DIRECCION_DE_ENVIO" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."ENVIO_DE_PEDIDO" MODIFY ("FECHA_ENVIO" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."ENVIO_DE_PEDIDO" MODIFY ("COSTO_ENVIO" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."ENVIO_DE_PEDIDO" ADD CONSTRAINT "ENVIO_DE_PEDIDO_PK" PRIMARY KEY ("ID_ENVIO_DE_PEDIDO")
  USING INDEX "USR_FERRETERIA"."ENVIO_DE_PEDIDO_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CARRO
--------------------------------------------------------

  ALTER TABLE "USR_FERRETERIA"."CARRO" MODIFY ("ID_CARRO" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."CARRO" MODIFY ("ID_USUARIO" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."CARRO" ADD CONSTRAINT "CARRO_PK" PRIMARY KEY ("ID_CARRO")
  USING INDEX "USR_FERRETERIA"."CARRO_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PROVEEDORES
--------------------------------------------------------

  ALTER TABLE "USR_FERRETERIA"."PROVEEDORES" MODIFY ("ID_PROVEEDOR" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."PROVEEDORES" MODIFY ("NOMBRE_PROVEEDOR" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."PROVEEDORES" MODIFY ("DIRECCION" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."PROVEEDORES" MODIFY ("CIUDAD" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."PROVEEDORES" MODIFY ("TELEFONO" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."PROVEEDORES" MODIFY ("CORREO" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."PROVEEDORES" ADD CONSTRAINT "PROVEEDORES_PK" PRIMARY KEY ("ID_PROVEEDOR")
  USING INDEX "USR_FERRETERIA"."PROVEEDORES_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ARTICULOS_CARRITO
--------------------------------------------------------

  ALTER TABLE "USR_FERRETERIA"."ARTICULOS_CARRITO" MODIFY ("ID_ARTICULOS_CARRITO" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."ARTICULOS_CARRITO" MODIFY ("ID_CARRO" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."ARTICULOS_CARRITO" MODIFY ("ID_PRODUCTO" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."ARTICULOS_CARRITO" ADD CONSTRAINT "ARTICULOS_CARRITO_PK" PRIMARY KEY ("ID_ARTICULOS_CARRITO")
  USING INDEX "USR_FERRETERIA"."ARTICULOS_CARRITO_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PAGO
--------------------------------------------------------

  ALTER TABLE "USR_FERRETERIA"."PAGO" MODIFY ("ID_PAGO" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."PAGO" MODIFY ("ID_PEDIDO" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."PAGO" MODIFY ("ID_METODO_PAGO" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."PAGO" ADD CONSTRAINT "PAGO_PK" PRIMARY KEY ("ID_PAGO")
  USING INDEX "USR_FERRETERIA"."PAGO_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table METODO_DE_PAGO
--------------------------------------------------------

  ALTER TABLE "USR_FERRETERIA"."METODO_DE_PAGO" MODIFY ("ID_METODO_PAGO" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."METODO_DE_PAGO" MODIFY ("TIPO_DE_PAGO" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."METODO_DE_PAGO" ADD CONSTRAINT "METODO_DE_PAGO_PK" PRIMARY KEY ("ID_METODO_PAGO")
  USING INDEX "USR_FERRETERIA"."METODO_DE_PAGO_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table USUARIOS
--------------------------------------------------------

  ALTER TABLE "USR_FERRETERIA"."USUARIOS" MODIFY ("ID_USUARIO" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."USUARIOS" MODIFY ("CORREO" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."USUARIOS" MODIFY ("CONTRASE�A" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."USUARIOS" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."USUARIOS" MODIFY ("APELLIDO" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."USUARIOS" MODIFY ("DIRECCION" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."USUARIOS" MODIFY ("TELEFONO" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."USUARIOS" ADD CONSTRAINT "USUARIOS_PK" PRIMARY KEY ("ID_USUARIO")
  USING INDEX "USR_FERRETERIA"."USUARIOS_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ORDEN
--------------------------------------------------------

  ALTER TABLE "USR_FERRETERIA"."ORDEN" MODIFY ("ID_PEDIDO" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."ORDEN" MODIFY ("FECHA_PEDIDO" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."ORDEN" MODIFY ("ID_CLIENTE" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."ORDEN" ADD CONSTRAINT "ORDEN_PK" PRIMARY KEY ("ID_PEDIDO")
  USING INDEX "USR_FERRETERIA"."ORDEN_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PRODUCTOS
--------------------------------------------------------

  ALTER TABLE "USR_FERRETERIA"."PRODUCTOS" MODIFY ("ID_PRODUCTO" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."PRODUCTOS" MODIFY ("NOMBRE_PRODUCTO" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."PRODUCTOS" MODIFY ("DESCRIPCION" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."PRODUCTOS" MODIFY ("PRECIO" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."PRODUCTOS" MODIFY ("ID_CATEGORIA" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."PRODUCTOS" MODIFY ("ID_PROVEEDOR" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."PRODUCTOS" ADD CONSTRAINT "PRODUCTOS_PK" PRIMARY KEY ("ID_PRODUCTO")
  USING INDEX "USR_FERRETERIA"."PRODUCTOS_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table REVISAR
--------------------------------------------------------

  ALTER TABLE "USR_FERRETERIA"."REVISAR" MODIFY ("ID_REVISION" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."REVISAR" MODIFY ("ID_PRODUCTO" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."REVISAR" MODIFY ("ID_USUARIO" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."REVISAR" MODIFY ("CLASIFICACION" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."REVISAR" MODIFY ("COMENTARIO" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."REVISAR" ADD CONSTRAINT "REVISAR_PK" PRIMARY KEY ("ID_REVISION")
  USING INDEX "USR_FERRETERIA"."REVISAR_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CATEGORIAS
--------------------------------------------------------

  ALTER TABLE "USR_FERRETERIA"."CATEGORIAS" MODIFY ("ID_CATEGORIA" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."CATEGORIAS" MODIFY ("NOMBRE_CATEGORIA" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."CATEGORIAS" MODIFY ("DESCRIPCION" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."CATEGORIAS" ADD CONSTRAINT "CATEGORIAS_PK" PRIMARY KEY ("ID_CATEGORIA")
  USING INDEX "USR_FERRETERIA"."CATEGORIAS_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DIRECCION_DE_ENVIO
--------------------------------------------------------

  ALTER TABLE "USR_FERRETERIA"."DIRECCION_DE_ENVIO" MODIFY ("ID_DIRECCION_DE_ENVIO" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."DIRECCION_DE_ENVIO" MODIFY ("ID_USUARIO" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."DIRECCION_DE_ENVIO" MODIFY ("DIRECCION" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."DIRECCION_DE_ENVIO" MODIFY ("CIUDAD" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."DIRECCION_DE_ENVIO" MODIFY ("CODIGO_POSTAL" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."DIRECCION_DE_ENVIO" ADD CONSTRAINT "DIRECCION_DE_ENVIO_PK" PRIMARY KEY ("ID_DIRECCION_DE_ENVIO")
  USING INDEX "USR_FERRETERIA"."DIRECCION_DE_ENVIO_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DETALLES_ORDEN
--------------------------------------------------------

  ALTER TABLE "USR_FERRETERIA"."DETALLES_ORDEN" MODIFY ("ID_DETALLE_DE_PEDIDO" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."DETALLES_ORDEN" MODIFY ("ID_PEDIDO" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."DETALLES_ORDEN" MODIFY ("ID_PRODUCTO" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."DETALLES_ORDEN" MODIFY ("CANTIDAD" NOT NULL ENABLE);
  ALTER TABLE "USR_FERRETERIA"."DETALLES_ORDEN" ADD CONSTRAINT "DETALLES_ORDEN_PK" PRIMARY KEY ("ID_DETALLE_DE_PEDIDO")
  USING INDEX "USR_FERRETERIA"."DETALLES_ORDEN_PK"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ARTICULOS_CARRITO
--------------------------------------------------------

  ALTER TABLE "USR_FERRETERIA"."ARTICULOS_CARRITO" ADD CONSTRAINT "ID_PRODUCTO" FOREIGN KEY ("ID_PRODUCTO")
	  REFERENCES "USR_FERRETERIA"."PRODUCTOS" ("ID_PRODUCTO") ENABLE;
  ALTER TABLE "USR_FERRETERIA"."ARTICULOS_CARRITO" ADD CONSTRAINT "ID_CARRO" FOREIGN KEY ("ID_CARRO")
	  REFERENCES "USR_FERRETERIA"."CARRO" ("ID_CARRO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CARRO
--------------------------------------------------------

  ALTER TABLE "USR_FERRETERIA"."CARRO" ADD CONSTRAINT "ID_USUARIO" FOREIGN KEY ("ID_USUARIO")
	  REFERENCES "USR_FERRETERIA"."USUARIOS" ("ID_USUARIO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DIRECCION_DE_ENVIO
--------------------------------------------------------

  ALTER TABLE "USR_FERRETERIA"."DIRECCION_DE_ENVIO" ADD CONSTRAINT "ID_USUARIOS" FOREIGN KEY ("ID_USUARIO")
	  REFERENCES "USR_FERRETERIA"."USUARIOS" ("ID_USUARIO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ENVIO_DE_PEDIDO
--------------------------------------------------------

  ALTER TABLE "USR_FERRETERIA"."ENVIO_DE_PEDIDO" ADD CONSTRAINT "ID_DIRECCION_DE_ENVIO" FOREIGN KEY ("ID_DIRECCION_DE_ENVIO")
	  REFERENCES "USR_FERRETERIA"."DIRECCION_DE_ENVIO" ("ID_DIRECCION_DE_ENVIO") ENABLE;
  ALTER TABLE "USR_FERRETERIA"."ENVIO_DE_PEDIDO" ADD CONSTRAINT "ID_PEDIDO" FOREIGN KEY ("ID_PEDIDO")
	  REFERENCES "USR_FERRETERIA"."ORDEN" ("ID_PEDIDO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ORDEN
--------------------------------------------------------

  ALTER TABLE "USR_FERRETERIA"."ORDEN" ADD CONSTRAINT "ID_CLIENTE" FOREIGN KEY ("ID_CLIENTE")
	  REFERENCES "USR_FERRETERIA"."CLIENTES" ("ID_CLIENTES") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PAGO
--------------------------------------------------------

  ALTER TABLE "USR_FERRETERIA"."PAGO" ADD CONSTRAINT "ID_METODO_PAGO" FOREIGN KEY ("ID_METODO_PAGO")
	  REFERENCES "USR_FERRETERIA"."METODO_DE_PAGO" ("ID_METODO_PAGO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRODUCTOS
--------------------------------------------------------

  ALTER TABLE "USR_FERRETERIA"."PRODUCTOS" ADD CONSTRAINT "ID_CATEGORIA" FOREIGN KEY ("ID_CATEGORIA")
	  REFERENCES "USR_FERRETERIA"."CATEGORIAS" ("ID_CATEGORIA") ENABLE;
  ALTER TABLE "USR_FERRETERIA"."PRODUCTOS" ADD CONSTRAINT "ID_PROVEEDOR" FOREIGN KEY ("ID_PROVEEDOR")
	  REFERENCES "USR_FERRETERIA"."PROVEEDORES" ("ID_PROVEEDOR") ENABLE;
