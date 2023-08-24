CREATE PROCEDURE BuscarTodoServicios
AS 
SELECT * 
FROM Servicios


CREATE PROCEDURE CargarServicios
@Id int,
@Nombre varchar(50),
@Descripcion varchar(50),
@Duracion time,
@Costo decimal(10,2),
@Fecha date,
@HoraInicio time,
@HoraFin time
AS
INSERT INTO Servicios
VALUES(@Id,@Nombre,@Descripcion,@Duracion,@Costo,@Fecha,@HoraInicio,@HoraFin)


CREATE PROCEDURE ConsultarServiciosxID
@Id int 
AS 
SELECT *
FROM Servicios
WHERE @Id = id


CREATE PROCEDURE ModificarServicios
@Id int,
@Nombre varchar(50),
@Descripcion varchar(50),
@Duracion time,
@Costo decimal(10,2),
@Fecha date,
@HoraInicio time,
@HoraFin time
AS
UPDATE Servicios
SET Nombre = @Nombre, Descripcion = @Descripcion, Duracion = @Duracion, Costo = @Costo, Fecha =@Fecha, HoraInicio =@HoraInicio, HoraFin = @HoraFin
WHERE @Id = id


CREATE PROCEDURE EliminarServicios
@Id int
AS
DELETE 
FROM Servicios
WHERE id = @Id