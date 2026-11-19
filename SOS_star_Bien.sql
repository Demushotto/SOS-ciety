DROP DATABASE IF EXISTS SOS_star;

CREATE DATABASE SOS_star
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

USE SOS_star;


CREATE TABLE estudiante (
    id_estudiante INT AUTO_INCREMENT PRIMARY KEY,
    codigo_estudiante VARCHAR(20) NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    numero_contacto VARCHAR(30),
    direccion VARCHAR(200)
);

CREATE TABLE curso (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(150) NOT NULL,
    fecha DATE,
    descripcion TEXT
);


CREATE TABLE usuario (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    correo VARCHAR(150) NOT NULL,
    contrasena VARCHAR(255) NOT NULL
);

CREATE TABLE inscripciones (
    id_inscripcion INT AUTO_INCREMENT PRIMARY KEY,
    fecha_inscripcion DATE NOT NULL,
    id_estudiante INT NOT NULL,
    id_curso INT NOT NULL,

    UNIQUE (id_estudiante, id_curso),

    FOREIGN KEY (id_estudiante)
        REFERENCES estudiante(id_estudiante)
        ON UPDATE CASCADE ON DELETE RESTRICT,

    FOREIGN KEY (id_curso)
        REFERENCES curso(id_curso)
        ON UPDATE CASCADE ON DELETE RESTRICT
);

CREATE TABLE actividad (
    id_actividad INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(150) NOT NULL,
    descripcion TEXT,
    fecha DATE NOT NULL,
    id_curso INT NOT NULL,

    FOREIGN KEY (id_curso)
        REFERENCES curso(id_curso)
        ON UPDATE CASCADE ON DELETE RESTRICT
);

CREATE TABLE asistencia (
    id_asistencia INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATE NOT NULL,
    estado ENUM('asistio', 'no asistio') NOT NULL,
    id_estudiante INT NOT NULL,
    id_curso INT NOT NULL,
    id_actividad INT NULL,

    FOREIGN KEY (id_estudiante)
        REFERENCES estudiante(id_estudiante)
        ON UPDATE CASCADE ON DELETE RESTRICT,

    FOREIGN KEY (id_curso)
        REFERENCES curso(id_curso)
        ON UPDATE CASCADE ON DELETE RESTRICT,

    FOREIGN KEY (id_actividad)
        REFERENCES actividad(id_actividad)
        ON UPDATE CASCADE ON DELETE RESTRICT,

    INDEX idx_asistencia_estudiante_curso
        (id_estudiante, id_curso),

    INDEX idx_asistencia_estado
        (estado)
);

CREATE TABLE observacion (
    id_observacion INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATE NOT NULL,
    comentario TEXT NOT NULL,
    id_estudiante INT NOT NULL,
    id_usuario INT NOT NULL,

    FOREIGN KEY (id_estudiante)
        REFERENCES estudiante(id_estudiante)
        ON UPDATE CASCADE ON DELETE RESTRICT,

    FOREIGN KEY (id_usuario)
        REFERENCES usuario(id_usuario)
        ON UPDATE CASCADE ON DELETE RESTRICT
);

CREATE TABLE habilidad (
    id_habilidad INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL UNIQUE,
    descripcion TEXT
);

CREATE TABLE estudiante_habilidad (
    id_estudiante_habilidad INT AUTO_INCREMENT PRIMARY KEY,
    id_estudiante INT NOT NULL,
    id_habilidad INT NOT NULL,
    id_actividad INT NULL,

    FOREIGN KEY (id_estudiante)
        REFERENCES estudiante(id_estudiante)
        ON UPDATE CASCADE ON DELETE RESTRICT,

    FOREIGN KEY (id_habilidad)
        REFERENCES habilidad(id_habilidad)
        ON UPDATE CASCADE ON DELETE RESTRICT,

    FOREIGN KEY (id_actividad)
        REFERENCES actividad(id_actividad)
        ON UPDATE CASCADE ON DELETE RESTRICT,

    UNIQUE (id_estudiante, id_habilidad, id_actividad)
);

CREATE TABLE evaluacion (
    id_evaluacion INT AUTO_INCREMENT PRIMARY KEY,
    id_estudiante INT NOT NULL,
    id_curso INT NOT NULL,
    id_actividad INT NULL,
    id_usuario INT NOT NULL,
    fecha DATE NOT NULL,
    tipo_evaluacion VARCHAR(100) NOT NULL,
    puntaje DECIMAL(8,2) NOT NULL,
    puntaje_maximo DECIMAL(8,2) NOT NULL,
    observacion TEXT,

    FOREIGN KEY (id_estudiante)
        REFERENCES estudiante(id_estudiante)
        ON UPDATE CASCADE ON DELETE RESTRICT,

    FOREIGN KEY (id_curso)
        REFERENCES curso(id_curso)
        ON UPDATE CASCADE ON DELETE RESTRICT,

    FOREIGN KEY (id_actividad)
        REFERENCES actividad(id_actividad)
        ON UPDATE CASCADE ON DELETE RESTRICT,

    FOREIGN KEY (id_usuario)
        REFERENCES usuario(id_usuario)
        ON UPDATE CASCADE ON DELETE RESTRICT,

    CHECK (puntaje >= 0),
    CHECK (puntaje_maximo > 0),
    CHECK (puntaje <= puntaje_maximo),

    INDEX idx_evaluacion_estudiante_curso
        (id_estudiante, id_curso, fecha)
);

