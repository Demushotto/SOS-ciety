INSERT INTO estudiante
(id_estudiante, codigo_estudiante, nombre, apellido, numero_contacto, direccion)
VALUES
(1, 'SOS-00001', 'Luis Fernando', 'Quispe Mamani', '76451238', 'Villa Pagador, calle S/N, Cochabamba'),
(2, 'SOS-00002', 'María Elena', 'Choquehuanca Flores', '71238945', 'Villa Coronilla, pasaje Los Álamos Nº 12'),
(3, 'SOS-00003', 'José Miguel', 'Condori Huanca', '68541237', 'Alto de la Alianza, calle 4 Nº 230'),
(4, 'SOS-00004', 'Nayra Alejandra', 'Ticona Vargas', '75412896', 'Villa México, calle Beni Nº 87'),
(5, 'SOS-00005', 'Juan Carlos', 'Colque Ramos', '72345618', 'Zona Pacata, av. Circunvalación Nº 145'),
(6, 'SOS-00006', 'Ruth Noemí', 'Challapa Cruz', '69874125', 'Cerro San Pedro, calle S/N'),
(7, 'SOS-00007', 'Kevin Alexander', 'Aruquipa López', '74125698', 'Villa Sebastián Pagador, calle 8 Nº 56'),
(8, 'SOS-00008', 'Deysi Maribel', 'Huanca Quispe', '76543219', 'Zona Temporal, calle Los Pinos Nº 21'),
(9, 'SOS-00009', 'Brayan Rodrigo', 'Céspedes Torrico', '70214589', 'Muyurina, av. Suecia Nº 310'),
(10, 'SOS-00010', 'Lizeth Carolina', 'Villca Nina', '78965412', 'Zona Molle, calle Uyuni Nº 45'),
(11, 'SOS-00011', 'Jorge Andrés', 'Rojas Aguilar', '73456128', 'La Tamborada, calle S/N'),
(12, 'SOS-00012', 'Claudia Fernanda', 'Gutiérrez Apaza', '75698123', 'Valle Hermoso, calle Los Claveles Nº 9'),
(13, 'SOS-00013', 'Samuel Elías', 'Zurita Cano', '71236745', 'La Chimba, calle Aniceto Arce Nº 178'),
(14, 'SOS-00014', 'Daniela Alejandra', 'Copa Fernández', '74512368', 'Pampa San Miguel, calle S/N'),
(15, 'SOS-00015', 'Roberto Carlos', 'Villarroel Paz', '72381456', 'Villa Granado, calle 3 Nº 67'),
(16, 'SOS-00016', 'Aracely Belén', 'Chipana Soto', '76812453', 'Alto Cochabamba, calle San Martín Nº 240'),
(17, 'SOS-00017', 'Marco Antonio', 'Cáceres Mendoza', '70985632', 'Quillacollo, av. Blanco Galindo km 6'),
(18, 'SOS-00018', 'Silvia Jhovana', 'Llusco Quispe', '75123984', 'Sacaba, zona El Abra, calle S/N'),
(19, 'SOS-00019', 'Edwin Marcelo', 'Yujra Callisaya', '73894512', 'Tiquipaya, calle Cochabamba Nº 33'),
(20, 'SOS-00020', 'Valeria Nicole', 'Orellana Ríos', '76231584', 'Colcapirhua, calle Sucre Nº 115'),
(21, 'SOS-00021', 'José Luis', 'Puma Huayta', '71567823', 'Zona San Antonio, calle 2 Nº 8'),
(22, 'SOS-00022', 'Griselda Roxana', 'Sejas Arce', '74985231', 'Arocagua, calle S/N');

