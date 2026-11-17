USE SOS_star;
SET NAMES utf8mb4;


INSERT INTO estudiante (id_estudiante, nombre, apellido, numero_contacto, direccion) VALUES
(1,  'Luis Fernando', 'Quispe Mamani',        '76451238', 'Villa Pagador, calle S/N, Cochabamba'),
(2,  'María Elena',    'Choquehuanca Flores', '71238945', 'Villa Coronilla, pasaje Los Álamos Nº 12'),
(3,  'José Miguel',    'Condori Huanca',      '68541237', 'Alto de la Alianza, calle 4 Nº 230'),
(4,  'Nayra Alejandra','Ticona Vargas',       '75412896', 'Villa México, calle Beni Nº 87'),
(5,  'Juan Carlos',    'Colque Ramos',        '72345618', 'Zona Pacata, av. Circunvalación Nº 145'),
(6,  'Ruth Noemí',     'Challapa Cruz',       '69874125', 'Cerro San Pedro, calle S/N'),
(7,  'Kevin Alexander','Aruquipa López',      '74125698', 'Villa Sebastián Pagador, calle 8 Nº 56'),
(8,  'Deysi Maribel',  'Huanca Quispe',       '76543219', 'Zona Temporal, calle Los Pinos Nº 21'),
(9,  'Brayan Rodrigo', 'Céspedes Torrico',    '70214589', 'Muyurina, av. Suecia Nº 310'),
(10, 'Lizeth Carolina','Villca Nina',         '78965412', 'Zona Molle, calle Uyuni Nº 45'),
(11, 'Jorge Andrés',   'Rojas Aguilar',       '73456128', 'La Tamborada, calle S/N'),
(12, 'Claudia Fernanda','Gutiérrez Apaza',    '75698123', 'Valle Hermoso, calle Los Claveles Nº 9'),
(13, 'Samuel Elías',   'Zurita Cano',         '71236745', 'La Chimba, calle Aniceto Arce Nº 178'),
(14, 'Daniela Alejandra','Copa Fernández',    '74512368', 'Pampa San Miguel, calle S/N'),
(15, 'Roberto Carlos', 'Villarroel Paz',      '72381456', 'Villa Granado, calle 3 Nº 67'),
(16, 'Aracely Belén',  'Chipana Soto',        '76812453', 'Alto Cochabamba, calle San Martín Nº 240'),
(17, 'Marco Antonio',  'Cáceres Mendoza',     '70985632', 'Quillacollo, av. Blanco Galindo km 6'),
(18, 'Silvia Jhovana', 'Llusco Quispe',       '75123984', 'Sacaba, zona El Abra, calle S/N'),
(19, 'Edwin Marcelo',  'Yujra Callisaya',     '73894512', 'Tiquipaya, calle Cochabamba Nº 33'),
(20, 'Valeria Nicole', 'Orellana Ríos',       '76231584', 'Colcapirhua, calle Sucre Nº 115'),
(21, 'José Luis',      'Puma Huayta',         '71567823', 'Zona San Antonio, calle 2 Nº 8'),
(22, 'Griselda Roxana','Sejas Arce',          '74985231', 'Arocagua, calle S/N');


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


