CREATE TABLE Tb_Empleado (
    CodEmpleado INT AUTO_INCREMENT PRIMARY KEY,
    Ape_Paterno VARCHAR(20) NOT NULL,
    Ape_Materno VARCHAR(20) NOT NULL,
    Nombres VARCHAR(30) NOT NULL,
    Fec_Nacimiento DATE NOT NULL,
    Doc_Identidad CHAR(20) NOT NULL,
    NumDoc_Identidad CHAR(12) NOT NULL,
    Sexo VARCHAR(10) NOT NULL,
    Estado_Civil VARCHAR(10) NOT NULL,
    Distrito VARCHAR(40) NOT NULL,
    Direccion VARCHAR(100) NOT NULL,
    Fec_Contrato DATETIME NOT NULL,
    Fec_Ter_Contrato DATE NOT NULL,
    Sucursal VARCHAR(40) NOT NULL,
    Area VARCHAR(30) NOT NULL,
    Cargo VARCHAR(20) NOT NULL,
    Sueldo DECIMAL(10,2) NOT NULL,
    Email VARCHAR(40) NOT NULL,
    Telefono VARCHAR(12) NOT NULL,
    Foto BINARY NULL, 
    Estado_Empleado VARCHAR(20) NOT NULL,
    Obs_EstadoEmpleado VARCHAR(255) NOT NULL
);

ALTER TABLE Tb_Empleado
CHANGE COLUMN NumDoc_Identidad VARCHAR(12) NOT NULL;


CREATE TABLE Tb_Usuario_Empleado (
    CodEmpleado INT AUTO_INCREMENT PRIMARY KEY,
    CodUsuario CHAR(12) NOT NULL,
    Password VARCHAR(20) NOT NULL,
    Perfil_Usuario VARCHAR(20) NOT NULL,
    Fec_Registro DATETIME NOT NULL,
    Estado_Usuario VARCHAR(20) NOT NULL,
    CONSTRAINT FK_Tb_Usuario_Empleado_CodEmpleado
    FOREIGN KEY (CodEmpleado) REFERENCES Tb_Empleado(CodEmpleado)
);

CREATE TABLE Tb_Cliente (
    CodCliente INT AUTO_INCREMENT PRIMARY KEY,
    Ape_Paterno VARCHAR(20) NOT NULL,
    Ape_Materno VARCHAR(20) NOT NULL,
    Nombres VARCHAR(30) NOT NULL,
    Fec_Nacimiento DATE NOT NULL,
    Doc_Identidad VARCHAR (30) NULL NOT NULL,
    NumDoc_Identidad_Cliente VARCHAR(12) NOT NULL,
    Sexo VARCHAR(10) NOT NULL,
    Estado_Civil VARCHAR(15) NOT NULL,
    Distrito VARCHAR(40) NOT NULL,
    Direccion VARCHAR(100) NOT NULL,
    Telefono VARCHAR(12) NOT NULL,
    Email VARCHAR(40) NOT NULL,
    Estado_Cliente VARCHAR(20) NOT NULL
);

CREATE TABLE Tb_Usuario_Cliente (
    CodCliente INT AUTO_INCREMENT PRIMARY KEY,
    CodUsuario CHAR(12) NOT NULL,
    Password VARCHAR(20) NOT NULL,
    Fec_Registro DATETIME NOT NULL,
    Estado_Usuario VARCHAR(20) NOT NULL,
    CONSTRAINT FK_Tb_Usuario_Cliente_CodCliente
    FOREIGN KEY (CodCliente) REFERENCES Tb_Cliente(CodCliente)
);

CREATE TABLE Tb_Orden_Servicio (
    NumOrdenServicio INT AUTO_INCREMENT PRIMARY KEY,
    Sucursal VARCHAR(20) NOT NULL,
    CodCliente INT NOT NULL,
    CodEmpleado INT NOT NULL,
    Modalidad_Atencion VARCHAR(20) NOT NULL,
    Tipo_Entrega VARCHAR(20) NOT NULL,
    Fec_Orden_Servicio DATETIME NOT NULL,
    Fec_Entrega_Programada DATETIME NOT NULL,
    Fec_Entrega_Real DATETIME NOT NULL,
    Total NUMERIC(10,2) NOT NULL,
    Estado_Orden_Servicio VARCHAR(20) NOT NULL,
    Obs_Estado_Orden_Servicio VARCHAR(100) NOT NULL
);

ALTER TABLE Tb_Orden_Servicio 
ADD CONSTRAINT FK_Tb_Orden_Servicio_CodCliente
FOREIGN KEY (CodCliente) REFERENCES Tb_Cliente(CodCliente);

ALTER TABLE Tb_Orden_Servicio 
ADD CONSTRAINT FK_Tb_Orden_Servicio_CodEmpleado
FOREIGN KEY (CodEmpleado) REFERENCES Tb_Empleado(CodEmpleado);

CREATE TABLE Tb_Detalle_Servicio (
    IdDetalleServicio INT AUTO_INCREMENT PRIMARY KEY,
    NumOrdenServicio INT NOT NULL,
    Tipo_Servicio VARCHAR(30) NOT NULL,
    UniMed VARCHAR(20) NOT NULL,
    Prenda VARCHAR(40) NOT NULL,
    Descripcion_Prenda VARCHAR(50) NOT NULL,
    Situacion_Prenda VARCHAR(40) NOT NULL,
    Marca VARCHAR(20),
    Color VARCHAR(20),
    Prec_Servicio NUMERIC(10,2) NOT NULL,
    Cantidad_Prenda INT NOT NULL,
    Importe NUMERIC(10,2) NOT NULL,
    Porcentaje_Dscto NUMERIC(10,2) NOT NULL,
    Dscto NUMERIC(10,2) NOT NULL,
    SubTotal NUMERIC(10,2) NOT NULL
);