INSERT INTO curso (id_curso, nombre, fecha, descripcion) VALUES
(1, 'Apoyo escolar y nivelación primaria', '2026-02-09',
'Refuerzo en lectura, escritura y matemáticas para niños y niñas con retraso escolar o que abandonaron temporalmente la escuela.'),
(2, 'Taller de panadería y repostería', '2026-03-02',
'Capacitación técnica en panadería y repostería artesanal orientada a la generación de ingresos para adolescentes y madres jóvenes.'),
(3, 'Taller de carpintería básica', '2026-03-05',
'Formación en carpintería y elaboración de muebles sencillos, con énfasis en seguridad laboral y trabajo en equipo.'),
(4, 'Taller de arte, pintura y muralismo', '2026-03-10',
'Espacio de expresión artística y muralismo comunitario para fortalecer la autoestima y la identidad de los participantes.'),
(5, 'Taller de música: charango y guitarra', '2026-04-06',
'Iniciación musical en charango y guitarra, instrumentos tradicionales bolivianos, como herramienta de contención y disciplina.'),
(6, 'Alfabetización digital y computación básica', '2026-04-13',
'Uso básico de computadora, internet, correo electrónico y herramientas digitales para el estudio y el trabajo.'),
(7, 'Taller de tejido y manualidades', '2026-05-04',
'Producción de tejidos y artesanías con técnicas andinas, fomentando la creatividad y el rescate cultural.'),
(8, 'Fútbol y deporte recreativo', '2026-05-11',
'Actividades deportivas y recreativas que promueven la salud, la disciplina y la integración entre los estudiantes.'),
(9, 'Taller de emprendimiento y habilidades para la vida', '2026-08-03',
'Formación en planificación de pequeños emprendimientos, manejo de dinero, comunicación y resolución de conflictos.');

INSERT INTO usuario
(id_usuario, nombre, apellido, correo, contrasena)
VALUES
(1, 'Oscar', 'Bustamante Zurita', 'oscar.bustamante@estrellasenlacalle.org', '12345678'),
(2, 'Silvana Rocío', 'Méndez Ferrufino', 'silvana.mendez@estrellasenlacalle.org', '23456789'),
(3, 'Carla Patricia', 'Arce Villarroel', 'carla.arce@estrellasenlacalle.org', '34567890'),
(4, 'Juan Carlos', 'Ledezma Fuentes', 'juan.ledezma@estrellasenlacalle.org', '45678901'),
(5, 'María Antonieta', 'Soliz Cabrera', 'antonieta.soliz@estrellasenlacalle.org', '56789012'),
(6, 'Grover Antonio', 'Mamani Quispe', 'grover.mamani@estrellasenlacalle.org', '67890123'),
(7, 'Adelaida', 'Nina Choque', 'adelaida.nina@estrellasenlacalle.org', '78901234'),
(8, 'Fabiola Andrea', 'Rojas Zambrana', 'fabiola.rojas@estrellasenlacalle.org', '89012345');

INSERT INTO inscripciones (fecha_inscripcion, id_estudiante, id_curso) VALUES
('2026-02-04', 1, 1),
('2026-02-05', 5, 1),
('2026-02-06', 14, 1),
('2026-02-25', 2, 2),
('2026-02-26', 4, 2),
('2026-02-27', 13, 2),
('2026-03-02', 7, 3),
('2026-03-03', 15, 3),
('2026-03-04', 17, 3),
('2026-03-05', 4, 4),
('2026-03-06', 12, 4),
('2026-03-09', 16, 4),
('2026-03-30', 1, 5),
('2026-04-01', 10, 5),
('2026-04-02', 18, 5),
('2026-04-07', 3, 6),
('2026-04-08', 8, 6),
('2026-04-09', 19, 6),
('2026-04-28', 2, 7),
('2026-04-29', 6, 7),
('2026-05-05', 5, 8),
('2026-05-06', 9, 8),
('2026-07-28', 8, 9),
('2026-07-29', 12, 9),
('2026-07-30', 22, 9);

INSERT INTO actividad
(id_actividad, nombre, descripcion, fecha, id_curso)
VALUES
(1, 'Planificación de emprendimientos', 'Actividad de planificación de pequeños emprendimientos.', '2026-10-03', 9),
(2, 'Organización de un negocio', 'Actividad sobre organización y administración de un negocio.', '2026-10-10', 9),
(3, 'Presentación de productos', 'Presentación de ideas y productos de emprendimiento.', '2026-10-17', 9),
(4, 'Cálculo de costos', 'Ejercicio práctico para calcular costos y precios.', '2026-10-24', 9),
(5, 'Trabajo en equipo', 'Actividad grupal para fortalecer la colaboración.', '2026-10-31', 9),
(6, 'Exposición de proyectos', 'Presentación de proyectos de emprendimiento.', '2026-11-07', 9),
(7, 'Comprensión lectora', 'Ejercicios de lectura y comprensión de textos.', '2026-10-05', 1),
(8, 'Escritura y redacción', 'Prácticas de escritura y formación de oraciones.', '2026-10-12', 1),
(9, 'Matemáticas básicas', 'Ejercicios de operaciones matemáticas.', '2026-10-19', 1),
(10, 'Resolución de problemas', 'Resolución de problemas matemáticos y escolares.', '2026-10-26', 1),
(11, 'Entrenamiento deportivo', 'Ejercicios físicos y coordinación en equipo.', '2026-10-10', 8),
(12, 'Partido recreativo', 'Actividad deportiva de integración.', '2026-10-17', 8);

