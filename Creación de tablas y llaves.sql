-- Comprobación

IF OBJECT_ID ('grupo1.tb_Colaborador') IS NOT NULL DROP TABLE grupo1.tb_Colaborador;
IF OBJECT_ID ('grupo1.tb_Local') IS NOT NULL DROP TABLE grupo1.tb_Local;
IF OBJECT_ID ('grupo1.tb_Ciudades') IS NOT NULL DROP TABLE grupo1.tb_Ciudades;
IF OBJECT_ID ('grupo1.tb_Venta') IS NOT NULL DROP TABLE grupo1.tb_Venta;
IF OBJECT_ID ('grupo1.tb_Venta_Detalle') IS NOT NULL DROP TABLE grupo1.tb_Venta_Detalle;
IF OBJECT_ID ('grupo1.tb_Producto') IS NOT NULL DROP TABLE grupo1.tb_Producto;
IF OBJECT_ID ('grupo1.tb_Cliente') IS NOT NULL DROP TABLE grupo1.tb_Cliente;

-- CREACION DE TABLAS --

create table grupo1.tb_Colaborador
(
Colaborador_id					int not null,
Nombre							varchar(400),
Fecha_de_nacimiento				varchar(400),
Cargo							varchar(400),
Salario 						int,
Sexo 							varchar(400),
Local_id						int
)
go

create table grupo1.tb_Local
(
Local_id						int not null,
Direccion						varchar(400),
Ciudades_id						int
)
go

create table grupo1.tb_Ciudades
(
Ciudades_id						int not null,
Nombre							varchar(400),
Pais							varchar(400)
)
go

create table grupo1.tb_Venta
(
Venta_id						int not null,
Forma_de_Pago					varchar(400),
Fecha							varchar(400),
Cliente_id						varchar(400),
Colaborador_id					int
)
go

create table grupo1.tb_Venta_Detalle
(
Venta_Detalle_id				int not null,
Monto_Total						varchar(400),
Cantidad						varchar(400),
Descuento						varchar(400),
Producto_id						int
)
go

create table grupo1.tb_Producto
(
Producto_id						int not null,
Item							varchar(400),
Proveedor						varchar(400),
Precio							varchar(400),
Costo_Unitario					varchar(400)
)
go

create table grupo1.tb_Cliente
(
Cliente_id						int not null,
Sexo							varchar(400),
DNI								varchar(400),
Nombre							varchar(400),
Venta_id						int
)
go

-- PRIMARY KEYS --

alter table grupo1.tb_Colaborador
add constraint pk_grupo1_tb_Colaborador primary key (Colaborador_id)

alter table grupo1.tb_Local
add constraint pk_grupo1_tb_Local primary key (Local_id)

alter table grupo1.tb_Ciudades
add constraint pk_grupo1_tb_Ciudades primary key (Ciudades_id)  

alter table grupo1.tb_Venta
add constraint pk_grupo1_tb_venta primary key (Venta_id)

alter table grupo1.tb_Venta_Detalle
add constraint pk_grupo1_tb_Venta_Detalle primary key (Venta_Detalle_id)

alter table grupo1.tb_Producto
add constraint pk_grupo1_tb_Producto primary key (Producto_id)

alter table grupo1.tb_Cliente
add constraint pk_grupo1_tb_Cliente primary key (Cliente_id)
go



-- FOREIGN KEYS --

alter table grupo1.tb_Colaborador
add foreign key (Local_id) References 
grupo1.tb_Local(Local_id)

alter table grupo1.tb_Local
add foreign key (Ciudades_id) References 
grupo1.tb_Ciudades(Ciudades_id)

alter table grupo1.tb_Venta
add foreign key (Cliente_id) References 
grupo1.tb_Cliente(Cliente_id)

alter table grupo1.tb_Venta
add foreign key (Colaborador_id) References 
grupo1.tb_Colaborador(Colaborador_id)

alter table grupo1.tb_Venta_Detalle
add foreign key (Producto_id) References 
grupo1.tb_Producto(Producto_id)

alter table grupo1.tb_Cliente
add foreign key (Venta_id) References 
grupo1.tb_Venta(Venta_id)