DROP DATABASE if exists tienda_en_linea ;

CREATE DATABASE tienda_en_linea;
 
USE tienda_en_linea;

/*Tablas*/
 
CREATE TABLE Clientes(
id_cliente INT PRIMARY KEY auto_increment,
nombre_cliente VARCHAR (100)NOT NULL,
apellido_cliente VARCHAR (100)NOT NULL,
dui_cliente VARCHAR (15)NOT NULL,
correo_cliente VARCHAR (150)NOT NULL,
telefono_cliente VARCHAR (150)NOT NULL,
nacimiento_cliente date NOT NULL,
direccion_cliente VARCHAR (170)NOT NULL,
contraseña_cliente VARCHAR (170)NOT NULL,
fecha_cliente DATE NOT NULL
);
 
 
CREATE TABLE pedidos(
id_pedido INT PRIMARY KEY auto_increment,
id_cliente INT NOT NULL,
CONSTRAINT fk_cliente_pedido
FOREIGN KEY (id_cliente)
REFERENCES clientes(id_cliente),
estado_pedidos VARCHAR (250) NOT NULL,
fecha_registro DATE NOT NULL,
direccion_pedidos VARCHAR (500) NOT NULL
);
 
 CREATE TABLE Administrador (
  id_Administrador INT PRIMARY KEY auto_increment,
  Nombre_Administrador VARCHAR(100) NOT NULL,
  Apellido_Administrador VARCHAR(100) NOT NULL,
  Correo_Administrador VARCHAR(100) NOT NULL,
  Contrasenia_Administrador VARCHAR(100) NOT NULL,
  Fecha_Registro DATE NOT NULL
);

 
 CREATE TABLE piezas (
  id_productos INT PRIMARY KEY auto_increment,
  Id_categoria INT,
  nombre_productos VARCHAR(200) NOT NULL,
  descripcion_productos VARCHAR(300) NOT NULL,
  precio_productos NUMERIC(5,2) NOT NULL,
  imagen_productos VARCHAR(200) NOT NULL,
  id_administrador INT NOT NULL,
  CONSTRAINT fk_administrador_producto
  FOREIGN KEY (id_Administrador)
  REFERENCES Administrador(id_Administrador),
  existencias_producto INT NOT NULL,
  fecha_registro DATE NOT NULL,
  año1 VARCHAR(50) NOT NULL,
  año2 VARCHAR(50) NOT NULL
);

CREATE TABLE detalle_pedidos(
id_pedido INT PRIMARY KEY auto_increment,
id_productos INT NOT NULL,
CONSTRAINT fk_detalles_producto_pedido
FOREIGN KEY (id_productos)
REFERENCES piensas(id_productos),
cantidad_productos INT NOT NULL,
precio_productos NUMERIC(5,2)NOT NULL 
);


CREATE TABLE Vehiculos(
id_Vehiculos INT PRIMARY KEY auto_increment,
Nombres_Vehiculos VARCHAR (100) NOT NULL,
Descripcion_Vehiculos VARCHAR (300) NOT NULL,
Imagen_Vehiculos VARCHAR(300) NOT NULL
);



CREATE TABLE Modelo(
id_Modelo INT PRIMARY KEY auto_increment,
Nombre_Modelo VARCHAR (100) NOT NULL,
Descripcion_Modelo VARCHAR (300) NOT NULL,
Año_Modelo VARCHAR (30)NOT NULL
);


CREATE TABLE Marca (
  id_Marca INT PRIMARY KEY auto_increment,
  id_Modelo INT,
  CONSTRAINT fk_modelo_marca
  FOREIGN KEY (id_Modelo)
  REFERENCES Modelo(id_Modelo),
  Nombre_Marca VARCHAR(100) NOT NULL,
  Descripcion_Marca VARCHAR(300) NOT NULL
);


