-- Comprobación

IF OBJECT_ID ('tb_Colaborador') IS NOT NULL DROP TABLE grupo1.tb_Colaborador;
IF OBJECT_ID ('tb_Local') IS NOT NULL DROP TABLE grupo1.tb_Local;
IF OBJECT_ID ('tb_Ciudades') IS NOT NULL DROP TABLE grupo1.tb_Ciudades;
IF OBJECT_ID ('tb_Venta') IS NOT NULL DROP TABLE grupo1.tb_Venta;
IF OBJECT_ID ('tb_Venta_Detalle') IS NOT NULL DROP TABLE grupo1.tb_Venta_Detalle;
IF OBJECT_ID ('tb_Producto') IS NOT NULL DROP TABLE grupo1.tb_Producto;
IF OBJECT_ID ('tb_Cliente') IS NOT NULL DROP TABLE grupo1.tb_Cliente;


-- CREACION DE TABLAS --

create table tb_Colaborador
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

create table tb_Local
(
Local_id						int not null,
Direccion						varchar(400),
Ciudades_id						int
)
go

create table tb_Ciudades
(
Ciudades_id						int not null,
Nombre							varchar(400),
Pais							varchar(400)
)
go

create table tb_Venta
(
Venta_id						int not null,
Forma_de_Pago					varchar(400),
Fecha							varchar(400),
Cliente_id						int,
Colaborador_id					int
)
go

create table tb_Venta_Detalle
(
Venta_Detalle_id				int not null,
Monto_Total						varchar(400),
Cantidad						varchar(400),
Descuento						varchar(400),
Producto_id						int,
Venta_id                        int
)
go

create table tb_Producto
(
Producto_id						int not null,
Item							varchar(400),
Proveedor						varchar(400),
Precio							varchar(400),
Costo_Unitario					varchar(400)
)
go

create table tb_Cliente
(
Cliente_id						int not null,
Sexo							varchar(400),
DNI								varchar(400),
Nombre							varchar(400),
)
go

-- PRIMARY KEYS --

alter table tb_Colaborador
add constraint pk_tb_Colaborador primary key (Colaborador_id)

alter table tb_Local
add constraint pk_tb_Local primary key (Local_id)

alter table tb_Ciudades
add constraint pk_tb_Ciudades primary key (Ciudades_id)  

alter table tb_Venta
add constraint pk_tb_venta primary key (Venta_id)

alter table tb_Venta_Detalle
add constraint pk_tb_Venta_Detalle primary key (Venta_Detalle_id)

alter table tb_Producto
add constraint pk_tb_Producto primary key (Producto_id)

alter table tb_Cliente
add constraint pk_tb_Cliente primary key (Cliente_id)
go



-- FOREIGN KEYS --

alter table tb_Colaborador
add foreign key (Local_id) References tb_Local(Local_id)

alter table tb_Local
add foreign key (Ciudades_id) References 
tb_Ciudades(Ciudades_id)

alter table tb_Venta
add foreign key (Cliente_id) References 
tb_Cliente(Cliente_id)

alter table tb_Venta
add foreign key (Colaborador_id) References 
tb_Colaborador(Colaborador_id)

alter table tb_Venta_Detalle
add foreign key (Producto_id) References 
tb_Producto(Producto_id)

alter table tb_Venta_Detalle
add foreign key (Venta_id) References 
tb_Venta(Venta_id)

-- INSERTS -- MAESTRA 10 REGISTROS Y TRANSACCIONAL 20 A 40 REGISTROS

--Ciudad 10 entradas

insert into tb_Ciudades values('1','Lima','Perú')
insert into tb_Ciudades values('2','Arequipa','Perú')
insert into tb_Ciudades values('3','Trujillo','Perú')
insert into tb_Ciudades values('4','Piura','Perú')
insert into tb_Ciudades values('5','Chiclayo','Perú')
insert into tb_Ciudades values('6','Cajamarca','Perú')
insert into tb_Ciudades values('7','Cuzco','Perú')
insert into tb_Ciudades values('8','Huancayo','Perú')
insert into tb_Ciudades values('9','Iquitos','Perú')
insert into tb_Ciudades values('10','Moquegua','Perú')

