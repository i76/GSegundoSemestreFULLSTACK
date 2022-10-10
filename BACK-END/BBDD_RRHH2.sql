USE [rrhh]
GO
/****** Object:  Table [dbo].[Barrio]    Script Date: 10/10/2022 10:24:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Barrio](
	[ID] [int] NOT NULL,
	[Nombre] [nchar](50) NULL,
	[IDciudad] [int] NULL,
 CONSTRAINT [PK_Barrio] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Busqueda_Tecnologia]    Script Date: 10/10/2022 10:24:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Busqueda_Tecnologia](
	[IDbusqueda] [int] NOT NULL,
	[IDtecnologia] [int] NOT NULL,
	[IDestado] [int] NULL,
	[Descripcion] [nchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BusquedaLaboral]    Script Date: 10/10/2022 10:24:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusquedaLaboral](
	[ID] [int] NOT NULL,
	[IDorganizacion] [int] NULL,
	[IDrol] [int] NULL,
	[fecha] [date] NULL,
	[Descripcion] [nchar](250) NULL,
	[IDidioma] [int] NULL,
 CONSTRAINT [PK_BusquedaLaboral] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ciudad]    Script Date: 10/10/2022 10:24:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ciudad](
	[ID] [int] NOT NULL,
	[Nombre] [nchar](50) NULL,
	[IDprovincia] [int] NULL,
 CONSTRAINT [PK_Ciudad] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Documento]    Script Date: 10/10/2022 10:24:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Documento](
	[ID] [int] NOT NULL,
	[Descripcion] [nchar](20) NULL,
 CONSTRAINT [PK_Documento] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 10/10/2022 10:24:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estado](
	[ID] [int] NOT NULL,
	[Descripcion] [nchar](25) NULL,
 CONSTRAINT [PK_Estado] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genero]    Script Date: 10/10/2022 10:24:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genero](
	[ID] [int] NOT NULL,
	[Descripcion] [nchar](10) NULL,
 CONSTRAINT [PK_Genero] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Idioma]    Script Date: 10/10/2022 10:24:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Idioma](
	[ID] [int] NOT NULL,
	[Descripcion] [nchar](10) NULL,
 CONSTRAINT [PK_Idioma] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Organizacion]    Script Date: 10/10/2022 10:24:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organizacion](
	[ID] [int] NOT NULL,
	[Razon Social] [nchar](250) NULL,
	[IDbarrio] [int] NULL,
	[direccion] [nchar](50) NULL,
	[CUIT] [nchar](20) NULL,
	[Email] [nchar](20) NULL,
	[Celular] [nchar](20) NULL,
	[IDtipo] [int] NULL,
 CONSTRAINT [PK_Organizacion] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 10/10/2022 10:24:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pais](
	[ID] [int] NOT NULL,
	[Nombre] [nchar](50) NULL,
 CONSTRAINT [PK_Pais] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Postulante]    Script Date: 10/10/2022 10:24:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Postulante](
	[ID] [int] NOT NULL,
	[Nombre] [nchar](25) NOT NULL,
	[Apellido] [nchar](25) NOT NULL,
	[IDdocumento] [int] NULL,
	[NumDocumento] [nchar](25) NULL,
	[FechaDeNacimiento] [date] NULL,
	[Direccion] [nchar](50) NULL,
	[IDbarrio] [int] NULL,
	[email] [nchar](20) NULL,
	[celular] [nchar](20) NULL,
	[IDestado] [int] NULL,
	[IDgenero] [int] NULL,
 CONSTRAINT [PK_Postulante] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Postulante_Idioma]    Script Date: 10/10/2022 10:24:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Postulante_Idioma](
	[IDpostulante] [int] NOT NULL,
	[IDidioma] [int] NOT NULL,
	[IDestado] [int] NULL,
	[Descripcion] [nchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Postulante_ROL]    Script Date: 10/10/2022 10:24:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Postulante_ROL](
	[IDpostulante] [int] NOT NULL,
	[IDrol] [int] NOT NULL,
	[Descripcion] [text] NULL,
	[IDestado] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Postulante_Tecnologia]    Script Date: 10/10/2022 10:24:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Postulante_Tecnologia](
	[IDpostulante] [int] NOT NULL,
	[IDtecnologia] [int] NOT NULL,
	[IDestado] [int] NULL,
	[Descripcion] [nchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provincia]    Script Date: 10/10/2022 10:24:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provincia](
	[ID] [int] NOT NULL,
	[Nombre] [nchar](50) NULL,
	[IDpais] [int] NULL,
 CONSTRAINT [PK_Provincia] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rol]    Script Date: 10/10/2022 10:24:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rol](
	[ID] [int] NOT NULL,
	[Descripcion] [nchar](250) NULL,
 CONSTRAINT [PK_Rol] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tecnologia]    Script Date: 10/10/2022 10:24:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tecnologia](
	[ID] [int] NOT NULL,
	[Descripcion] [nchar](50) NULL,
 CONSTRAINT [PK_Tecnologia] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoOrganizacion]    Script Date: 10/10/2022 10:24:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoOrganizacion](
	[ID] [int] NOT NULL,
	[Descripcion] [nchar](50) NULL,
 CONSTRAINT [PK_TipoOrganizacion] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Barrio]  WITH CHECK ADD  CONSTRAINT [FK_Barrio_Barrio] FOREIGN KEY([IDciudad])
REFERENCES [dbo].[Ciudad] ([ID])
GO
ALTER TABLE [dbo].[Barrio] CHECK CONSTRAINT [FK_Barrio_Barrio]
GO
ALTER TABLE [dbo].[Barrio]  WITH CHECK ADD  CONSTRAINT [FK_Barrio_Barrio1] FOREIGN KEY([ID])
REFERENCES [dbo].[Barrio] ([ID])
GO
ALTER TABLE [dbo].[Barrio] CHECK CONSTRAINT [FK_Barrio_Barrio1]
GO
ALTER TABLE [dbo].[Busqueda_Tecnologia]  WITH CHECK ADD  CONSTRAINT [FK_Busqueda_Tecnologia_BusquedaLaboral] FOREIGN KEY([IDbusqueda])
REFERENCES [dbo].[BusquedaLaboral] ([ID])
GO
ALTER TABLE [dbo].[Busqueda_Tecnologia] CHECK CONSTRAINT [FK_Busqueda_Tecnologia_BusquedaLaboral]
GO
ALTER TABLE [dbo].[Busqueda_Tecnologia]  WITH CHECK ADD  CONSTRAINT [FK_Busqueda_Tecnologia_Estado] FOREIGN KEY([IDestado])
REFERENCES [dbo].[Estado] ([ID])
GO
ALTER TABLE [dbo].[Busqueda_Tecnologia] CHECK CONSTRAINT [FK_Busqueda_Tecnologia_Estado]
GO
ALTER TABLE [dbo].[Busqueda_Tecnologia]  WITH CHECK ADD  CONSTRAINT [FK_Busqueda_Tecnologia_Tecnologia] FOREIGN KEY([IDtecnologia])
REFERENCES [dbo].[Tecnologia] ([ID])
GO
ALTER TABLE [dbo].[Busqueda_Tecnologia] CHECK CONSTRAINT [FK_Busqueda_Tecnologia_Tecnologia]
GO
ALTER TABLE [dbo].[BusquedaLaboral]  WITH CHECK ADD  CONSTRAINT [FK_BusquedaLaboral_Idioma] FOREIGN KEY([IDidioma])
REFERENCES [dbo].[Idioma] ([ID])
GO
ALTER TABLE [dbo].[BusquedaLaboral] CHECK CONSTRAINT [FK_BusquedaLaboral_Idioma]
GO
ALTER TABLE [dbo].[BusquedaLaboral]  WITH CHECK ADD  CONSTRAINT [FK_BusquedaLaboral_Organizacion] FOREIGN KEY([IDorganizacion])
REFERENCES [dbo].[Organizacion] ([ID])
GO
ALTER TABLE [dbo].[BusquedaLaboral] CHECK CONSTRAINT [FK_BusquedaLaboral_Organizacion]
GO
ALTER TABLE [dbo].[BusquedaLaboral]  WITH CHECK ADD  CONSTRAINT [FK_BusquedaLaboral_ROL] FOREIGN KEY([IDrol])
REFERENCES [dbo].[Rol] ([ID])
GO
ALTER TABLE [dbo].[BusquedaLaboral] CHECK CONSTRAINT [FK_BusquedaLaboral_ROL]
GO
ALTER TABLE [dbo].[Ciudad]  WITH CHECK ADD  CONSTRAINT [FK_Ciudad_Provincia] FOREIGN KEY([IDprovincia])
REFERENCES [dbo].[Provincia] ([ID])
GO
ALTER TABLE [dbo].[Ciudad] CHECK CONSTRAINT [FK_Ciudad_Provincia]
GO
ALTER TABLE [dbo].[Organizacion]  WITH CHECK ADD  CONSTRAINT [FK_Organizacion_Barrio] FOREIGN KEY([IDbarrio])
REFERENCES [dbo].[Barrio] ([ID])
GO
ALTER TABLE [dbo].[Organizacion] CHECK CONSTRAINT [FK_Organizacion_Barrio]
GO
ALTER TABLE [dbo].[Organizacion]  WITH CHECK ADD  CONSTRAINT [FK_Organizacion_TipoOrganizacion] FOREIGN KEY([IDtipo])
REFERENCES [dbo].[TipoOrganizacion] ([ID])
GO
ALTER TABLE [dbo].[Organizacion] CHECK CONSTRAINT [FK_Organizacion_TipoOrganizacion]
GO
ALTER TABLE [dbo].[Postulante]  WITH CHECK ADD  CONSTRAINT [FK_Postulante_Barrio] FOREIGN KEY([IDbarrio])
REFERENCES [dbo].[Barrio] ([ID])
GO
ALTER TABLE [dbo].[Postulante] CHECK CONSTRAINT [FK_Postulante_Barrio]
GO
ALTER TABLE [dbo].[Postulante]  WITH CHECK ADD  CONSTRAINT [FK_Postulante_Documento1] FOREIGN KEY([IDdocumento])
REFERENCES [dbo].[Documento] ([ID])
GO
ALTER TABLE [dbo].[Postulante] CHECK CONSTRAINT [FK_Postulante_Documento1]
GO
ALTER TABLE [dbo].[Postulante]  WITH CHECK ADD  CONSTRAINT [FK_Postulante_Estado] FOREIGN KEY([IDestado])
REFERENCES [dbo].[Estado] ([ID])
GO
ALTER TABLE [dbo].[Postulante] CHECK CONSTRAINT [FK_Postulante_Estado]
GO
ALTER TABLE [dbo].[Postulante]  WITH CHECK ADD  CONSTRAINT [FK_Postulante_Genero] FOREIGN KEY([IDgenero])
REFERENCES [dbo].[Genero] ([ID])
GO
ALTER TABLE [dbo].[Postulante] CHECK CONSTRAINT [FK_Postulante_Genero]
GO
ALTER TABLE [dbo].[Postulante_Idioma]  WITH CHECK ADD  CONSTRAINT [FK_Postulante_Idioma_Estado] FOREIGN KEY([IDestado])
REFERENCES [dbo].[Estado] ([ID])
GO
ALTER TABLE [dbo].[Postulante_Idioma] CHECK CONSTRAINT [FK_Postulante_Idioma_Estado]
GO
ALTER TABLE [dbo].[Postulante_Idioma]  WITH CHECK ADD  CONSTRAINT [FK_Postulante_Idioma_Idioma] FOREIGN KEY([IDidioma])
REFERENCES [dbo].[Idioma] ([ID])
GO
ALTER TABLE [dbo].[Postulante_Idioma] CHECK CONSTRAINT [FK_Postulante_Idioma_Idioma]
GO
ALTER TABLE [dbo].[Postulante_Idioma]  WITH CHECK ADD  CONSTRAINT [FK_Postulante_Idioma_Postulante] FOREIGN KEY([IDpostulante])
REFERENCES [dbo].[Postulante] ([ID])
GO
ALTER TABLE [dbo].[Postulante_Idioma] CHECK CONSTRAINT [FK_Postulante_Idioma_Postulante]
GO
ALTER TABLE [dbo].[Postulante_ROL]  WITH CHECK ADD  CONSTRAINT [FK_Postulante_ROL_Estado] FOREIGN KEY([IDestado])
REFERENCES [dbo].[Estado] ([ID])
GO
ALTER TABLE [dbo].[Postulante_ROL] CHECK CONSTRAINT [FK_Postulante_ROL_Estado]
GO
ALTER TABLE [dbo].[Postulante_ROL]  WITH CHECK ADD  CONSTRAINT [FK_Postulante_ROL_Postulante] FOREIGN KEY([IDpostulante])
REFERENCES [dbo].[Postulante] ([ID])
GO
ALTER TABLE [dbo].[Postulante_ROL] CHECK CONSTRAINT [FK_Postulante_ROL_Postulante]
GO
ALTER TABLE [dbo].[Postulante_ROL]  WITH CHECK ADD  CONSTRAINT [FK_Postulante_ROL_Rol] FOREIGN KEY([IDrol])
REFERENCES [dbo].[Rol] ([ID])
GO
ALTER TABLE [dbo].[Postulante_ROL] CHECK CONSTRAINT [FK_Postulante_ROL_Rol]
GO
ALTER TABLE [dbo].[Postulante_Tecnologia]  WITH CHECK ADD  CONSTRAINT [FK_Postulante_Tecnologia_Estado] FOREIGN KEY([IDestado])
REFERENCES [dbo].[Estado] ([ID])
GO
ALTER TABLE [dbo].[Postulante_Tecnologia] CHECK CONSTRAINT [FK_Postulante_Tecnologia_Estado]
GO
ALTER TABLE [dbo].[Postulante_Tecnologia]  WITH CHECK ADD  CONSTRAINT [FK_Postulante_Tecnologia_Postulante] FOREIGN KEY([IDpostulante])
REFERENCES [dbo].[Postulante] ([ID])
GO
ALTER TABLE [dbo].[Postulante_Tecnologia] CHECK CONSTRAINT [FK_Postulante_Tecnologia_Postulante]
GO
ALTER TABLE [dbo].[Postulante_Tecnologia]  WITH CHECK ADD  CONSTRAINT [FK_Postulante_Tecnologia_Tecnologia] FOREIGN KEY([IDtecnologia])
REFERENCES [dbo].[Tecnologia] ([ID])
GO
ALTER TABLE [dbo].[Postulante_Tecnologia] CHECK CONSTRAINT [FK_Postulante_Tecnologia_Tecnologia]
GO