insert into clientes (nombre_cliente, apellido_cliente, dui_cliente, correo_cliente, telefono_cliente, nacimiento_cliente, direccion_cliente, contraseña_cliente, fecha_cliente)
values("Ernesto","Carranza", "01202121-1","a@gmail.com","1212-1211",'2023-02-21',"6ta. Calle Poniente # 310 y 5ta Ave. Norte, local 7, Centro Comercial Plaza San Francisco, San Miguel", "vaticano123",CURDATE());
insert into clientes (nombre_cliente, apellido_cliente, dui_cliente, correo_cliente, telefono_cliente, nacimiento_cliente, direccion_cliente, contraseña_cliente, fecha_cliente)
values("German","Jorge", "03202121-1","a@gmail.com","1312-1211",'2006-04-21',"6ta. Calle preocupante # 310 y 5ta Ave. Norte, local 7, Centro Comercial Plaza San Francisco, San Miguel", "vaticano46",CURDATE());
insert into clientes (nombre_cliente, apellido_cliente, dui_cliente, correo_cliente, telefono_cliente, nacimiento_cliente, direccion_cliente, contraseña_cliente, fecha_cliente)
values("Jorge","German", "01222121-1","a@gmail.com","1222-1211",'2007-01-21',"6ta. Calle occidente # 310 y 5ta Ave. Norte, local 7, Centro Comercial Plaza San Francisco, San Miguel", "vaticano789",CURDATE());
insert into clientes (nombre_cliente, apellido_cliente, dui_cliente, correo_cliente, telefono_cliente, nacimiento_cliente, direccion_cliente, contraseña_cliente, fecha_cliente)
values("Pani","Carranza", "01202121-1","a@gmail.com","1212-1211",'2008-02-21',"6ta. Calle azul # 310 y 5ta Ave. Norte, local 7, Centro Comercial Plaza San Francisco, San Miguel", "vaticano83",CURDATE());
insert into clientes (nombre_cliente, apellido_cliente, dui_cliente, correo_cliente, telefono_cliente, nacimiento_cliente, direccion_cliente, contraseña_cliente, fecha_cliente)
values("Ernesto","Carranza", "01202121-1","a@gmail.com","1212-1211",'2007 -02-1',"6ta. Calle Poniente # 310 y 5ta Ave. Norte, local 7, Centro Comercial Plaza San Francisco, San vicente", "Carita",CURDATE());
insert into clientes (nombre_cliente, apellido_cliente, dui_cliente, correo_cliente, telefono_cliente, nacimiento_cliente, direccion_cliente, contraseña_cliente, fecha_cliente)
values("Ernesto","Carranza", "01202121-1","a@gmail.com","1212-1211",'2023-02-21',"6ta. Calle Poniente # 310 y 5ta Ave. Norte, local 7, Centro Comercial Plaza San Francisco, San Miguel", "vaticano123",CURDATE());
insert into clientes (nombre_cliente, apellido_cliente, dui_cliente, correo_cliente, telefono_cliente, nacimiento_cliente, direccion_cliente, contraseña_cliente, fecha_cliente)
values("Ernesto","Carranza", "01202121-1","a@gmail.com","1212-1211",'2023-02-21',"6ta. Calle Poniente # 310 y 5ta Ave. Norte, local 7, Centro Comercial Plaza San Francisco, San Miguel", "vaticano123",CURDATE());
insert into clientes (nombre_cliente, apellido_cliente, dui_cliente, correo_cliente, telefono_cliente, nacimiento_cliente, direccion_cliente, contraseña_cliente, fecha_cliente)
values("Ernesto","Carranza", "01202121-1","a@gmail.com","1212-1211",'2023-02-21',"6ta. Calle Poniente # 310 y 5ta Ave. Norte, local 7, Centro Comercial Plaza San Francisco, San Miguel", "vaticano123",CURDATE());
insert into clientes (nombre_cliente, apellido_cliente, dui_cliente, correo_cliente, telefono_cliente, nacimiento_cliente, direccion_cliente, contraseña_cliente, fecha_cliente)
values("Ernesto","Carranza", "01202121-1","a@gmail.com","1212-1211",'2023-02-21',"6ta. Calle Poniente # 310 y 5ta Ave. Norte, local 7, Centro Comercial Plaza San Francisco, San Miguel", "vaticano123",CURDATE());
insert into clientes (nombre_cliente, apellido_cliente, dui_cliente, correo_cliente, telefono_cliente, nacimiento_cliente, direccion_cliente, contraseña_cliente, fecha_cliente)
values("Ernesto","Carranza", "01202121-1","a@gmail.com","1212-1211",'2023-02-21',"6ta. Calle Poniente # 310 y 5ta Ave. Norte, local 7, Centro Comercial Plaza San Francisco, San Miguel", "vaticano123",CURDATE());
insert into clientes (nombre_cliente, apellido_cliente, dui_cliente, correo_cliente, telefono_cliente, nacimiento_cliente, direccion_cliente, contraseña_cliente, fecha_cliente)
values("Ernesto","Carranza", "01202121-1","a@gmail.com","1212-1211",'2023-02-21',"6ta. Calle Poniente # 310 y 5ta Ave. Norte, local 7, Centro Comercial Plaza San Francisco, San Miguel", "vaticano123",CURDATE());
insert into clientes (nombre_cliente, apellido_cliente, dui_cliente, correo_cliente, telefono_cliente, nacimiento_cliente, direccion_cliente, contraseña_cliente, fecha_cliente)
values("Ernesto","Carranza", "01202121-1","a@gmail.com","1212-1211",'2023-02-21',"6ta. Calle Poniente # 310 y 5ta Ave. Norte, local 7, Centro Comercial Plaza San Francisco, San Miguel", "vaticano123",CURDATE());
insert into clientes (nombre_cliente, apellido_cliente, dui_cliente, correo_cliente, telefono_cliente, nacimiento_cliente, direccion_cliente, contraseña_cliente, fecha_cliente)
values("Ernesto","Carranza", "01202121-1","a@gmail.com","1212-1211",'2023-02-21',"6ta. Calle Poniente # 310 y 5ta Ave. Norte, local 7, Centro Comercial Plaza San Francisco, San Miguel", "vaticano123",CURDATE());
insert into clientes (nombre_cliente, apellido_cliente, dui_cliente, correo_cliente, telefono_cliente, nacimiento_cliente, direccion_cliente, contraseña_cliente, fecha_cliente)
values("Ernesto","Carranza", "01202121-1","a@gmail.com","1212-1211",'2023-02-21',"6ta. Calle Poniente # 310 y 5ta Ave. Norte, local 7, Centro Comercial Plaza San Francisco, San Miguel", "vaticano123",CURDATE());
insert into clientes (nombre_cliente, apellido_cliente, dui_cliente, correo_cliente, telefono_cliente, nacimiento_cliente, direccion_cliente, contraseña_cliente, fecha_cliente)
values("Ernesto","Carranza", "01202121-1","a@gmail.com","1212-1211",'2023-02-21',"6ta. Calle Poniente # 310 y 5ta Ave. Norte, local 7, Centro Comercial Plaza San Francisco, San Miguel", "vaticano123",CURDATE());
insert into clientes (nombre_cliente, apellido_cliente, dui_cliente, correo_cliente, telefono_cliente, nacimiento_cliente, direccion_cliente, contraseña_cliente, fecha_cliente)
values("Ernesto","Carranza", "01202121-1","a@gmail.com","1212-1211",'2023-02-21',"6ta. Calle Poniente # 310 y 5ta Ave. Norte, local 7, Centro Comercial Plaza San Francisco, San Miguel", "vaticano123",CURDATE());
insert into clientes (nombre_cliente, apellido_cliente, dui_cliente, correo_cliente, telefono_cliente, nacimiento_cliente, direccion_cliente, contraseña_cliente, fecha_cliente)
values("Ernesto","Carranza", "01202121-1","a@gmail.com","1212-1211",'2023-02-21',"6ta. Calle Poniente # 310 y 5ta Ave. Norte, local 7, Centro Comercial Plaza San Francisco, San Miguel", "vaticano123",CURDATE());
insert into clientes (nombre_cliente, apellido_cliente, dui_cliente, correo_cliente, telefono_cliente, nacimiento_cliente, direccion_cliente, contraseña_cliente, fecha_cliente)
values("Ernesto","Carranza", "01202121-1","a@gmail.com","1212-1211",'2023-02-21',"6ta. Calle Poniente # 310 y 5ta Ave. Norte, local 7, Centro Comercial Plaza San Francisco, San Miguel", "vaticano123",CURDATE());
insert into clientes (nombre_cliente, apellido_cliente, dui_cliente, correo_cliente, telefono_cliente, nacimiento_cliente, direccion_cliente, contraseña_cliente, fecha_cliente)
values("Ernesto","Carranza", "01202121-1","a@gmail.com","1212-1211",'2023-02-21',"6ta. Calle Poniente # 310 y 5ta Ave. Norte, local 7, Centro Comercial Plaza San Francisco, San Miguel", "vaticano123",CURDATE());
insert into clientes (nombre_cliente, apellido_cliente, dui_cliente, correo_cliente, telefono_cliente, nacimiento_cliente, direccion_cliente, contraseña_cliente, fecha_cliente)
values("Ernesto","Carranza", "01202121-1","a@gmail.com","1212-1211",'2023-02-21',"6ta. Calle Poniente # 310 y 5ta Ave. Norte, local 7, Centro Comercial Plaza San Francisco, San Miguel", "vaticano123",CURDATE());
insert into clientes (nombre_cliente, apellido_cliente, dui_cliente, correo_cliente, telefono_cliente, nacimiento_cliente, direccion_cliente, contraseña_cliente, fecha_cliente)
values("Ernesto","Carranza", "01202121-1","a@gmail.com","1212-1211",'2023-02-21',"6ta. Calle Poniente # 310 y 5ta Ave. Norte, local 7, Centro Comercial Plaza San Francisco, San Miguel", "vaticano123",CURDATE());
insert into clientes (nombre_cliente, apellido_cliente, dui_cliente, correo_cliente, telefono_cliente, nacimiento_cliente, direccion_cliente, contraseña_cliente, fecha_cliente)
values("Ernesto","Carranza", "01202121-1","a@gmail.com","1212-1211",'2023-02-21',"6ta. Calle Poniente # 310 y 5ta Ave. Norte, local 7, Centro Comercial Plaza San Francisco, San Miguel", "vaticano123",CURDATE());
insert into clientes (nombre_cliente, apellido_cliente, dui_cliente, correo_cliente, telefono_cliente, nacimiento_cliente, direccion_cliente, contraseña_cliente, fecha_cliente)
values("Ernesto","Carranza", "01202121-1","a@gmail.com","1212-1211",'2023-02-21',"6ta. Calle Poniente # 310 y 5ta Ave. Norte, local 7, Centro Comercial Plaza San Francisco, San Miguel", "vaticano123",CURDATE());
insert into clientes (nombre_cliente, apellido_cliente, dui_cliente, correo_cliente, telefono_cliente, nacimiento_cliente, direccion_cliente, contraseña_cliente, fecha_cliente)
values("Ernesto","Carranza", "01202121-1","a@gmail.com","1212-1211",'2023-02-21',"6ta. Calle Poniente # 310 y 5ta Ave. Norte, local 7, Centro Comercial Plaza San Francisco, San Miguel", "vaticano123",CURDATE());
insert into clientes (nombre_cliente, apellido_cliente, dui_cliente, correo_cliente, telefono_cliente, nacimiento_cliente, direccion_cliente, contraseña_cliente, fecha_cliente)
values("Ernesto","Carranza", "01202121-1","a@gmail.com","1212-1211",'2023-02-21',"6ta. Calle Poniente # 310 y 5ta Ave. Norte, local 7, Centro Comercial Plaza San Francisco, San Miguel", "vaticano123",CURDATE());