-- Local 10 entradas
insert into tb_Local values('1','Avenida Aviación','1')
insert into tb_Local values('2','Callejón del Solar','2')
insert into tb_Local values('3','Avenida Trujillo','3')
insert into tb_Local values('4','Avenida Antonio Raimondi','4')
insert into tb_Local values('5','Avenida Francisco Bolognesi','5')
insert into tb_Local values('6','Avenida Aviación','6')
insert into tb_Local values('7','Jirón Dos de Mayo','7')
insert into tb_Local values('8','Calle Loreto','8')
insert into tb_Local values('9','Jirón Pucallpa','9')
insert into tb_Local values('10','Pasaje Miguel Grau','10')

-- Colaborador 10 entradas

insert into tb_Colaborador values ('110','Carlos','1997-01-10','Vendedor','1000','M','1')
insert into tb_Colaborador values ('220','Alejandra','1998-03-11','Vendedor','1000','F','2')
insert into tb_Colaborador values ('330','Victor','1989-02-09','Vendedor','2000','M','3')
insert into tb_Colaborador values ('440','Laura','1998-07-16','Vendedor','1000','F','4')
insert into tb_Colaborador values ('550','Violeta','1995-08-19','Vendedor','2000','F','5')
insert into tb_Colaborador values ('660','Marcos','1997-05-13','Vendedor','1000','M','6')
insert into tb_Colaborador values ('770','Susan','1999-03-18','Vendedor','1000','F','7')
insert into tb_Colaborador values ('880','Luis','1996-09-12','Vendedor','1000','M','8')
insert into tb_Colaborador values ('990','Lorena','1994-12-01','Vendedor','2000','F','9')
insert into tb_Colaborador values ('1010','Julio','1995-11-04','Vendedor','1000','M','10')

-- Venta 30 entradas

insert into tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('1','Tarjeta','2022-01-01','110')
insert into tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('2','Tarjeta','2022-01-01','220')
insert into tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('3','Tarjeta','2022-01-01','110')
insert into tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('4','Tarjeta','2022-01-02','110')
insert into tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('5','Tarjeta','2022-01-02','110')
insert into tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('6','Tarjeta','2022-01-02','110')
insert into tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('7','Tarjeta','2022-01-02','110')
insert into tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('8','Tarjeta','2022-01-03','330')
insert into tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('9','Tarjeta','2022-01-03','330')
insert into tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('10','Tarjeta','2022-01-03','330')
insert into tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('11','Tarjeta','2022-01-03','330')
insert into tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('12','Tarjeta','2022-01-03','330')
insert into tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('13','Tarjeta','2022-01-03','330')
insert into tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('14','Tarjeta','2022-01-03','330')
insert into tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('15','Tarjeta','2022-01-03','330')
insert into tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('16','Tarjeta','2022-01-03','330')
insert into tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('17','Tarjeta','2022-01-03','330')
insert into tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('18','Tarjeta','2022-01-03','330')
insert into tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('19','Tarjeta','2022-01-03','330')
insert into tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('20','Efectivo','2022-01-04','440')
insert into tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('21','Efectivo','2022-01-04','440')
insert into tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('22','Efectivo','2022-01-04','440')
insert into tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('23','Efectivo','2022-01-04','440')
insert into tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('24','Efectivo','2022-01-04','440')
insert into tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('25','Efectivo','2022-01-04','550')
insert into tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('26','Efectivo','2022-01-04','550')
insert into tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('27','Efectivo','2022-01-04','550')
insert into tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('28','Efectivo','2022-01-04','660')
insert into tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('29','Efectivo','2022-01-04','660')
insert into tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('30','Efectivo','2022-01-04','660')

-- Productos 30 entradas

