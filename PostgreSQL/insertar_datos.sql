/*
INSERTAR DATOS DENTRO DE MI BASE DE DATOS biblioteca_bluebul
*/


/*
-- EDITORIAL
*/
INSERT INTO Editorial VALUES ('ED001', 'Gallimard', 'Francia');
INSERT INTO Editorial VALUES ('ED002', 'Penguin Books', 'Reino Unido');
INSERT INTO Editorial VALUES ('ED003', 'Oxford Press', 'Reino Unido');
INSERT INTO Editorial VALUES ('ED004', 'Alianza Editorial', 'España');
INSERT INTO Editorial VALUES ('ED005', 'Siglo XXI', 'México');
INSERT INTO Editorial VALUES ('ED006', 'Anagrama', 'España');

/*
-- TELEFONO EDITORIAL
*/
INSERT INTO Telefono_editorial VALUES ('ED001', '0145123456');
INSERT INTO Telefono_editorial VALUES ('ED002', '0207654321');
INSERT INTO Telefono_editorial VALUES ('ED003', '0201234567');
INSERT INTO Telefono_editorial VALUES ('ED004', '0912345678');
INSERT INTO Telefono_editorial VALUES ('ED005', '0556789012');
INSERT INTO Telefono_editorial VALUES ('ED006', '0934512678');

/*
-- AUTOR
*/
INSERT INTO Autor VALUES ('A001', 'Camus');
INSERT INTO Autor VALUES ('A002', 'Dostoievski');
INSERT INTO Autor VALUES ('A003', 'Wilde');
INSERT INTO Autor VALUES ('A004', 'Kafka');
INSERT INTO Autor VALUES ('A005', 'Nietzsche');
INSERT INTO Autor VALUES ('A006', 'Sartre');
INSERT INTO Autor VALUES ('A007', 'Tolstoi');
INSERT INTO Autor VALUES ('A008', 'Huxley');
INSERT INTO Autor VALUES ('A009', 'Orwell');

/*
-- GENERO LITERARIO
*/
INSERT INTO Genero_Literario VALUES ('G001', 'Absurdismo');
INSERT INTO Genero_Literario VALUES ('G002', 'Existencialismo');
INSERT INTO Genero_Literario VALUES ('G003', 'Filosofía');
INSERT INTO Genero_Literario VALUES ('G004', 'Novela Gótica');
INSERT INTO Genero_Literario VALUES ('G005', 'Distopía');
INSERT INTO Genero_Literario VALUES ('G006', 'Realismo Ruso');
INSERT INTO Genero_Literario VALUES ('G007', 'Tragedia');
INSERT INTO Genero_Literario VALUES ('G008', 'Psicología');

/*
-- LIBRO
*/
INSERT INTO Libro VALUES ('978-2070360024', 'Historia de Meursault', '1942', 'El Extranjero', 'ED001');
INSERT INTO Libro VALUES ('978-2070360025', 'Reflexiones sobre el absurdo', '1942', 'El Mito de Sisifo', 'ED001');
INSERT INTO Libro VALUES ('978-0140449136', 'Raskolnikov y la culpa', '1866', 'Crimen y Castigo', 'ED002');
INSERT INTO Libro VALUES ('978-0141439570', 'La corrupcion del alma', '1890', 'El Retrato de Dorian Gray', 'ED003');
INSERT INTO Libro VALUES ('978-0805210897', 'Gregorio Samsa despierta transformado', '1915', 'La Metamorfosis', 'ED002');
INSERT INTO Libro VALUES ('978-0140441185', 'La guerra y el amor', '1869', 'Guerra y Paz', 'ED002');
INSERT INTO Libro VALUES ('978-0141185840', 'Un mundo sin libertad', '1932', 'Un Mundo Feliz', 'ED002');
INSERT INTO Libro VALUES ('978-0451524935', 'El gran hermano te vigila', '1949', '1984', 'ED002');
INSERT INTO Libro VALUES ('978-8420671963', 'La náusea existencial', '1938', 'La Nausea', 'ED004');
INSERT INTO Libro VALUES ('978-8420633749', 'Dios ha muerto', '1883', 'Asi Hablo Zaratustra', 'ED004');
INSERT INTO Libro VALUES ('978-8437604947', 'El proceso kafkiano', '1925', 'El Proceso', 'ED006');
INSERT INTO Libro VALUES ('978-8437601953', 'Anna y su trágico destino', '1877', 'Anna Karenina', 'ED004');

/*
-- AUTOR_LIBRO
*/
INSERT INTO Autor_Libro VALUES ('978-2070360024', 'A001');
INSERT INTO Autor_Libro VALUES ('978-2070360025', 'A001');
INSERT INTO Autor_Libro VALUES ('978-0140449136', 'A002');
INSERT INTO Autor_Libro VALUES ('978-0141439570', 'A003');
INSERT INTO Autor_Libro VALUES ('978-0805210897', 'A004');
INSERT INTO Autor_Libro VALUES ('978-0140441185', 'A007');
INSERT INTO Autor_Libro VALUES ('978-0141185840', 'A008');
INSERT INTO Autor_Libro VALUES ('978-0451524935', 'A009');
INSERT INTO Autor_Libro VALUES ('978-8420671963', 'A006');
INSERT INTO Autor_Libro VALUES ('978-8420633749', 'A005');
INSERT INTO Autor_Libro VALUES ('978-8437604947', 'A004');
INSERT INTO Autor_Libro VALUES ('978-8437601953', 'A007');