INSERT INTO asistencia (fecha, estado, id_estudiante, id_curso) VALUES
('2026-10-03', 'asistio', 8, 9),
('2026-10-03', 'asistio', 12, 9),
('2026-10-03', 'no asistio', 22, 9),
('2026-10-10', 'asistio', 8, 9),
('2026-10-10', 'asistio', 22, 9),
('2026-10-10', 'no asistio', 12, 9),
('2026-10-17', 'asistio', 8, 9),
('2026-10-17', 'asistio', 12, 9),
('2026-10-17', 'asistio', 22, 9),
('2026-10-24', 'asistio', 8, 9),
('2026-10-24', 'no asistio', 12, 9),
('2026-10-31', 'asistio', 12, 9),
('2026-10-31', 'asistio', 22, 9),
('2026-11-07', 'asistio', 8, 9),
('2026-11-07', 'asistio', 12, 9),
('2026-10-05', 'asistio', 1, 1),
('2026-10-05', 'asistio', 5, 1),
('2026-10-05', 'no asistio', 14, 1),
('2026-10-12', 'asistio', 1, 1),
('2026-10-12', 'no asistio', 5, 1),
('2026-10-19', 'asistio', 14, 1),
('2026-10-26', 'asistio', 1, 1),
('2026-10-10', 'asistio', 5, 8),
('2026-10-10', 'asistio', 9, 8),
('2026-10-17', 'no asistio', 5, 8);

UPDATE asistencia AS a
INNER JOIN actividad AS ac
    ON ac.id_curso = a.id_curso
    AND ac.fecha = a.fecha
SET a.id_actividad = ac.id_actividad;


INSERT INTO observacion
(fecha, comentario, id_estudiante, id_usuario)
VALUES
('2026-03-13', 'Se integra con entusiasmo al taller de panadería y muestra buena disposición para el trabajo en grupo.', 2, 2),
('2026-03-20', 'Presentó dificultades para asistir con regularidad por responsabilidades laborales familiares; se coordinó con la trabajadora social.', 7, 3),
('2026-04-08', 'Avanzó notablemente en lectura y escritura; se recomienda continuar con el refuerzo de matemáticas.', 1, 4),
('2026-04-15', 'Participa activamente en el taller de arte y expresa sus emociones con mayor confianza.', 4, 2),
('2026-04-22', 'La familia requiere apoyo con documentación de identidad para completar su inscripción escolar.', 14, 3),
('2026-05-06', 'Muestra interés por la música y practica el charango fuera del horario del taller.', 10, 4),
('2026-05-20', 'Se observa mejora en su autoestima y en la relación con sus compañeros durante las actividades deportivas.', 9, 2),
('2026-06-03', 'Cumple con las normas de higiene y seguridad del taller de carpintería; buen desempeño manual.', 15, 6),
('2026-06-17', 'Se conversó con la madre sobre la importancia de la asistencia continua al apoyo escolar.', 5, 3),
('2026-07-08', 'Finalizó el módulo básico de computación y ya utiliza el correo electrónico para tareas escolares.', 3, 4),
('2026-08-12', 'Inició el taller de emprendimiento con una idea de venta de repostería; requiere acompañamiento en costos.', 8, 4),
('2026-09-09', 'Participó en la feria de emprendimientos de la Fundación y presentó su producto con seguridad.', 12, 1),
('2026-09-23', 'Se encuentra en seguimiento psicológico por duelo familiar; asiste con regularidad y muestra apertura al diálogo.', 22, 2),
('2026-10-14', 'Colabora con el orden y la limpieza del espacio del taller; se destaca su compañerismo.', 19, 7),
('2026-11-04', 'Cerró el año con asistencia constante y mejoras en sus calificaciones escolares; se sugiere continuar en 2027.', 1, 1);