insert into tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('1','Arroz_chaufa','Provedor_Charo','25','5')
insert into tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('2','Tacu_chaufa','Provedor_Charo','25','4')
insert into tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('3','Chijaukai','Provedor_Charo','30','6')
insert into tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('4','Tipakai','Provedor_Rosa','30','5')
insert into tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('5','Tallarin_Saltado','Provedor_Rosa','29','8')
insert into tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('6','Taypa','Provedor_Rosa','35','10')
insert into tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('7','Arroz_Pato','Provedor_Teresa','28','6')
insert into tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('8','Arroz_con_pollo','Provedor_Teresa','28','9')
insert into tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('9','Sopa_Wantan','Provedor_Teresa','21','8')
insert into tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('10','Alitas','Provedor_Teresa','20','4')
insert into tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('11','Sopa_Fuchifu','Provedor_Teresa','22','8')
insert into tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('12','Arroz_Blanco','Provedor_Teresa','19','1')
insert into tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('13','Sopa_Wantan_Especial','Provedor_Teresa','27','4')
insert into tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('14','Siu_Mai','Provedor_Torito','19','2')
insert into tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('15','Wantan','Provedor_Torito','17','2')
insert into tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('16','Siu_Kao','Provedor_Torito','18','3')
insert into tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('17','Enrrollado_Primavera','Provedor_Torito','17','3')
insert into tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('18','Uñas_de_Cangrejo','Provedor_Torito','22','3')
insert into tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('19','Tallarin_Especial','Provedor_Torito','30','6')
insert into tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('20','Taypa_a_la_plancha','Provedor_Torito','32','6')
insert into tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('21','Chicharron_de_pollo','Provedor_Torito','29','6')
insert into tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('22','Tallarin_de_pollo','Provedor_Juan','26','5')
insert into tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('23','Wantan_Especial','Provedor_Juan','19','2')
insert into tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('24','Combo_Familiar','Provedor_Maria_Fe','49','13')
insert into tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('25','Combo_Personal','Provedor_Maria_Fe','21','4')
insert into tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('26','Combo_para_dos','Provedor_Maria_Fe','35','7')
insert into tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('27','Combo_Bocaditos','Provedor_Maria_Fe','29','5')
insert into tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('28','Aeropuerto','Provedor_Maria_Fe','24','5')
insert into tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('29','Combinado','Provedor_Maria_Fe','26','6')
insert into tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('30','Combinado_Especial','Provedor_Maria_Fe','30','7')

-- Cliente 30 entradas

insert into tb_Cliente values ('1','F','39233996','Carla S.')
insert into tb_Cliente values ('2','M','73828155','Juan C.')
insert into tb_Cliente values ('3','F','62212691','Laura M.')
insert into tb_Cliente values ('4','M','63546369','Jose L.')
insert into tb_Cliente values ('5','F','32781534','Julia N.')
insert into tb_Cliente values ('6','M','52843378','Luis P.')
insert into tb_Cliente values ('7','F','26392354','Lucero L.')
insert into tb_Cliente values ('8','M','46882824','Aaron C.')
insert into tb_Cliente values ('9','F','27145528','Karol M.')
insert into tb_Cliente values ('10','M','45363969','Diego A.')
insert into tb_Cliente values ('11','F','79429649','Gabriela C.')
insert into tb_Cliente values ('12','M','47487952','John N.')
insert into tb_Cliente values ('13','F','68827246','Joanna V.')
insert into tb_Cliente values ('14','M','75823683','Marcelo D.')
insert into tb_Cliente values ('15','F','36739811','Gabriela P.')
insert into tb_Cliente values ('16','M','81978647','Mariano P.')
insert into tb_Cliente values ('17','F','21111258','Charlotte L.')
insert into tb_Cliente values ('18','M','13628259','Son Tung')
insert into tb_Cliente values ('19','F','72422435','Tran Ng')
insert into tb_Cliente values ('20','M','73461516','Joaquín M.')
insert into tb_Cliente values ('21','F','91891875','Prisma Ng')
insert into tb_Cliente values ('22','M','77552514','Joseph A.')
insert into tb_Cliente values ('23','F','68631514','Joan K.')
insert into tb_Cliente values ('24','M','89962614','Robert P.')
insert into tb_Cliente values ('25','F','47321181','Jinki K.')
insert into tb_Cliente values ('26','M','93612494','Nayeon K.')
insert into tb_Cliente values ('27','F','24665757','Jiyeon P.')
insert into tb_Cliente values ('28','M','38763634','Taeoh K.')
insert into tb_Cliente values ('29','F','38755647','Sooyoung K.')
insert into tb_Cliente values ('30','M','99551216','Youngwoo W.')

