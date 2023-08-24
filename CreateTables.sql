CREATE TABLE Usuarios (
    id INT PRIMARY KEY,
    nombreUsuario VARCHAR(50) NOT NULL,
    password VARCHAR(100) NOT NULL,
    id_Persona INT,
    Fecha DATE,
    SeccionId INT,
    Activo tinyint
);


CREATE TABLE Frecuencias (
    id INT PRIMARY KEY,
    tiempo_min time NOT NULL,
    nombre VARCHAR(255) NOT NULL
);


CREATE TABLE Servicios (
    id INT PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL,
    Descripcion varchar(100),
    Duracion TIME NOT NULL,
    Costo DECIMAL(10, 2) NOT NULL,
    Fecha DATE,
    HoraInicio TIME,
    HoraFin TIME
);



CREATE TABLE Roles (
    id INT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    Activo tinyint
);



CREATE TABLE RolesUsuarios (
    id INT PRIMARY KEY,
    idRol INT,
    idUsuario INT,
    FOREIGN KEY (idRol) REFERENCES Roles(id),
    FOREIGN KEY (idUsuario) REFERENCES Usuarios(id)
);


CREATE TABLE Formularios (
    id INT PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL,
    Descripcion varchar(100),
    Activo tinyint NOT NULL
);


CREATE TABLE Accesos (
    id INT PRIMARY KEY,
    FormularioId INT,
    RolUsuarioId INT,
    FOREIGN KEY (FormularioId) REFERENCES Formularios(id),
    FOREIGN KEY (RolUsuarioId) REFERENCES RolesUsuarios(id)
);


CREATE TABLE Empresas (
    id INT PRIMARY KEY,
    Nombre_Empresa VARCHAR(100) NOT NULL,
    Descripcion varchar(100),
    Cuit VARCHAR(20),
    Nombre_Responsable VARCHAR(100),
    Ubicacion VARCHAR(100),
    Direccion VARCHAR(200),
    Imagen VARCHAR(200),
    Empleados INT,
    Fecha_Inicio DATE,
    Pais VARCHAR(50),
    Ciudad VARCHAR(50),
    Industria VARCHAR(100),
    Razon_Social VARCHAR(200)
);


CREATE TABLE Turnos (
    id INT PRIMARY KEY,
    Fecha DATE NOT NULL,
    Hora TIME NOT NULL,
    UsuarioId INT,
    ServicioId INT,
	EmpresaId INT,
    FOREIGN KEY (UsuarioId) REFERENCES Usuarios(id),
    FOREIGN KEY (ServicioId) REFERENCES Servicios(id),
	FOREIGN KEY (EmpresaId) REFERENCES Empresas(id)
);


CREATE TABLE TipoDePago (
    Id INT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL
);


CREATE TABLE Pagos (
    ID INT PRIMARY KEY,
    TurnoId INT,
    Monto DECIMAL(10, 2) NOT NULL,
    TipoPagoId INT,
    Fecha_Pago DATE,
	FOREIGN KEY (TurnoId) REFERENCES Turnos(id),
	FOREIGN KEY (TipoPagoId) REFERENCES TipoDePago(id)
);


CREATE TABLE Reservas (
    id INT PRIMARY KEY,
    TurnoId INT,
    UsuarioId INT,
    PagoId INT,
	FOREIGN KEY (TurnoId) REFERENCES Turnos(id),
	FOREIGN KEY (UsuarioId) REFERENCES Usuarios(id),
	FOREIGN KEY (PagoId) REFERENCES Pagos(id),
);


