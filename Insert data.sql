-- INSERTS -- MAESTRA 10 REGISTROS Y TRANSACCIONAL 20 A 40 REGISTROS

--Ciudad 10 entradas

insert into grupo1.tb_Ciudades values('1','Lima','Perú')
insert into grupo1.tb_Ciudades values('2','Arequipa','Perú')
insert into grupo1.tb_Ciudades values('3','Trujillo','Perú')
insert into grupo1.tb_Ciudades values('4','Piura','Perú')
insert into grupo1.tb_Ciudades values('5','Chiclayo','Perú')
insert into grupo1.tb_Ciudades values('6','Cajamarca','Perú')
insert into grupo1.tb_Ciudades values('7','Cuzco','Perú')
insert into grupo1.tb_Ciudades values('8','Huancayo','Perú')
insert into grupo1.tb_Ciudades values('9','Iquitos','Perú')
insert into grupo1.tb_Ciudades values('10','Moquegua','Perú')

-- Local 10 entradas
insert into grupo1.tb_Local values('1','Avenida Aviación','1')
insert into grupo1.tb_Local values('2','Callejón del Solar','2')
insert into grupo1.tb_Local values('3','Avenida Trujillo','3')
insert into grupo1.tb_Local values('4','Avenida Antonio Raimondi','4')
insert into grupo1.tb_Local values('5','Avenida Francisco Bolognesi','5')
insert into grupo1.tb_Local values('6','Avenida Aviación','6')
insert into grupo1.tb_Local values('7','Jirón Dos de Mayo','7')
insert into grupo1.tb_Local values('8','Calle Loreto','8')
insert into grupo1.tb_Local values('9','Jirón Pucallpa','9')
insert into grupo1.tb_Local values('10','Pasaje Miguel Grau','10')

-- Colaborador 10 entradas

insert into grupo1.tb_Colaborador values ('110','Carlos','1997-01-10','Vendedor','1000','M','1')
insert into grupo1.tb_Colaborador values ('220','Alejandra','1998-03-11','Vendedor','1000','F','2')
insert into grupo1.tb_Colaborador values ('330','Victor','1989-02-09','Vendedor','2000','M','3')
insert into grupo1.tb_Colaborador values ('440','Laura','1998-07-16','Vendedor','1000','F','4')
insert into grupo1.tb_Colaborador values ('550','Violeta','1995-08-19','Vendedor','2000','F','5')
insert into grupo1.tb_Colaborador values ('660','Marcos','1997-05-13','Vendedor','1000','M','6')
insert into grupo1.tb_Colaborador values ('770','Susan','1999-03-18','Vendedor','1000','F','7')
insert into grupo1.tb_Colaborador values ('880','Luis','1996-09-12','Vendedor','1000','M','8')
insert into grupo1.tb_Colaborador values ('990','Lorena','1994-12-01','Vendedor','2000','F','9')
insert into grupo1.tb_Colaborador values ('1010','Julio','1995-11-04','Vendedor','1000','M','10')

-- Venta 30 entradas