/*
-- LIBRO_GENEROLITERARIO
*/
INSERT INTO Libro_GeneroLiterario VALUES ('978-2070360024', 'G001');
INSERT INTO Libro_GeneroLiterario VALUES ('978-2070360024', 'G002');
INSERT INTO Libro_GeneroLiterario VALUES ('978-2070360025', 'G001');
INSERT INTO Libro_GeneroLiterario VALUES ('978-2070360025', 'G003');
INSERT INTO Libro_GeneroLiterario VALUES ('978-0140449136', 'G002');
INSERT INTO Libro_GeneroLiterario VALUES ('978-0140449136', 'G008');
INSERT INTO Libro_GeneroLiterario VALUES ('978-0141439570', 'G004');
INSERT INTO Libro_GeneroLiterario VALUES ('978-0805210897', 'G002');
INSERT INTO Libro_GeneroLiterario VALUES ('978-0805210897', 'G008');
INSERT INTO Libro_GeneroLiterario VALUES ('978-0140441185', 'G006');
INSERT INTO Libro_GeneroLiterario VALUES ('978-0140441185', 'G007');
INSERT INTO Libro_GeneroLiterario VALUES ('978-0141185840', 'G005');
INSERT INTO Libro_GeneroLiterario VALUES ('978-0451524935', 'G005');
INSERT INTO Libro_GeneroLiterario VALUES ('978-8420671963', 'G002');
INSERT INTO Libro_GeneroLiterario VALUES ('978-8420671963', 'G003');
INSERT INTO Libro_GeneroLiterario VALUES ('978-8420633749', 'G003');
INSERT INTO Libro_GeneroLiterario VALUES ('978-8420633749', 'G004');
INSERT INTO Libro_GeneroLiterario VALUES ('978-8437604947', 'G002');
INSERT INTO Libro_GeneroLiterario VALUES ('978-8437601953', 'G006');
INSERT INTO Libro_GeneroLiterario VALUES ('978-8437601953', 'G007');

/*
-- LECTOR
*/
INSERT INTO Lector VALUES ('0912345678', 'Blue', 'Rodriguez', 'blue@gmail.com');
INSERT INTO Lector VALUES ('0923456789', 'Maria', 'Garcia', 'maria@gmail.com');
INSERT INTO Lector VALUES ('0934567891', 'Carlos', 'Lopez', 'carlos@gmail.com');
INSERT INTO Lector VALUES ('0945678912', 'Ana', 'Paredes', 'ana@gmail.com');
INSERT INTO Lector VALUES ('0956789123', 'Diego', 'Mora', 'diego@gmail.com');
INSERT INTO Lector VALUES ('0967891234', 'Valeria', 'Torres', 'valeria@gmail.com');
INSERT INTO Lector VALUES ('0978912345', 'Sebastian', 'Reyes', 'sebastian@gmail.com');
INSERT INTO lector VALUES ('1150299876', 'NullTrace', 'DeusEx', 'nulltrace@gmail.com');

/*
-- EJEMPLAR
*/
INSERT INTO Ejemplar VALUES ('EJ001', 'prestado',   '978-2070360024');
INSERT INTO Ejemplar VALUES ('EJ002', 'disponible', '978-2070360024');
INSERT INTO Ejemplar VALUES ('EJ003', 'disponible', '978-2070360025');
INSERT INTO Ejemplar VALUES ('EJ004', 'prestado',   '978-0140449136');
INSERT INTO Ejemplar VALUES ('EJ005', 'disponible', '978-0141439570');
INSERT INTO Ejemplar VALUES ('EJ006', 'disponible', '978-0805210897');
INSERT INTO Ejemplar VALUES ('EJ007', 'prestado',   '978-0140441185');
INSERT INTO Ejemplar VALUES ('EJ008', 'disponible', '978-0141185840');
INSERT INTO Ejemplar VALUES ('EJ009', 'prestado',   '978-0451524935');
INSERT INTO Ejemplar VALUES ('EJ010', 'disponible', '978-8420671963');
INSERT INTO Ejemplar VALUES ('EJ011', 'disponible', '978-8420633749');
INSERT INTO Ejemplar VALUES ('EJ012', 'prestado',   '978-8437604947');
INSERT INTO Ejemplar VALUES ('EJ013', 'disponible', '978-8437601953');
INSERT INTO Ejemplar VALUES ('EJ014', 'disponible', '978-0805210897');

/*
-- PRESTAMO_EJEMPLAR
*/
INSERT INTO Prestamo_Ejemplar VALUES ('0912345678', 'EJ001', '2026-05-01', '2026-05-15');
INSERT INTO Prestamo_Ejemplar VALUES ('0923456789', 'EJ004', '2026-05-05', '2026-05-19');
INSERT INTO Prestamo_Ejemplar VALUES ('0934567891', 'EJ007', '2026-04-20', '2026-05-04');
INSERT INTO Prestamo_Ejemplar VALUES ('0945678912', 'EJ009', '2026-05-02', '2026-05-16');
INSERT INTO Prestamo_Ejemplar VALUES ('0956789123', 'EJ012', '2026-05-08', '2026-05-22');
INSERT INTO Prestamo_Ejemplar VALUES ('0967891234', 'EJ006', '2026-05-10', '2026-05-24');
INSERT INTO Prestamo_Ejemplar VALUES ('0978912345', 'EJ013', '2026-05-11', '2026-05-25');