ALTER TABLE Tb_Detalle_Servicio
ADD CONSTRAINT FK_Tb_Detalle_Servicio_NumOrdenServicio
FOREIGN KEY (NumOrdenServicio) REFERENCES Tb_Orden_Servicio(NumOrdenServicio);

CREATE TABLE Tb_Facturacion_Servicio (
    NumFacturacion_Venta INT AUTO_INCREMENT PRIMARY KEY,
    NumOrdenServicio INT NOT NULL,
    CodEmpleado INT NOT NULL,
    Tipo_Facturacion VARCHAR(30) NOT NULL,
    NumSerie_Comprobante VARCHAR(10) NOT NULL,
    Fec_Emision DATETIME NOT NULL,
    SubTotal NUMERIC(10,2) NOT NULL,
    IGV NUMERIC(10,2) NOT NULL,
    Total NUMERIC(10,2) NOT NULL,
    Efectivo_Recibido NUMERIC(10,2) NOT NULL, 
    Vuelto NUMERIC(10,2) NOT NULL,
    Estado_Facturacion VARCHAR(20) NOT NULL
);

ALTER TABLE Tb_Facturacion_Servicio
ADD CONSTRAINT FK_Tb_Facturacion_Servicio_NumOrdenServicio
FOREIGN KEY (NumOrdenServicio) REFERENCES Tb_Orden_Servicio(NumOrdenServicio);

ALTER TABLE Tb_Facturacion_Servicio 
ADD CONSTRAINT FK_Tb_Facturacion_Servicio_CodEmpleado
FOREIGN KEY (CodEmpleado) REFERENCES Tb_Empleado(CodEmpleado);











INSERT INTO Tb_Empleado (
    Ape_Paterno, Ape_Materno, Nombres, Fec_Nacimiento, Doc_Identidad, NumDoc_Identidad, Sexo, Estado_Civil,
    Distrito, Direccion, Fec_Contrato, Fec_Ter_Contrato, Sucursal, Area, Cargo, Sueldo, Email, Telefono,
    Estado_Empleado, Obs_EstadoEmpleado
) VALUES (
    'Bautista', 'Huamani', 'Roly', '1995-11-17', 'DNI', '43424081', 'Masculino', 'Soltero',
    'Rimac', 'Pje. San German N° 270 - Urb. Villapampa Rimac', '2017-03-14 00:00:00.000', '2018-03-14',
    'Bentin', 'Area de Administracion', 'Administrador', 6500.00, 'rbautista95@gmail.com', '964004385',
    'Contrato Activo', 'Ninguna'
);

INSERT INTO Tb_Empleado (
    Ape_Paterno, Ape_Materno, Nombres, Fec_Nacimiento, Doc_Identidad, NumDoc_Identidad, Sexo, Estado_Civil,
    Distrito, Direccion, Fec_Contrato, Fec_Ter_Contrato, Sucursal, Area, Cargo, Sueldo, Email, Telefono,
    Estado_Empleado, Obs_EstadoEmpleado
) VALUES (
    'Varela', 'Sanchez', 'Saida', '2002-10-15', 'DNI', '77501983', 'Femenino', 'Soltero',
    'Rimac', 'Pje. Capilla Nª350 - Urb. San Luisa Rimac', '2020-12-27 00:00:00.000', '2011-03-14',
    'Bentin', 'Area de Atencion', 'Lavador', 800.00, 'varela15@gmail.com', '964004385',
    'Contrato Inactivo', 'Ninguna'
);

INSERT INTO Tb_Usuario_Empleado (CodUsuario, Password, Perfil_Usuario, Fec_Registro, Estado_Usuario)
VALUES ('BHR001', 'B#668887#r?', 'Administrador', '2018-01-15 00:00:00.000', 'Habilitado');
 
INSERT INTO Tb_Usuario_Empleado (CodUsuario, Password, Perfil_Usuario, Fec_Registro, Estado_Usuario)
VALUES ('varela', 'Saida1510*', 'Lavador', '2020-12-27 00:00:00.000', 'Deshabilitado'); 

--Crear procedimiento almacenado para validar login
DELIMITER $$
CREATE PROCEDURE Usp_ValidarLogin(
    usu VARCHAR(12),
    pas VARCHAR(20)
)
BEGIN 
    IF (SELECT CodUsuario FROM Tb_Usuario_Empleado WHERE CodUsuario = usu LIMIT 1) IS NULL THEN 
        SELECT 'Error: no se encontró el usuario';
    ELSEIF (SELECT Password FROM Tb_Usuario_Empleado WHERE Password = pas LIMIT 1) IS NULL THEN
        SELECT 'Error: contraseña no válida';
    ELSEIF (SELECT COUNT(CodUsuario) FROM Tb_Usuario_Empleado WHERE CodUsuario = usu AND Password = pas LIMIT 1) = 1 THEN
        SELECT 'ok';
    END IF;       
END;
$$ DELIMITER ;

--Ejecutar procedimiento almacenado
CALL Usp_ValidarLogin('BHR001','B#668887#r?');


SELECT * FROM TB_Usuario_Empleado
SELECT * FROM Tb_Empleado