insert into grupo1.tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('1','Tarjeta','2022-01-01','110')
insert into grupo1.tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('2','Tarjeta','2022-01-01','220')
insert into grupo1.tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('3','Tarjeta','2022-01-01','110')
insert into grupo1.tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('4','Tarjeta','2022-01-02','110')
insert into grupo1.tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('5','Tarjeta','2022-01-02','110')
insert into grupo1.tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('6','Tarjeta','2022-01-02','110')
insert into grupo1.tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('7','Tarjeta','2022-01-02','110')
insert into grupo1.tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('8','Tarjeta','2022-01-03','330')
insert into grupo1.tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('9','Tarjeta','2022-01-03','330')
insert into grupo1.tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('10','Tarjeta','2022-01-03','330')
insert into grupo1.tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('11','Tarjeta','2022-01-03','330')
insert into grupo1.tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('12','Tarjeta','2022-01-03','330')
insert into grupo1.tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('13','Tarjeta','2022-01-03','330')
insert into grupo1.tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('14','Tarjeta','2022-01-03','330')
insert into grupo1.tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('15','Tarjeta','2022-01-03','330')
insert into grupo1.tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('16','Tarjeta','2022-01-03','330')
insert into grupo1.tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('17','Tarjeta','2022-01-03','330')
insert into grupo1.tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('18','Tarjeta','2022-01-03','330')
insert into grupo1.tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('19','Tarjeta','2022-01-03','330')
insert into grupo1.tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('20','Efectivo','2022-01-04','440')
insert into grupo1.tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('21','Efectivo','2022-01-04','440')
insert into grupo1.tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('22','Efectivo','2022-01-04','440')
insert into grupo1.tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('23','Efectivo','2022-01-04','440')
insert into grupo1.tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('24','Efectivo','2022-01-04','440')
insert into grupo1.tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('25','Efectivo','2022-01-04','550')
insert into grupo1.tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('26','Efectivo','2022-01-04','550')
insert into grupo1.tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('27','Efectivo','2022-01-04','550')
insert into grupo1.tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('28','Efectivo','2022-01-04','660')
insert into grupo1.tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('29','Efectivo','2022-01-04','660')
insert into grupo1.tb_Venta (Venta_id, Forma_de_pago, Fecha, Colaborador_id) values ('30','Efectivo','2022-01-04','660')

-- Productos 30 entradas

insert into grupo1.tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('1','Arroz_chaufa','Provedor_Charo','25','5')
insert into grupo1.tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('2','Tacu_chaufa','Provedor_Charo','25','4')
insert into grupo1.tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('3','Chijaukai','Provedor_Charo','30','6')
insert into grupo1.tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('4','Tipakai','Provedor_Rosa','30','5')
insert into grupo1.tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('5','Tallarin_Saltado','Provedor_Rosa','29','8')
insert into grupo1.tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('6','Taypa','Provedor_Rosa','35','10')
insert into grupo1.tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('7','Arroz_Pato','Provedor_Teresa','28','6')
insert into grupo1.tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('8','Arroz_con_pollo','Provedor_Teresa','28','9')
insert into grupo1.tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('9','Sopa_Wantan','Provedor_Teresa','21','8')
insert into grupo1.tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('10','Alitas','Provedor_Teresa','20','4')
insert into grupo1.tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('11','Sopa_Fuchifu','Provedor_Teresa','22','8')
insert into grupo1.tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('12','Arroz_Blanco','Provedor_Teresa','19','1')
insert into grupo1.tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('13','Sopa_Wantan_Especial','Provedor_Teresa','27','4')
insert into grupo1.tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('14','Siu_Mai','Provedor_Torito','19','2')
insert into grupo1.tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('15','Wantan','Provedor_Torito','17','2')
insert into grupo1.tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('16','Siu_Kao','Provedor_Torito','18','3')
insert into grupo1.tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('17','Enrrollado_Primavera','Provedor_Torito','17','3')
insert into grupo1.tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('18','Uñas_de_Cangrejo','Provedor_Torito','22','3')
insert into grupo1.tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('19','Tallarin_Especial','Provedor_Torito','30','6')
insert into grupo1.tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('20','Taypa_a_la_plancha','Provedor_Torito','32','6')
insert into grupo1.tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('21','Chicharron_de_pollo','Provedor_Torito','29','6')
insert into grupo1.tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('22','Tallarin_de_pollo','Provedor_Juan','26','5')
insert into grupo1.tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('23','Wantan_Especial','Provedor_Juan','19','2')
insert into grupo1.tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('24','Combo_Familiar','Provedor_Maria_Fe','49','13')
insert into grupo1.tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('25','Combo_Personal','Provedor_Maria_Fe','21','4')
insert into grupo1.tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('26','Combo_para_dos','Provedor_Maria_Fe','35','7')
insert into grupo1.tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('27','Combo_Bocaditos','Provedor_Maria_Fe','29','5')
insert into grupo1.tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('28','Aeropuerto','Provedor_Maria_Fe','24','5')
insert into grupo1.tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('29','Combinado','Provedor_Maria_Fe','26','6')
insert into grupo1.tb_Producto (Producto_id, Item, Proveedor, Precio, Costo_unitario) values ('30','Combinado_Especial','Provedor_Maria_Fe','30','7')

