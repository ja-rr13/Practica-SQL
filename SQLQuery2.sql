Create database practica
go

use practica
go
create table Usuarios(
	UsuarioID int primary key,
	Nombre varchar(50),
	CorreoElectronico varchar(50),
	Telefono varchar(50)
)


create table Tecnicos(
	TecnicoID int primary key,
	Nombre varchar(50),
	Especialidad varchar(50)
	
)
create table Equipos(
	EquipoID int primary key,
	TipoEquipo varchar(50),
	Modelo varchar(50),
	IDequipo int foreign key references Usuarios(UsuarioID)
)
create table Reparaciones(
	ReparacionID int primary key,
	FechaSolicitud varchar(50),
	Estado varchar(50),
	IDequipo int foreign key references Equipos(EquipoID)
)
create table DetallesReparacion(
	DetalleID int primary key,
	Descripcion varchar(50),
	FechaInicio varchar(50),
	FechaFin varchar(50),
	IDreparacion int foreign key references Reparaciones(ReparacionID)
)
create table Asignaciones(
	AsignacionID int primary key,
	FechaAsignacion varchar(50),
	IDtecnico int foreign key references Tecnicos(TecnicoID),
	IDreparacion int foreign key references Reparaciones(ReparacionID)
)