INSERT INTO usuario (id_usuario, nombre, apellido, correo, contrasena) VALUES
(1, 'Oscar',       'Bustamante Zurita',   'oscar.bustamante@estrellasenlacalle.org', '$2b$10$95uXN26Yp1TJP7EGw5xCOehANRSu.NNzzfbzz0vQoktsZkFu74Q2G'),
(2, 'Silvana Rocío','Méndez Ferrufino',   'silvana.mendez@estrellasenlacalle.org',   '$2b$10$i1mVnKq6gYmgtWrPl9Qqw.IOEtiMqkcHf9hJoXXd16M/Ne2xCnK0i'),
(3, 'Carla Patricia','Arce Villarroel',   'carla.arce@estrellasenlacalle.org',       '$2b$10$nNU5sL6LHnfh563l9GDUm.vcYn5xv6W2cR6QsNnhUD/NCobr0C9aK'),
(4, 'Juan Carlos', 'Ledezma Fuentes',     'juan.ledezma@estrellasenlacalle.org',     '$2b$10$SQ7CbfQdOjdAp.Vi9grxoOqdNz/J3tSNI/50gQH4mft0Z91IDjjj6'),
(5, 'María Antonieta','Soliz Cabrera',    'antonieta.soliz@estrellasenlacalle.org',  '$2b$10$Y9UQoxQ4gsFX2tFs/pgJjOQY.RmMD8iuKHg3CB4.ZIgTJn4cnbxEe'),
(6, 'Grover Antonio','Mamani Quispe',     'grover.mamani@estrellasenlacalle.org',    '$2b$10$6FKwSUPUP2D6bIbkx6RVfO8vpYMLGAImxHEvuHx5nXVgq.OG1XNs2'),
(7, 'Adelaida',    'Nina Choque',         'adelaida.nina@estrellasenlacalle.org',    '$2b$10$ZOY9PBljsqKoQ0kxsz0tquMsvGe31CgrOk8iX.orGbWbYVVH2Jnm2'),
(8, 'Fabiola Andrea','Rojas Zambrana',    'fabiola.rojas@estrellasenlacalle.org',    '$2b$10$T.etHmgl3J1s0HQAbLunxOnkVT0gjJGfeOVgT0ruOEK8/.hdYaHtq');


INSERT INTO inscripcion (fecha_inscripcion, id_estudiante, id_curso) VALUES
('2026-02-04', 1,  1),
('2026-02-05', 5,  1),
('2026-02-06', 14, 1),
('2026-02-25', 2,  2),
('2026-02-26', 4,  2),
('2026-02-27', 13, 2),
('2026-03-02', 7,  3),
('2026-03-03', 15, 3),
('2026-03-04', 17, 3),
('2026-03-05', 4,  4),
('2026-03-06', 12, 4),
('2026-03-09', 16, 4),
('2026-03-30', 1,  5),
('2026-04-01', 10, 5),
('2026-04-02', 18, 5),
('2026-04-07', 3,  6),
('2026-04-08', 8,  6),
('2026-04-09', 19, 6),
('2026-04-28', 2,  7),
('2026-04-29', 6,  7),
('2026-05-05', 5,  8),
('2026-05-06', 9,  8),
('2026-07-28', 8,  9),
('2026-07-29', 12, 9),
('2026-07-30', 22, 9);


INSERT INTO asistencia (fecha, estado, id_estudiante, id_curso) VALUES

('2026-10-03', 'asistio',   8,  9),
('2026-10-03', 'asistio',   12, 9),
('2026-10-03', 'no asistio',22, 9),
('2026-10-10', 'asistio',   8,  9),
('2026-10-10', 'asistio',   22, 9),
('2026-10-10', 'no asistio',12, 9),
('2026-10-17', 'asistio',   8,  9),
('2026-10-17', 'asistio',   12, 9),
('2026-10-17', 'asistio',   22, 9),
('2026-10-24', 'asistio',   8,  9),
('2026-10-24', 'no asistio',12, 9),
('2026-10-31', 'asistio',   12, 9),
('2026-10-31', 'asistio',   22, 9),
('2026-11-07', 'asistio',   8,  9),
('2026-11-07', 'asistio',   12, 9),

('2026-10-05', 'asistio',   1,  1),
('2026-10-05', 'asistio',   5,  1),
('2026-10-05', 'no asistio',14, 1),
('2026-10-12', 'asistio',   1,  1),
('2026-10-12', 'no asistio',5,  1),
('2026-10-19', 'asistio',   14, 1),
('2026-10-26', 'asistio',   1,  1),

('2026-10-10', 'asistio',   5,  8),
('2026-10-10', 'asistio',   9,  8),
('2026-10-17', 'no asistio',5,  8);

INSERT INTO observacion (fecha, comentario, id_estudiante, id_usuario) VALUES
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


SELECT 'estudiante' AS tabla, COUNT(*) AS registros FROM estudiante
UNION ALL SELECT 'curso', COUNT(*) FROM curso
UNION ALL SELECT 'usuario', COUNT(*) FROM usuario
UNION ALL SELECT 'inscripcion', COUNT(*) FROM inscripcion
UNION ALL SELECT 'asistencia', COUNT(*) FROM asistencia
UNION ALL SELECT 'observacion', COUNT(*) FROM observacion;