INSERT INTO pedidos (id_cliente, estado_pedidos, fecha_registro, direccion_pedidos) VALUES
(1, 'Entregado', '2024-03-01', 'Calle Principal 123'),
(2, 'Pendiente', '2024-03-02', 'Avenida Central 456'),
(3, 'Cancelado', '2024-03-03', 'Plaza Mayor 789'),
(4, 'Entregado', '2024-03-04', 'Calle Secundaria 321'),
(5, 'Pendiente', '2024-03-05', 'Avenida Norte 654'),
(6, 'Entregado', '2024-03-06', 'Calle Este 987'),
(7, 'Pendiente', '2024-03-07', 'Avenida Oeste 123'),
(8, 'Cancelado', '2024-03-08', 'Plaza Sur 456'),
(9, 'Entregado', '2024-03-09', 'Calle Central 789'),
(10, 'Pendiente', '2024-03-10', 'Avenida Principal 123'),
(11, 'Entregado', '2024-03-11', 'Calle Mayor 456'),
(12, 'Pendiente', '2024-03-12', 'Avenida Secundaria 789'),
(13, 'Entregado', '2024-03-13', 'Calle Norte 123'),
(14, 'Cancelado', '2024-03-14', 'Avenida Este 456'),
(15, 'Entregado', '2024-03-15', 'Calle Oeste 789'),
(16, 'Pendiente', '2024-03-16', 'Avenida Central 123'),
(17, 'Entregado', '2024-03-17', 'Calle Principal 456'),
(18, 'Pendiente', '2024-03-18', 'Avenida Norte 789'),
(19, 'Entregado', '2024-03-19', 'Calle Este 123'),
(20, 'Pendiente', '2024-03-20', 'Avenida Oeste 456'),
(21, 'Entregado', '2024-03-21', 'Calle Central 789'),
(22, 'Cancelado', '2024-03-22', 'Plaza Principal 123'),
(23, 'Entregado', '2024-03-23', 'Calle Mayor 456'),
(24, 'Pendiente', '2024-03-24', 'Avenida Secundaria 789'),
(25, 'Entregado', '2024-03-25', 'Calle Norte 123');