INSERT INTO habilidad (id_habilidad, nombre, descripcion) VALUES
(1, 'Comunicación', 'Capacidad para expresar ideas y comunicarse con otras personas.'),
(2, 'Trabajo en equipo', 'Capacidad para colaborar y trabajar con otras personas.'),
(3, 'Creatividad', 'Capacidad para crear ideas y soluciones nuevas.'),
(4, 'Lectura y escritura', 'Habilidad para leer, comprender y redactar textos.'),
(5, 'Pensamiento matemático', 'Capacidad para resolver operaciones y problemas matemáticos.'),
(6, 'Manejo de herramientas digitales', 'Uso básico de computadoras y herramientas digitales.'),
(7, 'Coordinación motriz', 'Capacidad para realizar movimientos y actividades físicas.'),
(8, 'Emprendimiento', 'Capacidad para planificar y desarrollar ideas de negocio.');


INSERT INTO estudiante_habilidad
(id_estudiante, id_habilidad, id_actividad, nivel, fecha_registro, observacion)
VALUES
(1, 4, 7, 'intermedio', '2026-10-05', 'Presenta avances en lectura y escritura.'),
(1, 5, 9, 'basico', '2026-10-19', 'Continúa practicando operaciones matemáticas.'),
(2, 2, NULL, 'intermedio', '2026-03-13', 'Muestra disposición para trabajar en grupo.'),
(3, 6, NULL, 'intermedio', '2026-07-08', 'Utiliza herramientas digitales y correo electrónico.'),
(4, 3, NULL, 'intermedio', '2026-04-15', 'Expresa sus ideas mediante actividades artísticas.'),
(5, 4, 8, 'basico', '2026-10-12', 'Continúa fortaleciendo la escritura.'),
(8, 8, 1, 'basico', '2026-08-12', 'Tiene una idea inicial de emprendimiento.'),
(9, 7, 11, 'intermedio', '2026-10-10', 'Participa en actividades deportivas.'),
(10, 3, NULL, 'intermedio', '2026-05-06', 'Demuestra interés por la música.'),
(12, 1, 6, 'intermedio', '2026-11-07', 'Presenta sus ideas con mayor seguridad.'),
(15, 7, NULL, 'intermedio', '2026-06-03', 'Demuestra habilidad en actividades manuales.'),
(19, 2, NULL, 'intermedio', '2026-10-14', 'Colabora con sus compañeros.'),
(22, 8, 3, 'basico', '2026-10-17', 'Participa en actividades de emprendimiento.');


INSERT INTO evaluacion
(id_estudiante, id_curso, id_actividad, id_usuario, fecha,
 tipo_evaluacion, puntaje, puntaje_maximo, observacion)
VALUES
(1, 1, 7, 4, '2026-10-05', 'Comprensión lectora', 80, 100,
 'Buen avance en comprensión de textos.'),
(1, 1, 9, 4, '2026-10-19', 'Matemáticas', 70, 100,
 'Necesita continuar practicando operaciones.'),
(8, 9, 1, 4, '2026-10-03', 'Participación', 85, 100,
 'Presenta interés en desarrollar su emprendimiento.'),
(12, 9, 6, 1, '2026-11-07', 'Presentación de proyecto', 90, 100,
 'Expone sus ideas con seguridad.'),
(15, 3, NULL, 6, '2026-06-03', 'Trabajo práctico', 88, 100,
 'Buen desempeño en el trabajo manual.'),
(3, 6, NULL, 4, '2026-07-08', 'Computación básica', 85, 100,
 'Maneja correctamente las herramientas digitales.'),
(9, 8, 11, 2, '2026-10-10', 'Participación deportiva', 90, 100,
 'Participa activamente en las actividades deportivas.');