-- Actualización de la tabla Venta

update  tb_Venta set Cliente_id = '1' where Venta_id = '1'
update  tb_Venta set Cliente_id = '2' where Venta_id = '2'
update  tb_Venta set Cliente_id = '3' where Venta_id = '3'
update  tb_Venta set Cliente_id = '4' where Venta_id = '4'
update  tb_Venta set Cliente_id = '5' where Venta_id = '5'
update  tb_Venta set Cliente_id = '6' where Venta_id = '6'
update  tb_Venta set Cliente_id = '7' where Venta_id = '7'
update  tb_Venta set Cliente_id = '8' where Venta_id = '8'
update  tb_Venta set Cliente_id = '9' where Venta_id = '9'
update  tb_Venta set Cliente_id = '10' where Venta_id = '10'
update  tb_Venta set Cliente_id = '11' where Venta_id = '11'
update  tb_Venta set Cliente_id = '12' where Venta_id = '12'
update  tb_Venta set Cliente_id = '13' where Venta_id = '13'
update  tb_Venta set Cliente_id = '14' where Venta_id = '14'
update  tb_Venta set Cliente_id = '15' where Venta_id = '15'
update  tb_Venta set Cliente_id = '16' where Venta_id = '16'
update  tb_Venta set Cliente_id = '17' where Venta_id = '17'
update  tb_Venta set Cliente_id = '18' where Venta_id = '18'
update  tb_Venta set Cliente_id = '19' where Venta_id = '19'
update  tb_Venta set Cliente_id = '20' where Venta_id = '20'
update  tb_Venta set Cliente_id = '21' where Venta_id = '21'
update  tb_Venta set Cliente_id = '22' where Venta_id = '22'
update  tb_Venta set Cliente_id = '23' where Venta_id = '23'
update  tb_Venta set Cliente_id = '24' where Venta_id = '24'
update  tb_Venta set Cliente_id = '25' where Venta_id = '25'
update  tb_Venta set Cliente_id = '26' where Venta_id = '26'
update  tb_Venta set Cliente_id = '27' where Venta_id = '27'
update  tb_Venta set Cliente_id = '28' where Venta_id = '28'
update  tb_Venta set Cliente_id = '29' where Venta_id = '29'
update  tb_Venta set Cliente_id = '30' where Venta_id = '30'


-- Venta detalle 30 entradas

insert into tb_Venta_detalle values ('1','25','1','0','1','1')
insert into tb_Venta_detalle values ('2','25','1','0','2','2')
insert into tb_Venta_detalle values ('3','30','1','0','3','3')
insert into tb_Venta_detalle values ('4','30','1','0','4','4')
insert into tb_Venta_detalle values ('5','29','1','0','5','5')
insert into tb_Venta_detalle values ('6','35','1','0','6','6')
insert into tb_Venta_detalle values ('7','28','1','0','7','7')
insert into tb_Venta_detalle values ('8','28','1','0','8','8')
insert into tb_Venta_detalle values ('9','21','1','0','9','9')
insert into tb_Venta_detalle values ('10','20','1','0','10','10')
insert into tb_Venta_detalle values ('11','22','1','0','11','11')
insert into tb_Venta_detalle values ('12','19','1','0','12','12')
insert into tb_Venta_detalle values ('13','27','1','0','13','13')
insert into tb_Venta_detalle values ('14','19','1','0','14','14')
insert into tb_Venta_detalle values ('15','17','1','0','15','15')
insert into tb_Venta_detalle values ('16','18','1','0','16','16')
insert into tb_Venta_detalle values ('17','17','1','0','17','17')
insert into tb_Venta_detalle values ('18','22','1','0','18','18')
insert into tb_Venta_detalle values ('19','30','1','0','19','19')
insert into tb_Venta_detalle values ('20','32','1','0','20','20')
insert into tb_Venta_detalle values ('21','29','1','0','21','21')
insert into tb_Venta_detalle values ('22','26','1','0','22','22')
insert into tb_Venta_detalle values ('23','19','1','0','23','23')
insert into tb_Venta_detalle values ('24','49','1','0','24','24')
insert into tb_Venta_detalle values ('25','21','1','0','25','25')
insert into tb_Venta_detalle values ('26','35','1','0','26','26')
insert into tb_Venta_detalle values ('27','29','1','0','27','27')
insert into tb_Venta_detalle values ('28','24','1','0','28','28')
insert into tb_Venta_detalle values ('29','26','1','0','29','29')
insert into tb_Venta_detalle values ('30','30','1','0','30','30')


