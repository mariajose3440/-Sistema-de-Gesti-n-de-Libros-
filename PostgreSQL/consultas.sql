/*
CONSULTAS REALIZADAS
DENTRO DE MI BASE DE DATOS biblioteca_bluebul
*/


/*
-- Primera Consulta:
Presentar los titulos y descripciones de los libros que pertenecen al  género 
existencialismo.
π titulo, descripcion(σ nombre_genero == 'Existencialismo' ((σ isbn == isbn_libro(libro ⋈ libro_generoliterario)) ⋈ genero_literario))

*/
SELECT titulo, descripcion 
FROM libro 
JOIN libro_generoliterario ON isbn = isbn_libro 
JOIN genero_literario ON genero_literario.id_genero = libro_generoliterario.id_genero 
WHERE nombre_genero = 'Existencialismo';

/*
-- Segunda Consulta:
π nombres, apellidos(σ cedula == cedula_lector(lector ⋈(prestamo_ejemplar ⋈(σ nombre_genero == 'Absurdismo' (σ isbn == isbn_libro(ejemplar ⋈ ((σ isbn == isbn_libro(libro ⋈ libro_generoliterario)) ⋈genero_literario)))))))
*/
SELECT nombres, apellidos
FROM lector
JOIN prestamo_ejemplar ON cedula = cedula_lector
JOIN ejemplar ON ejemplar.id_ejemplar = prestamo_ejemplar.id_ejemplar
JOIN libro ON isbn = isbn_libro
JOIN libro_generoliterario ON libro.isbn = libro_generoliterario.isbn_libro  
JOIN genero_literario ON genero_literario.id_genero = libro_generoliterario.id_genero  
WHERE nombre_genero= 'Absurdismo';

/*
-- Tercera Consulta:
¿Cuáles son los títulos de libros que fueron publicados por editoriales de España?
π titulo(σ pais == 'España' (σ codigo_editorial == codigo(libro ⋈ editorial)))
*/
SELECT titulo 
FROM libro 
JOIN editorial ON codigo_editorial = codigo 
WHERE pais = 'España';

/*
-- Cuarta Consulta:
¿Cuáles son los títulos de libros publicados en España o Francia?
(σ pais == 'España' (σ codigo_editorial == codigo(libro ⋈ editorial))) ∪ (σ pais == 'Francia' (σ codigo_editorial == codigo(libro ⋈ editorial)))
*/
SELECT titulo FROM libro
JOIN editorial ON codigo_editorial = codigo
WHERE pais = 'España'
UNION
SELECT titulo FROM libro
JOIN editorial ON codigo_editorial = codigo
WHERE pais = 'Francia';


/*
-- Quinta Consulta:
¿Cuales lectores nunca han tenido un prestamo?
*/
SELECT nombres, apellidos
FROM lector
EXCEPT
SELECT nombres, apellidos
FROM lector
JOIN prestamo_ejemplar ON cedula = cedula_lector;