INSERT INTO Administrador (Nombre_Administrador, Apellido_Administrador, Correo_Administrador, Contrasenia_Administrador, Fecha_Registro) 
VALUES 
('John', 'Doe', 'john@example.com', 'password123', '2024-03-01'),
('Jane', 'Smith', 'jane@example.com', 'password456', '2024-03-02'),
('Eduardo', 'Johnson', 'michael@example.com', 'password789', '2024-03-03'),
('Emily', 'Brown', 'emily@example.com', 'passwordabc', '2024-03-04'),
('William', 'Jones', 'william@example.com', 'passworddef', '2024-03-05'),
('Emma', 'Taylor', 'emma@example.com', 'passwordghi', '2024-03-06'),
('David', 'Wilson', 'david@example.com', 'passwordjkl', '2024-03-07'),
('Olivia', 'Anderson', 'olivia@example.com', 'passwordmno', '2024-03-08'),
('James', 'Thomas', 'james@example.com', 'passwordpqr', '2024-03-09'),
('Isabella', 'Martinez', 'isabella@example.com', 'passwordstu', '2024-03-10'),
('Sophia', 'Hernandez', 'sophia@example.com', 'passwordvwx', '2024-03-11'),
('Ethan', 'Young', 'ethan@example.com', 'passwordyz1', '2024-03-12'),
('Mia', 'King', 'mia@example.com', 'password234', '2024-03-13'),
('Alexander', 'Lee', 'alexander@example.com', 'password567', '2024-03-14'),
('Charlotte', 'White', 'charlotte@example.com', 'password890', '2024-03-15'),
('Daniel', 'Brown', 'daniel@example.com', 'passwordabc2', '2024-03-16'),
('Ava', 'Clark', 'ava@example.com', 'passworddef3', '2024-03-17'),
('Jacob', 'Hall', 'jacob@example.com', 'passwordghi4', '2024-03-18'),
('Emily', 'Lewis', 'emily@example.com', 'passwordjkl5', '2024-03-19'),
('Benjamin', 'Allen', 'benjamin@example.com', 'passwordmno6', '2024-03-20'),
('Harper', 'Scott', 'harper@example.com', 'passwordpqr7', '2024-03-21'),
('Matthew', 'Green', 'matthew@example.com', 'passwordstu8', '2024-03-22'),
('Abigail', 'Adams', 'abigail@example.com', 'passwordvwx9', '2024-03-23'),
('Samantha', 'Baker', 'samantha@example.com', 'passwordyz10', '2024-03-24'),
('Christopher', 'Evans', 'christopher@example.com', 'password2345', '2024-03-25');