select * from grupo1.tb_Cliente

insert into grupo1.tb_Cliente values ('1','F','39233996','Carla S.','1')
insert into grupo1.tb_Cliente values ('2','M','73828155','Juan C.','2')
insert into grupo1.tb_Cliente values ('3','F','62212691','Laura M.','3')
insert into grupo1.tb_Cliente values ('4','M','63546369','Jose L.','4')
insert into grupo1.tb_Cliente values ('5','F','32781534','Julia N.','5')
insert into grupo1.tb_Cliente values ('6','M','52843378','Luis P.','6')
insert into grupo1.tb_Cliente values ('7','F','26392354','Lucero L.','7')
insert into grupo1.tb_Cliente values ('8','M','46882824','Aaron C.','8')
insert into grupo1.tb_Cliente values ('9','F','27145528','Karol M.','9')
insert into grupo1.tb_Cliente values ('10','M','45363969','Diego A.','10')
insert into grupo1.tb_Cliente values ('11','F','79429649','Gabriela C.','11')
insert into grupo1.tb_Cliente values ('12','M','47487952','John N.','12')
insert into grupo1.tb_Cliente values ('13','F','68827246','Joanna V.','13')
insert into grupo1.tb_Cliente values ('14','M','75823683','Marcelo D.','14')
insert into grupo1.tb_Cliente values ('15','F','36739811','Gabriela P.','15')
insert into grupo1.tb_Cliente values ('16','M','81978647','Mariano P.','16')
insert into grupo1.tb_Cliente values ('17','F','21111258','Charlotte L.','17')
insert into grupo1.tb_Cliente values ('18','M','13628259','Son Tung','18')
insert into grupo1.tb_Cliente values ('19','F','72422435','Tran Ng','19')
insert into grupo1.tb_Cliente values ('20','M','73461516','Joaquín M.','20')
insert into grupo1.tb_Cliente values ('21','F','91891875','Prisma Ng','21')
insert into grupo1.tb_Cliente values ('22','M','77552514','Joseph A.','22')
insert into grupo1.tb_Cliente values ('23','F','68631514','Joan K.','23')
insert into grupo1.tb_Cliente values ('24','M','89962614','Robert P.','24')
insert into grupo1.tb_Cliente values ('25','F','47321181','Jinki K.','25')
insert into grupo1.tb_Cliente values ('26','M','93612494','Nayeon K.','26')
insert into grupo1.tb_Cliente values ('27','F','24665757','Jiyeon P.','27')
insert into grupo1.tb_Cliente values ('28','M','38763634','Taeoh K.','28')
insert into grupo1.tb_Cliente values ('29','F','38755647','Sooyoung K.','29')
insert into grupo1.tb_Cliente values ('30','M','99551216','Youngwoo W.','30')

-- Actualización de la tabla Venta