-- Modificando las cantidades de la tabla Venta_Detalle

UPDATE tb_Venta_Detalle SET Cantidad = '98' WHERE Venta_Detalle_id = '1'
UPDATE tb_Venta_Detalle SET Cantidad = '80' WHERE Venta_Detalle_id = '2'
UPDATE tb_Venta_Detalle SET Cantidad = '87' WHERE Venta_Detalle_id = '3'
UPDATE tb_Venta_Detalle SET Cantidad = '54' WHERE Venta_Detalle_id = '4'
UPDATE tb_Venta_Detalle SET Cantidad = '52' WHERE Venta_Detalle_id = '5'
UPDATE tb_Venta_Detalle SET Cantidad = '41' WHERE Venta_Detalle_id = '6'
UPDATE tb_Venta_Detalle SET Cantidad = '46' WHERE Venta_Detalle_id = '7'
UPDATE tb_Venta_Detalle SET Cantidad = '47' WHERE Venta_Detalle_id = '8'
UPDATE tb_Venta_Detalle SET Cantidad = '74' WHERE Venta_Detalle_id = '9'
UPDATE tb_Venta_Detalle SET Cantidad = '79' WHERE Venta_Detalle_id = '10'
UPDATE tb_Venta_Detalle SET Cantidad = '65' WHERE Venta_Detalle_id = '11'
UPDATE tb_Venta_Detalle SET Cantidad = '96' WHERE Venta_Detalle_id = '12'
UPDATE tb_Venta_Detalle SET Cantidad = '110' WHERE Venta_Detalle_id = '13'
UPDATE tb_Venta_Detalle SET Cantidad = '105' WHERE Venta_Detalle_id = '14'
UPDATE tb_Venta_Detalle SET Cantidad = '120' WHERE Venta_Detalle_id = '15'
UPDATE tb_Venta_Detalle SET Cantidad = '105' WHERE Venta_Detalle_id = '16'
UPDATE tb_Venta_Detalle SET Cantidad = '87' WHERE Venta_Detalle_id = '17'
UPDATE tb_Venta_Detalle SET Cantidad = '99' WHERE Venta_Detalle_id = '18'
UPDATE tb_Venta_Detalle SET Cantidad = '98' WHERE Venta_Detalle_id = '19'
UPDATE tb_Venta_Detalle SET Cantidad = '106' WHERE Venta_Detalle_id = '20'
UPDATE tb_Venta_Detalle SET Cantidad = '250' WHERE Venta_Detalle_id = '21'
UPDATE tb_Venta_Detalle SET Cantidad = '100' WHERE Venta_Detalle_id = '22'
UPDATE tb_Venta_Detalle SET Cantidad = '97' WHERE Venta_Detalle_id = '23'
UPDATE tb_Venta_Detalle SET Cantidad = '76' WHERE Venta_Detalle_id = '24'
UPDATE tb_Venta_Detalle SET Cantidad = '72' WHERE Venta_Detalle_id = '25'
UPDATE tb_Venta_Detalle SET Cantidad = '321' WHERE Venta_Detalle_id = '26'
UPDATE tb_Venta_Detalle SET Cantidad = '267' WHERE Venta_Detalle_id = '27'
UPDATE tb_Venta_Detalle SET Cantidad = '74' WHERE Venta_Detalle_id = '28'
UPDATE tb_Venta_Detalle SET Cantidad = '42' WHERE Venta_Detalle_id = '29'
UPDATE tb_Venta_Detalle SET Cantidad = '106' WHERE Venta_Detalle_id = '30'