INSERT INTO piezas (Id_categoria, nombre_productos, descripcion_productos, precio_productos, imagen_productos, id_administrador, existencias_producto, fecha_registro, anio1, anio2) VALUES
(1, 'Tuerca de acero inoxidable', 'Tuerca hexagonal de acero inoxidable resistente a la corrosión', 2.50, 'tuerca_inox.jpg', 1, 100, '2024-03-06', '2000', '2020'),
(2, 'Tornillo de cabeza plana', 'Tornillo de cabeza plana de acero al carbono', 1.75, 'tornillo_plan.jpg', 1, 150, '2024-03-06', '1995', '2015'),
(3, 'Resorte de compresión', 'Resorte helicoidal de compresión para aplicaciones industriales', 3.20, 'resorte_comp.jpg', 1, 80, '2024-03-06', '2010', '2022'),
(1, 'Arandela de acero galvanizado', 'Arandela plana de acero galvanizado para distribuir la carga de un tornillo', 1.10, 'arandela_galv.jpg', 1, 200, '2024-03-06', '2005', '2018'),
(2, 'Tornillo de cabeza hexagonal', 'Tornillo de cabeza hexagonal de acero al carbono', 1.90, 'tornillo_hex.jpg', 1, 120, '2024-03-06', '2008', '2019'),
(3, 'Resorte de torsión', 'Resorte helicoidal de torsión para aplicaciones mecánicas', 2.80, 'resorte_tors.jpg', 1, 90, '2024-03-06', '2012', '2023'),
(1, 'Tuerca de acero galvanizado', 'Tuerca hexagonal de acero galvanizado resistente a la corrosión', 1.80, 'tuerca_galv.jpg', 1, 150, '2024-03-06', '2006', '2017'),
(2, 'Tornillo autorroscante', 'Tornillo autorroscante de acero inoxidable para montaje en madera', 2.25, 'tornillo_autoros.jpg', 1, 100, '2024-03-06', '2015', '2021'),
(3, 'Resorte de compresión', 'Resorte helicoidal de compresión para aplicaciones industriales', 3.40, 'resorte_comp.jpg', 1, 70, '2024-03-06', '2018', '2025'),
(1, 'Arandela de acero inoxidable', 'Arandela plana de acero inoxidable para distribuir la carga de un tornillo', 1.50, 'arandela_inox.jpg', 1, 180, '2024-03-06', '2003', '2014'),
(2, 'Tornillo de cabeza cilíndrica', 'Tornillo de cabeza cilíndrica de acero al carbono', 1.60, 'tornillo_cil.jpg', 1, 130, '2024-03-06', '2009', '2016'),
(3, 'Resorte de compresión', 'Resorte helicoidal de compresión para aplicaciones industriales', 3.10, 'resorte_comp.jpg', 1, 85, '2024-03-06', '2014', '2026'),
(1, 'Tuerca de acero al carbono', 'Tuerca hexagonal de acero al carbono resistente a la corrosión', 2.00, 'tuerca_carb.jpg', 1, 170, '2024-03-06', '2007', '2012'),
(2, 'Tornillo autorroscante', 'Tornillo autorroscante de acero al carbono para montaje en metal', 1.80, 'tornillo_autoros.jpg', 1, 110, '2024-03-06', '2013', '2020'),
(3, 'Resorte de torsión', 'Resorte helicoidal de torsión para aplicaciones mecánicas', 2.60, 'resorte_tors.jpg', 1, 95, '2024-03-06', '2011', '2024'),
(1, 'Arandela de acero al carbono', 'Arandela plana de acero al carbono para distribuir la carga de un tornillo', 1.20, 'arandela_carb.jpg', 1, 190, '2024-03-06', '2004', '2019'),
(2, 'Tornillo de cabeza hexagonal', 'Tornillo de cabeza hexagonal de acero galvanizado', 2.10, 'tornillo_hex.jpg', 1, 140, '2024-03-06', '2002', '2013'),
(3, 'Resorte de compresión', 'Resorte helicoidal de compresión para aplicaciones industriales', 3.00, 'resorte_comp.jpg', 1, 75, '2024-03-06', '2017', '2027'),
(1, 'Tuerca de acero galvanizado', 'Tuerca hexagonal de acero galvanizado resistente a la corrosión', 1.70, 'tuerca_galv.jpg', 1, 160, '2024-03-06', '2001', '2016'),
(2, 'Tornillo de cabeza plana', 'Tornillo de cabeza plana de acero inoxidable', 2.00, 'tornillo_plan.jpg', 1, 125, '2024-03-06', '2016', '2023'),
(3, 'Resorte de torsión', 'Resorte helicoidal de torsión para aplicaciones mecánicas', 2.70, 'resorte_tors.jpg', 1, 100, '2024-03-06', '2019', '2028'),
(1, 'Arandela de acero inoxidable', 'Arandela plana de acero inoxidable para distribuir la carga de un tornillo', 1.40, 'arandela_inox.jpg', 1, 175, '2024-03-06', '2013', '2020'),
(2, 'Tornillo autorroscante', 'Tornillo autorroscante de acero al carbono para montaje en plástico', 1.65, 'tornillo_autoros.jpg', 1, 115, '2024-03-06', '2018', '2025'),
(3, 'Resorte de compresión', 'Resorte helicoidal de compresión para aplicaciones industriales', 3.30, 'resorte_comp.jpg', 1, 80, '2024-03-06', '2015', '2029'),
(1, 'Tuerca de acero al carbono', 'Tuerca hexagonal de acero al carbono resistente a la corrosión', 2.20, 'tuerca_carb.jpg', 1, 165, '2024-03-06', '2008', '2017'),
(2, 'Tornillo de cabeza cilíndrica', 'Tornillo de cabeza cilíndrica de acero galvanizado', 1.85, 'tornillo_cil.jpg', 1, 135, '2024-03-06', '2017', '2024');