CREATE VIEW vw_porcentaje_asistencia AS
SELECT
    e.id_estudiante,
    CONCAT(e.nombre, ' ', e.apellido) AS estudiante,
    c.id_curso,
    c.nombre AS curso,
    COUNT(a.id_asistencia) AS total_clases,

    SUM(
        CASE WHEN a.estado = 'asistio'
        THEN 1 ELSE 0 END
    ) AS asistencias,

    SUM(
        CASE WHEN a.estado = 'no asistio'
        THEN 1 ELSE 0 END
    ) AS inasistencias,

    ROUND(
        SUM(CASE WHEN a.estado = 'asistio'
            THEN 1 ELSE 0 END) * 100.0 /
        NULLIF(COUNT(a.id_asistencia), 0),
        2
    ) AS porcentaje_asistencia

FROM estudiante e
INNER JOIN asistencia a
    ON e.id_estudiante = a.id_estudiante
INNER JOIN curso c
    ON a.id_curso = c.id_curso

GROUP BY
    e.id_estudiante,
    e.nombre,
    e.apellido,
    c.id_curso,
    c.nombre;


CREATE VIEW vw_inasistencias AS
SELECT
    e.id_estudiante,
    CONCAT(e.nombre, ' ', e.apellido) AS estudiante,
    c.id_curso,
    c.nombre AS curso,
    COUNT(a.id_asistencia) AS cantidad_inasistencias

FROM asistencia a
INNER JOIN estudiante e
    ON a.id_estudiante = e.id_estudiante
INNER JOIN curso c
    ON a.id_curso = c.id_curso

WHERE a.estado = 'no asistio'

GROUP BY
    e.id_estudiante,
    e.nombre,
    e.apellido,
    c.id_curso,
    c.nombre;

CREATE VIEW vw_alertas_inasistencia AS
SELECT
    id_estudiante,
    estudiante,
    id_curso,
    curso,
    cantidad_inasistencias,
    'ALERTA: estudiante con 3 o más inasistencias'
        AS mensaje_alerta

FROM vw_inasistencias

WHERE cantidad_inasistencias >= 3;


CREATE VIEW vw_progreso_educativo AS
SELECT
    e.id_estudiante,
    CONCAT(e.nombre, ' ', e.apellido) AS estudiante,
    c.id_curso,
    c.nombre AS curso,

    (
        SELECT ev.puntaje
        FROM evaluacion ev
        WHERE ev.id_estudiante = e.id_estudiante
          AND ev.id_curso = c.id_curso
        ORDER BY ev.fecha ASC, ev.id_evaluacion ASC
        LIMIT 1
    ) AS puntaje_inicial,

    (
        SELECT ev.puntaje
        FROM evaluacion ev
        WHERE ev.id_estudiante = e.id_estudiante
          AND ev.id_curso = c.id_curso
        ORDER BY ev.fecha DESC, ev.id_evaluacion DESC
        LIMIT 1
    ) AS puntaje_actual,

    (
        SELECT ev.fecha
        FROM evaluacion ev
        WHERE ev.id_estudiante = e.id_estudiante
          AND ev.id_curso = c.id_curso
        ORDER BY ev.fecha ASC, ev.id_evaluacion ASC
        LIMIT 1
    ) AS fecha_evaluacion_inicial,

    (
        SELECT ev.fecha
        FROM evaluacion ev
        WHERE ev.id_estudiante = e.id_estudiante
          AND ev.id_curso = c.id_curso
        ORDER BY ev.fecha DESC, ev.id_evaluacion DESC
        LIMIT 1
    ) AS fecha_evaluacion_actual,

    (
        SELECT ev.puntaje
        FROM evaluacion ev
        WHERE ev.id_estudiante = e.id_estudiante
          AND ev.id_curso = c.id_curso
        ORDER BY ev.fecha DESC, ev.id_evaluacion DESC
        LIMIT 1
    )
    -
    (
        SELECT ev.puntaje
        FROM evaluacion ev
        WHERE ev.id_estudiante = e.id_estudiante
          AND ev.id_curso = c.id_curso
        ORDER BY ev.fecha ASC, ev.id_evaluacion ASC
        LIMIT 1
    ) AS progreso

FROM estudiante e
INNER JOIN evaluacion ev_base
    ON e.id_estudiante = ev_base.id_estudiante
INNER JOIN curso c
    ON ev_base.id_curso = c.id_curso

GROUP BY
    e.id_estudiante,
    e.nombre,
    e.apellido,
    c.id_curso,
    c.nombre;

