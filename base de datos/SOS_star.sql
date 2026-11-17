DROP DATABASE IF EXISTS SOS_star;
CREATE DATABASE SOS_star
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;
USE SOS_star;


CREATE TABLE estudiante (
    id_estudiante INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    numero_contacto VARCHAR(20) NOT NULL,
    direccion VARCHAR(200) NOT NULL
);

CREATE TABLE curso (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    fecha DATE NOT NULL,
    descripcion VARCHAR(500) NOT NULL
);

CREATE TABLE usuario (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    correo VARCHAR(100) NOT NULL UNIQUE,
    contrasena VARCHAR(255) NOT NULL
);


CREATE TABLE inscripcion (
    id_inscripcion INT AUTO_INCREMENT PRIMARY KEY,
    fecha_inscripcion DATE NOT NULL,
    id_estudiante INT NOT NULL,
    id_curso INT NOT NULL,
    CONSTRAINT fk_estudiante_inscripcion
        FOREIGN KEY (id_estudiante) REFERENCES estudiante(id_estudiante)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT fk_curso_inscripcion
        FOREIGN KEY (id_curso) REFERENCES curso(id_curso)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    -- Evita inscribir al mismo estudiante dos veces en el mismo curso
    UNIQUE KEY uk_estudiante_curso (id_estudiante, id_curso) 
);

CREATE TABLE asistencia (
    id_asistencia INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATE NOT NULL,
    estado ENUM('asistio', 'no asistio') NOT NULL DEFAULT 'no asistio',
    id_estudiante INT NOT NULL,
    id_curso INT NOT NULL,
    CONSTRAINT fk_estudiante_asistencia
        FOREIGN KEY (id_estudiante) REFERENCES estudiante(id_estudiante)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT fk_curso_asistencia
        FOREIGN KEY (id_curso) REFERENCES curso(id_curso)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

CREATE TABLE observacion (
    id_observacion INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATE NOT NULL,
    comentario VARCHAR(500) NOT NULL,
    id_estudiante INT NOT NULL,
    id_usuario INT NOT NULL,
    CONSTRAINT fk_estudiante_observacion
        FOREIGN KEY (id_estudiante) REFERENCES estudiante(id_estudiante)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT fk_usuario_observacion
        FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);
