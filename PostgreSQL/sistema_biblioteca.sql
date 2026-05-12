/*
Creación de tablas de Sistema Bibliotecario
author: bluebul
 */
CREATE TABLE Editorial (
    codigo VARCHAR (10) PRIMARY KEY,
    nombre VARCHAR(25) NOT NULL,
    pais VARCHAR(25) NOT NULL
);

CREATE TABLE Telefono_editorial (
    codigo_editorial VARCHAR (10),
    telefono VARCHAR(10),
    PRIMARY KEY (codigo_editorial, telefono),
    FOREIGN KEY (codigo_editorial) REFERENCES Editorial (codigo)
);

CREATE TABLE Libro (
    ISBN VARCHAR (15) PRIMARY KEY,
    descripcion TEXT,
    anio_publicacion VARCHAR(4),
    titulo VARCHAR(25) NOT NULL,
    codigo_editorial VARCHAR(25) NOT NULL,
    FOREIGN KEY (codigo_editorial) REFERENCES Editorial (codigo)
);

CREATE TABLE Autor (
    id VARCHAR (10) PRIMARY KEY,
    seudononimo VARCHAR(25) NOT NULL
);

CREATE TABLE Autor_Libro (
    ISBN_Libro VARCHAR(15),
    id_Autor VARCHAR (10),
    PRIMARY KEY (ISBN_Libro, id_Autor),
    FOREIGN KEY (ISBN_Libro) REFERENCES Libro (ISBN),
    FOREIGN KEY (id_Autor) REFERENCES Autor(id)
);

CREATE TABLE Genero_Literario (
    id_genero VARCHAR (10) PRIMARY KEY,
    Nombre_genero VARCHAR (25) NOT NULL
);

CREATE TABLE Libro_GeneroLiterario (
    ISBN_Libro VARCHAR (15),
    id_genero VARCHAR (10),
    PRIMARY KEY (ISBN_Libro, id_genero),
    FOREIGN KEY (ISBN_Libro) REFERENCES Libro (ISBN),
    FOREIGN KEY (id_genero) REFERENCES Genero_Literario (id_genero)
);

CREATE TABLE Lector (
    cedula VARCHAR(10) PRIMARY KEY,
    nombres VARCHAR(25) NOT NULL,
    apellidos VARCHAR(25) NOT NULL,
    correo_electronico VARCHAR(25) UNIQUE
);

CREATE TABLE Ejemplar (
    id_ejemplar VARCHAR(10) PRIMARY KEY,
    estado VARCHAR(10) CHECK (estado IN ('prestado', 'disponible')) NOT NULL,
    ISBN_Libro VARCHAR(15),
    FOREIGN KEY (ISBN_Libro) REFERENCES Libro (ISBN)
);

CREATE TABLE Prestamo_Ejemplar (
    cedula_lector VARCHAR (10),
    id_ejemplar VARCHAR (10),
    fecha_prestamo DATE NOT NULL,
    fecha_estimada_devolucion DATE,
    PRIMARY KEY (cedula_lector, id_ejemplar),
    FOREIGN KEY (cedula_lector) REFERENCES Lector (cedula),
    FOREIGN KEY (id_ejemplar) REFERENCES Ejemplar (id_ejemplar)
);
