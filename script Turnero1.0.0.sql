USE [SistemaTurnGO]
GO
/****** Object:  Table [dbo].[Accesos]    Script Date: 24/8/2023 18:35:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accesos](
	[id] [int] NOT NULL,
	[FormularioId] [int] NULL,
	[RolUsuarioId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empresas]    Script Date: 24/8/2023 18:35:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empresas](
	[id] [int] NOT NULL,
	[Nombre_Empresa] [varchar](100) NOT NULL,
	[Descripcion] [varchar](100) NULL,
	[Cuit] [varchar](20) NULL,
	[Nombre_Responsable] [varchar](100) NULL,
	[Ubicacion] [varchar](100) NULL,
	[Direccion] [varchar](200) NULL,
	[Imagen] [varchar](200) NULL,
	[Empleados] [int] NULL,
	[Fecha_Inicio] [date] NULL,
	[Pais] [varchar](50) NULL,
	[Ciudad] [varchar](50) NULL,
	[Industria] [varchar](100) NULL,
	[Razon_Social] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Formularios]    Script Date: 24/8/2023 18:35:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Formularios](
	[id] [int] NOT NULL,
	[Nombre] [varchar](255) NOT NULL,
	[Descripcion] [varchar](100) NULL,
	[Activo] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Frecuencias]    Script Date: 24/8/2023 18:35:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Frecuencias](
	[id] [int] NOT NULL,
	[tiempo_min] [time](7) NOT NULL,
	[nombre] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pagos]    Script Date: 24/8/2023 18:35:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pagos](
	[ID] [int] NOT NULL,
	[TurnoId] [int] NULL,
	[Monto] [decimal](10, 2) NOT NULL,
	[TipoPagoId] [int] NULL,
	[Fecha_Pago] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservas]    Script Date: 24/8/2023 18:35:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservas](
	[id] [int] NOT NULL,
	[TurnoId] [int] NULL,
	[UsuarioId] [int] NULL,
	[PagoId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 24/8/2023 18:35:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[id] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[Activo] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RolesUsuarios]    Script Date: 24/8/2023 18:35:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolesUsuarios](
	[id] [int] NOT NULL,
	[idRol] [int] NULL,
	[idUsuario] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Servicios]    Script Date: 24/8/2023 18:35:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servicios](
	[id] [int] NOT NULL,
	[Nombre] [varchar](255) NOT NULL,
	[Descripcion] [varchar](100) NULL,
	[Duracion] [time](7) NOT NULL,
	[Costo] [decimal](10, 2) NOT NULL,
	[Fecha] [date] NULL,
	[HoraInicio] [time](7) NULL,
	[HoraFin] [time](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoDePago]    Script Date: 24/8/2023 18:35:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoDePago](
	[Id] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Turnos]    Script Date: 24/8/2023 18:35:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Turnos](
	[id] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[Hora] [time](7) NOT NULL,
	[UsuarioId] [int] NULL,
	[ServicioId] [int] NULL,
	[EmpresaId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 24/8/2023 18:35:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombreUsuario] [varchar](50) NOT NULL,
	[contrasena] [varchar](100) NOT NULL,
	[Fecha] [date] NULL,
	[Activo] [tinyint] NULL,
 CONSTRAINT [PK__Usuarios__3213E83F7D2B4D0C] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([id], [nombreUsuario], [contrasena], [Fecha], [Activo]) VALUES (1, N'Dehesa', N'123', CAST(N'2023-08-16' AS Date), 1)
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
GO
ALTER TABLE [dbo].[Accesos]  WITH CHECK ADD FOREIGN KEY([FormularioId])
REFERENCES [dbo].[Formularios] ([id])
GO
ALTER TABLE [dbo].[Accesos]  WITH CHECK ADD FOREIGN KEY([RolUsuarioId])
REFERENCES [dbo].[RolesUsuarios] ([id])
GO
ALTER TABLE [dbo].[Pagos]  WITH CHECK ADD FOREIGN KEY([TipoPagoId])
REFERENCES [dbo].[TipoDePago] ([Id])
GO
ALTER TABLE [dbo].[Pagos]  WITH CHECK ADD FOREIGN KEY([TurnoId])
REFERENCES [dbo].[Turnos] ([id])
GO
ALTER TABLE [dbo].[Reservas]  WITH CHECK ADD FOREIGN KEY([PagoId])
REFERENCES [dbo].[Pagos] ([ID])
GO
ALTER TABLE [dbo].[Reservas]  WITH CHECK ADD FOREIGN KEY([TurnoId])
REFERENCES [dbo].[Turnos] ([id])
GO
ALTER TABLE [dbo].[Reservas]  WITH CHECK ADD  CONSTRAINT [FK__Reservas__Usuari__5629CD9C] FOREIGN KEY([UsuarioId])
REFERENCES [dbo].[Usuarios] ([id])
GO
ALTER TABLE [dbo].[Reservas] CHECK CONSTRAINT [FK__Reservas__Usuari__5629CD9C]
GO
ALTER TABLE [dbo].[RolesUsuarios]  WITH CHECK ADD FOREIGN KEY([idRol])
REFERENCES [dbo].[Roles] ([id])
GO
ALTER TABLE [dbo].[RolesUsuarios]  WITH CHECK ADD  CONSTRAINT [FK__RolesUsua__idUsu__403A8C7D] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuarios] ([id])
GO
ALTER TABLE [dbo].[RolesUsuarios] CHECK CONSTRAINT [FK__RolesUsua__idUsu__403A8C7D]
GO
ALTER TABLE [dbo].[Turnos]  WITH CHECK ADD FOREIGN KEY([EmpresaId])
REFERENCES [dbo].[Empresas] ([id])
GO
ALTER TABLE [dbo].[Turnos]  WITH CHECK ADD FOREIGN KEY([ServicioId])
REFERENCES [dbo].[Servicios] ([id])
GO
ALTER TABLE [dbo].[Turnos]  WITH CHECK ADD  CONSTRAINT [FK__Turnos__UsuarioI__4AB81AF0] FOREIGN KEY([UsuarioId])
REFERENCES [dbo].[Usuarios] ([id])
GO
ALTER TABLE [dbo].[Turnos] CHECK CONSTRAINT [FK__Turnos__UsuarioI__4AB81AF0]
GO