-- Actualización de la Fecha de Venta --

UPDATE tb_Venta SET Fecha = '2022-01-15' WHERE Venta_id = '1'
UPDATE tb_Venta SET Fecha = '2022-01-15' WHERE Venta_id = '2'
UPDATE tb_Venta SET Fecha = '2022-01-15' WHERE Venta_id = '3'
UPDATE tb_Venta SET Fecha = '2022-01-15' WHERE Venta_id = '4'

UPDATE tb_Venta SET Fecha = '2022-02-15' WHERE Venta_id = '5'
UPDATE tb_Venta SET Fecha = '2022-02-15' WHERE Venta_id = '6'
UPDATE tb_Venta SET Fecha = '2022-02-15' WHERE Venta_id = '7'
UPDATE tb_Venta SET Fecha = '2022-02-15' WHERE Venta_id = '8'

UPDATE tb_Venta SET Fecha = '2022-03-12' WHERE Venta_id = '9'
UPDATE tb_Venta SET Fecha = '2022-03-12' WHERE Venta_id = '10'
UPDATE tb_Venta SET Fecha = '2022-03-12' WHERE Venta_id = '11'
UPDATE tb_Venta SET Fecha = '2022-03-12' WHERE Venta_id = '12'

UPDATE tb_Venta SET Fecha = '2022-04-12' WHERE Venta_id = '13'
UPDATE tb_Venta SET Fecha = '2022-04-12' WHERE Venta_id = '14'
UPDATE tb_Venta SET Fecha = '2022-04-12' WHERE Venta_id = '15'
UPDATE tb_Venta SET Fecha = '2022-04-12' WHERE Venta_id = '16'

UPDATE tb_Venta SET Fecha = '2022-05-12' WHERE Venta_id = '17'
UPDATE tb_Venta SET Fecha = '2022-05-12' WHERE Venta_id = '18'
UPDATE tb_Venta SET Fecha = '2022-05-12' WHERE Venta_id = '19'
UPDATE tb_Venta SET Fecha = '2022-05-12' WHERE Venta_id = '20'

UPDATE tb_Venta SET Fecha = '2022-06-12' WHERE Venta_id = '21'
UPDATE tb_Venta SET Fecha = '2022-06-12' WHERE Venta_id = '22'
UPDATE tb_Venta SET Fecha = '2022-06-12' WHERE Venta_id = '23'
UPDATE tb_Venta SET Fecha = '2022-06-12' WHERE Venta_id = '24'
UPDATE tb_Venta SET Fecha = '2022-06-12' WHERE Venta_id = '25'

UPDATE tb_Venta SET Fecha = '2022-07-12' WHERE Venta_id = '26'
UPDATE tb_Venta SET Fecha = '2022-07-12' WHERE Venta_id = '27'
UPDATE tb_Venta SET Fecha = '2022-07-12' WHERE Venta_id = '28'
UPDATE tb_Venta SET Fecha = '2022-07-12' WHERE Venta_id = '29'
UPDATE tb_Venta SET Fecha = '2022-07-12' WHERE Venta_id = '30'

-- Actualización de la Cantidad de productos Vendidos --