/*procedures*/

DELIMITER //
CREATE PROCEDURE insertar_administradores(
	IN nombre VARCHAR(100),
	IN apellido VARCHAR(100),
	IN correo VARCHAR(100),
	IN contrasenia VARCHAR(100)
)
BEGIN
    INSERT INTO Administrador (Nombre_Administrador,Apellido_Administrador,Correo_Administrador,Contrasenia_Administrador,Fecha_Registro)
    VALUES (nombre,apellido,correo,contrasenia,CURDATE());
END //
    
DELIMITER ;

DELIMITER //
CREATE PROCEDURE insertar_modelo(
	IN nombre VARCHAR(100),
	IN descripcion VARCHAR(100),
	IN anio VARCHAR(100)
)
BEGIN
    INSERT INTO Modelo (Nombre_Modelo,Descripcion_Modelo,Año_Modelo)
    VALUES (nombre,descripcion,anio);
END //
    
DELIMITER ;

DELIMITER //
CREATE PROCEDURE insertar_marca(
	IN fk_modelo int,
	IN nombre VARCHAR(100),
	IN descripcion VARCHAR(100)
)
BEGIN
    INSERT INTO Marca (id_Modelo,Nombre_Marca,Descripcion_Marca)
    VALUES (fk_modelo,nombre,descripcion);