update  grupo1.tb_Venta set Cliente_id = '1' where Venta_id = '1'
update  grupo1.tb_Venta set Cliente_id = '2' where Venta_id = '2'
update  grupo1.tb_Venta set Cliente_id = '3' where Venta_id = '3'
update  grupo1.tb_Venta set Cliente_id = '4' where Venta_id = '4'
update  grupo1.tb_Venta set Cliente_id = '5' where Venta_id = '5'
update  grupo1.tb_Venta set Cliente_id = '6' where Venta_id = '6'
update  grupo1.tb_Venta set Cliente_id = '7' where Venta_id = '7'
update  grupo1.tb_Venta set Cliente_id = '8' where Venta_id = '8'
update  grupo1.tb_Venta set Cliente_id = '9' where Venta_id = '9'
update  grupo1.tb_Venta set Cliente_id = '10' where Venta_id = '10'
update  grupo1.tb_Venta set Cliente_id = '11' where Venta_id = '11'
update  grupo1.tb_Venta set Cliente_id = '12' where Venta_id = '12'
update  grupo1.tb_Venta set Cliente_id = '13' where Venta_id = '13'
update  grupo1.tb_Venta set Cliente_id = '14' where Venta_id = '14'
update  grupo1.tb_Venta set Cliente_id = '15' where Venta_id = '15'
update  grupo1.tb_Venta set Cliente_id = '16' where Venta_id = '16'
update  grupo1.tb_Venta set Cliente_id = '17' where Venta_id = '17'
update  grupo1.tb_Venta set Cliente_id = '18' where Venta_id = '18'
update  grupo1.tb_Venta set Cliente_id = '19' where Venta_id = '19'
update  grupo1.tb_Venta set Cliente_id = '20' where Venta_id = '20'
update  grupo1.tb_Venta set Cliente_id = '21' where Venta_id = '21'
update  grupo1.tb_Venta set Cliente_id = '22' where Venta_id = '22'
update  grupo1.tb_Venta set Cliente_id = '23' where Venta_id = '23'
update  grupo1.tb_Venta set Cliente_id = '24' where Venta_id = '24'
update  grupo1.tb_Venta set Cliente_id = '25' where Venta_id = '25'
update  grupo1.tb_Venta set Cliente_id = '26' where Venta_id = '26'
update  grupo1.tb_Venta set Cliente_id = '27' where Venta_id = '27'
update  grupo1.tb_Venta set Cliente_id = '28' where Venta_id = '28'
update  grupo1.tb_Venta set Cliente_id = '29' where Venta_id = '29'
update  grupo1.tb_Venta set Cliente_id = '30' where Venta_id = '30'

-- Venta detalle 30 entradas

insert into grupo1.tb_Venta_detalle values ('1','25','1','0','1')
insert into grupo1.tb_Venta_detalle values ('2','25','1','0','2')
insert into grupo1.tb_Venta_detalle values ('3','30','1','0','3')
insert into grupo1.tb_Venta_detalle values ('4','30','1','0','4')
insert into grupo1.tb_Venta_detalle values ('5','29','1','0','5')
insert into grupo1.tb_Venta_detalle values ('6','35','1','0','6')
insert into grupo1.tb_Venta_detalle values ('7','28','1','0','7')
insert into grupo1.tb_Venta_detalle values ('8','28','1','0','8')
insert into grupo1.tb_Venta_detalle values ('9','21','1','0','9')
insert into grupo1.tb_Venta_detalle values ('10','20','1','0','10')
insert into grupo1.tb_Venta_detalle values ('11','22','1','0','11')
insert into grupo1.tb_Venta_detalle values ('12','19','1','0','12')
insert into grupo1.tb_Venta_detalle values ('13','27','1','0','13')
insert into grupo1.tb_Venta_detalle values ('14','19','1','0','14')
insert into grupo1.tb_Venta_detalle values ('15','17','1','0','15')
insert into grupo1.tb_Venta_detalle values ('16','18','1','0','16')
insert into grupo1.tb_Venta_detalle values ('17','17','1','0','17')
insert into grupo1.tb_Venta_detalle values ('18','22','1','0','18')
insert into grupo1.tb_Venta_detalle values ('19','30','1','0','19')
insert into grupo1.tb_Venta_detalle values ('20','32','1','0','20')
insert into grupo1.tb_Venta_detalle values ('21','29','1','0','21')
insert into grupo1.tb_Venta_detalle values ('22','26','1','0','22')
insert into grupo1.tb_Venta_detalle values ('23','19','1','0','23')
insert into grupo1.tb_Venta_detalle values ('24','49','1','0','24')
insert into grupo1.tb_Venta_detalle values ('25','21','1','0','25')
insert into grupo1.tb_Venta_detalle values ('26','35','1','0','26')
insert into grupo1.tb_Venta_detalle values ('27','29','1','0','27')
insert into grupo1.tb_Venta_detalle values ('28','24','1','0','28')
insert into grupo1.tb_Venta_detalle values ('29','26','1','0','29')
insert into grupo1.tb_Venta_detalle values ('30','30','1','0','30')