UPDATE tb_Venta_Detalle SET Cantidad = '680' WHERE Venta_Detalle_id = '1'
UPDATE tb_Venta_Detalle SET Cantidad = '700' WHERE Venta_Detalle_id = '2'
UPDATE tb_Venta_Detalle SET Cantidad = '650' WHERE Venta_Detalle_id = '3'
UPDATE tb_Venta_Detalle SET Cantidad = '750' WHERE Venta_Detalle_id = '4'
UPDATE tb_Venta_Detalle SET Cantidad = '630' WHERE Venta_Detalle_id = '5'
UPDATE tb_Venta_Detalle SET Cantidad = '690' WHERE Venta_Detalle_id = '6'
UPDATE tb_Venta_Detalle SET Cantidad = '640' WHERE Venta_Detalle_id = '7'
UPDATE tb_Venta_Detalle SET Cantidad = '730' WHERE Venta_Detalle_id = '8'
UPDATE tb_Venta_Detalle SET Cantidad = '900' WHERE Venta_Detalle_id = '9'
UPDATE tb_Venta_Detalle SET Cantidad = '830' WHERE Venta_Detalle_id = '10'
UPDATE tb_Venta_Detalle SET Cantidad = '850' WHERE Venta_Detalle_id = '11'
UPDATE tb_Venta_Detalle SET Cantidad = '815' WHERE Venta_Detalle_id = '12'
UPDATE tb_Venta_Detalle SET Cantidad = '960' WHERE Venta_Detalle_id = '13'
UPDATE tb_Venta_Detalle SET Cantidad = '980' WHERE Venta_Detalle_id = '14'
UPDATE tb_Venta_Detalle SET Cantidad = '999' WHERE Venta_Detalle_id = '15'
UPDATE tb_Venta_Detalle SET Cantidad = '1200' WHERE Venta_Detalle_id = '16'
UPDATE tb_Venta_Detalle SET Cantidad = '870' WHERE Venta_Detalle_id = '17'
UPDATE tb_Venta_Detalle SET Cantidad = '750' WHERE Venta_Detalle_id = '18'
UPDATE tb_Venta_Detalle SET Cantidad = '730' WHERE Venta_Detalle_id = '19'
UPDATE tb_Venta_Detalle SET Cantidad = '750' WHERE Venta_Detalle_id = '20'
UPDATE tb_Venta_Detalle SET Cantidad = '545' WHERE Venta_Detalle_id = '21'
UPDATE tb_Venta_Detalle SET Cantidad = '580' WHERE Venta_Detalle_id = '22'
UPDATE tb_Venta_Detalle SET Cantidad = '500' WHERE Venta_Detalle_id = '23'
UPDATE tb_Venta_Detalle SET Cantidad = '490' WHERE Venta_Detalle_id = '24'
UPDATE tb_Venta_Detalle SET Cantidad = '590' WHERE Venta_Detalle_id = '25'
UPDATE tb_Venta_Detalle SET Cantidad = '545' WHERE Venta_Detalle_id = '26'
UPDATE tb_Venta_Detalle SET Cantidad = '520' WHERE Venta_Detalle_id = '27'
UPDATE tb_Venta_Detalle SET Cantidad = '500' WHERE Venta_Detalle_id = '28'
UPDATE tb_Venta_Detalle SET Cantidad = '490' WHERE Venta_Detalle_id = '29'
UPDATE tb_Venta_Detalle SET Cantidad = '460' WHERE Venta_Detalle_id = '30'

-- Actualización de Costo de Producto --

UPDATE tb_Producto SET Costo_Unitario = '8' WHERE Producto_id = '21'
UPDATE tb_Producto SET Costo_Unitario = '7' WHERE Producto_id = '22'
UPDATE tb_Producto SET Costo_Unitario = '5' WHERE Producto_id = '23'
UPDATE tb_Producto SET Costo_Unitario = '14' WHERE Producto_id = '24'
UPDATE tb_Producto SET Costo_Unitario = '6' WHERE Producto_id = '25'

-- Actualización del monto total --

UPDATE tb_Venta_Detalle set tb_Venta_Detalle.Monto_Total = tb_Venta_Detalle.Cantidad * tb_Producto.Precio

from tb_Venta_Detalle

inner join tb_Producto

on tb_Venta_Detalle.Producto_id = tb_Producto.Producto_id

-- Producto a numero --

ALTER TABLE tb_Producto ALTER COLUMN Precio INT