END //
    
DELIMITER ;

DELIMITER //
CREATE PROCEDURE insertar_vehiculos(
	IN nombre VARCHAR(100),
	IN descripcion VARCHAR(100),
	IN imagen VARCHAR(100)
)
BEGIN
    INSERT INTO Vehiculos (Nombres_Vehiculos,Descripcion_Vehiculos,Imagen_Vehiculos)
    VALUES (nombre,descripcion,imagen);
END //
    
DELIMITER ;

DELIMITER //
CREATE PROCEDURE insertar_piensas(
	IN categoria int,
	IN nombre VARCHAR(100),
	IN descripcion VARCHAR(100),
	IN precio NUMERIC(5,2),
	in imagen VARCHAR(200),
	IN id_administrador INT,
	IN existencia INT,
	IN fecha_registro DATE,
	IN anio1 INT,
	IN anio2 int
)
BEGIN
    INSERT INTO piensas (Id_categoria,nombre_productos,descripcion_productos,precio_productos,imagen_productos,id_administrador,existencias_producto,fecha_registro,año1,año2)
    VALUES (categoria,nombre,descripcion,precio,imagen,id_administrador,existencia,fecha_registro,anio1,anio2);
END //
    
DELIMITER ;

DELIMITER //
CREATE PROCEDURE insertar_pedido(
	IN id_cliente int,
	IN estado VARCHAR(100),
	IN direccion VARCHAR(500)
)
BEGIN
    INSERT INTO pedidos (id_cliente,estado_pedidos,fecha_registro,direccion_pedidos)
    VALUES (id_cliente,estado,CURDATE(),direccion);
END //
    
DELIMITER ;


/*inserciones*/

CALL insertar_administradores("Mario","Porzona","mario@gmail.com","porotosricos");
CALL insertar_administradores("Ernesto","Cartilago","cartilagoso@gmail.com","paranga");
CALL insertar_administradores("Nelson","Porzona","nelsonbro@gmail.com","porzonabros");
CALL insertar_administradores("Nico","Tiko","nico@gmail.com","nokoni");
CALL insertar_administradores("Celsius","farenjei","kelvin@gmail.com","temperatura1");
CALL insertar_administradores("farenjei","celsius","kevin@gmail.com","temperatura2");
CALL insertar_administradores("Kebin","celisius","furanjut@gmail.com","temperatura3");
CALL insertar_administradores("blaky","Hunter","hunteriozo@gmail.com","elhunteriozo");
CALL insertar_administradores("Lirya","Maka","02@gmail.com","elangeloso");
CALL insertar_administradores("Zoey","Jackson","ladrona@gmail.com","porotosricos");
CALL insertar_administradores("Mario","Porzona","mario@gmail.com","porotosricos");
CALL insertar_administradores("Mario","Porzona","mario@gmail.com","porotosricos");
CALL insertar_administradores("Mario","Porzona","mario@gmail.com","porotosricos");
CALL insertar_administradores("Mario","Porzona","mario@gmail.com","porotosricos");
CALL insertar_administradores("Mario","Porzona","mario@gmail.com","porotosricos");
CALL insertar_administradores("Mei","Patchirizu","rata@gmail.com","zapzap");
CALL insertar_administradores("Mario","Porzona","mario@gmail.com","porotosricos");
CALL insertar_administradores("Mario","Porzona","mario@gmail.com","porotosricos");
CALL insertar_administradores("Mario","Mario","teferencia@gmail.com","luigimario");
CALL insertar_administradores("Mario","Porzona","mario@gmail.com","porotosricos");
CALL insertar_administradores("Luigi","Mario","referencia@gmail.com","mariomario");
CALL insertar_administradores("Mario","Bros","princesa@gmail.com","wahuuuuuuuuuuu");
CALL insertar_administradores("Mario","Porzona","mario@gmail.com","porotosricos");
CALL insertar_administradores("Mario","Porzona","mario@gmail.com","porotosricos");
CALL insertar_administradores("Paty","Patosa","dinosaurio@gmail.com","dinosaurio69");