CREATE OR REPLACE VIEW vw_porcentaje_asistencia AS
SELECT
    e.id_estudiante,
    e.codigo_estudiante,
    e.nombre,
    e.apellido,
    c.id_curso,
    c.nombre AS curso,

    COUNT(a.id_asistencia) AS total_registros,

    SUM(
        CASE
            WHEN a.estado = 'asistio' THEN 1
            ELSE 0
        END
    ) AS asistencias,

    SUM(
        CASE
            WHEN a.estado = 'no asistio' THEN 1
            ELSE 0
        END
    ) AS inasistencias,

    ROUND(
        SUM(
            CASE
                WHEN a.estado = 'asistio' THEN 1
                ELSE 0
            END
        ) * 100.0 / NULLIF(COUNT(a.id_asistencia), 0),
        2
    ) AS porcentaje_asistencia

FROM estudiante e
INNER JOIN asistencia a
    ON e.id_estudiante = a.id_estudiante
INNER JOIN curso c
    ON a.id_curso = c.id_curso

GROUP BY
    e.id_estudiante,
    e.codigo_estudiante,
    e.nombre,
    e.apellido,
    c.id_curso,
    c.nombre;

CREATE OR REPLACE VIEW vw_inasistencias AS
SELECT
    e.id_estudiante,
    e.codigo_estudiante,
    e.nombre,
    e.apellido,
    c.id_curso,
    c.nombre AS curso,
    COUNT(a.id_asistencia) AS cantidad_inasistencias

FROM estudiante e
INNER JOIN asistencia a
    ON e.id_estudiante = a.id_estudiante
INNER JOIN curso c
    ON a.id_curso = c.id_curso

WHERE a.estado = 'no asistio'

GROUP BY
    e.id_estudiante,
    e.codigo_estudiante,
    e.nombre,
    e.apellido,
    c.id_curso,
    c.nombre;

CREATE OR REPLACE VIEW vw_alertas_inasistencia AS
SELECT
    i.id_estudiante,
    i.codigo_estudiante,
    i.nombre,
    i.apellido,
    i.id_curso,
    i.curso,
    i.cantidad_inasistencias,

    CASE
        WHEN i.cantidad_inasistencias >= 3
            THEN 'ALERTA'
        ELSE 'SIN ALERTA'
    END AS estado_alerta

FROM vw_inasistencias i
WHERE i.cantidad_inasistencias >= 3;

CREATE OR REPLACE VIEW vw_progreso_educativo AS
SELECT
    e.id_estudiante,
    e.codigo_estudiante,
    e.nombre,
    e.apellido,
    c.id_curso,
    c.nombre AS curso,

    inicial.fecha AS fecha_inicial,
    inicial.puntaje AS calificacion_inicial,

    actual.fecha AS fecha_actual,
    actual.puntaje AS calificacion_actual,

    ROUND(
        actual.puntaje - inicial.puntaje,
        2
    ) AS progreso

FROM estudiante e

INNER JOIN curso c
    ON EXISTS (
        SELECT 1
        FROM evaluacion ev
        WHERE ev.id_estudiante = e.id_estudiante
          AND ev.id_curso = c.id_curso
    )

INNER JOIN evaluacion inicial
    ON inicial.id_estudiante = e.id_estudiante
    AND inicial.id_curso = c.id_curso

INNER JOIN evaluacion actual
    ON actual.id_estudiante = e.id_estudiante
    AND actual.id_curso = c.id_curso

WHERE NOT EXISTS (
    SELECT 1
    FROM evaluacion anterior
    WHERE anterior.id_estudiante = inicial.id_estudiante
      AND anterior.id_curso = inicial.id_curso
      AND (
          anterior.fecha < inicial.fecha
          OR (
              anterior.fecha = inicial.fecha
              AND anterior.id_evaluacion < inicial.id_evaluacion
          )
      )
)
AND NOT EXISTS (
    SELECT 1
    FROM evaluacion posterior
    WHERE posterior.id_estudiante = actual.id_estudiante
      AND posterior.id_curso = actual.id_curso
      AND (
          posterior.fecha > actual.fecha
          OR (
              posterior.fecha = actual.fecha
              AND posterior.id_evaluacion > actual.id_evaluacion
          )
      )
);
ALTER TABLE estudiante_habilidad
ADD COLUMN nivel ENUM('basico', 'intermedio', 'avanzado') NOT NULL DEFAULT 'basico',
ADD COLUMN fecha_registro DATE NOT NULL DEFAULT (CURRENT_DATE),
ADD COLUMN observacion TEXT;