CALL insertar_vehiculos("nissan","bonito","imagen");
CALL insertar_vehiculos("toyota","bonito","imagen");
CALL insertar_vehiculos("toyota","bonito","imagen");
CALL insertar_vehiculos("toyota","bonito","imagen");
CALL insertar_vehiculos("toyota","bonito","imagen");
CALL insertar_vehiculos("toyota","bonito","imagen");
CALL insertar_vehiculos("toyota","bonito","imagen");
CALL insertar_vehiculos("toyota","bonito","imagen");
CALL insertar_vehiculos("toyota","bonito","imagen");
CALL insertar_vehiculos("toyota","bonito","imagen");
CALL insertar_vehiculos("toyota","bonito","imagen");
CALL insertar_vehiculos("toyota","bonito","imagen");
CALL insertar_vehiculos("toyota","bonito","imagen");
CALL insertar_vehiculos("toyota","bonito","imagen");
CALL insertar_vehiculos("toyota","bonito","imagen");
CALL insertar_vehiculos("toyota","bonito","imagen");
CALL insertar_vehiculos("toyota","bonito","imagen");
CALL insertar_vehiculos("toyota","bonito","imagen");
CALL insertar_vehiculos("toyota","bonito","imagen");
CALL insertar_vehiculos("toyota","bonito","imagen");
CALL insertar_vehiculos("toyota","bonito","imagen");
CALL insertar_vehiculos("toyota","bonito","imagen");
CALL insertar_vehiculos("toyota","bonito","imagen");
CALL insertar_vehiculos("toyota","bonito","imagen");
CALL insertar_vehiculos("toyota","bonito","imagen");

CALL insertar_pedido(3,"Activo","Centro Comercial Plaza San Francisco, San Miguel");
CALL insertar_pedido(3,"Activo","Centro Comercial Plaza San Francisco, San Miguel");
CALL insertar_pedido(3,"Activo","Centro Comercial Plaza San Francisco, San Miguel");
CALL insertar_pedido(3,"Activo","Centro Comercial Plaza San Francisco, San Miguel");
CALL insertar_pedido(3,"Activo","Centro Comercial Plaza San Francisco, San Miguel");
CALL insertar_pedido(3,"Activo","Centro Comercial Plaza San Francisco, San Miguel");
CALL insertar_pedido(3,"Activo","Centro Comercial Plaza San Francisco, San Miguel");
CALL insertar_pedido(3,"Activo","Centro Comercial Plaza San Francisco, San Miguel");
CALL insertar_pedido(3,"Activo","Centro Comercial Plaza San Francisco, San Miguel");
CALL insertar_pedido(3,"Activo","Centro Comercial Plaza San Francisco, San Miguel");
CALL insertar_pedido(3,"Activo","Centro Comercial Plaza San Francisco, San Miguel");
CALL insertar_pedido(3,"Activo","Centro Comercial Plaza San Francisco, San Miguel");
CALL insertar_pedido(3,"Activo","Centro Comercial Plaza San Francisco, San Miguel");
CALL insertar_pedido(3,"Activo","Centro Comercial Plaza San Francisco, San Miguel");
CALL insertar_pedido(3,"Activo","Centro Comercial Plaza San Francisco, San Miguel");
CALL insertar_pedido(3,"Activo","Centro Comercial Plaza San Francisco, San Miguel");
CALL insertar_pedido(3,"Activo","Centro Comercial Plaza San Francisco, San Miguel");
CALL insertar_pedido(3,"Activo","Centro Comercial Plaza San Francisco, San Miguel");
CALL insertar_pedido(3,"Activo","Centro Comercial Plaza San Francisco, San Miguel");
CALL insertar_pedido(3,"Activo","Centro Comercial Plaza San Francisco, San Miguel");

call insertar_modelo("Marcos","bonito","2013");
call insertar_modelo("Marcos","bonito","2013");
call insertar_modelo("Marcos","bonito","2013");
call insertar_modelo("Marcos","bonito","2013");
call insertar_modelo("Marcos","bonito","2013");

CALL insertar_marca(1,"Toyota","2031");
CALL insertar_marca(1,"Toyota","2031");
CALL insertar_marca(1,"Toyota","2031");
CALL insertar_marca(1,"Toyota","2031");
CALL insertar_marca(1,"Toyota","2031");


DELIMITER $$
CREATE TRIGGER validar_cantidad_productos BEFORE INSERT ON detalle_pedidos
FOR EACH ROW
BEGIN
    DECLARE total_existente INT;
    DECLARE total_nuevo INT;
    
    -- Calcula la cantidad total existente de productos en el pedido
    SELECT SUM(cantidad_productos) INTO total_existente
    FROM detalle_pedidos
    WHERE id_pedido = NEW.id_pedido;
    
    -- Calcula la cantidad total que se intenta agregar al pedido
    SET total_nuevo = total_existente + NEW.cantidad_productos;
    
    -- Verifica si la cantidad total excede un límite (por ejemplo, 100)
    IF total_nuevo > 100 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'La cantidad total de productos en el pedido excede el límite permitido.';
    END IF;
END$$
DELIMITER ;
