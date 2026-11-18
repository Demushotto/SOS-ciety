DROP DATABASE IF EXISTS SOS_star;

CREATE DATABASE SOS_star;

USE SOS_star;


CREATE TABLE estudiante (
    id_estudiante INT AUTO_INCREMENT PRIMARY KEY,
    codigo_estudiante VARCHAR(20) NOT NULL UNIQUE,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    numero_contacto VARCHAR(20),
    direccion VARCHAR(200)
);



CREATE TABLE curso (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    fecha DATE,
    descripcion VARCHAR(500)
);


CREATE TABLE usuario (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    correo VARCHAR(150) NOT NULL UNIQUE,
    contrasena VARCHAR(255) NOT NULL
);



CREATE TABLE habilidad (
    id_habilidad INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL UNIQUE,
    descripcion VARCHAR(500)
);




CREATE TABLE inscripciones (
    id_inscripcion INT AUTO_INCREMENT PRIMARY KEY,
    fecha_inscripcion DATE NOT NULL,
    id_estudiante INT NOT NULL,
    id_curso INT NOT NULL,

    UNIQUE (id_estudiante, id_curso),

    FOREIGN KEY (id_estudiante)
    REFERENCES estudiante(id_estudiante)
    ON UPDATE CASCADE
    ON DELETE RESTRICT,

    FOREIGN KEY (id_curso) REFERENCES curso(id_curso)
    ON UPDATE CASCADE
    ON DELETE RESTRICT
);




CREATE TABLE actividad (
    id_actividad INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(500),
    fecha DATE NOT NULL,
    id_curso INT NOT NULL,

    FOREIGN KEY (id_curso) REFERENCES curso(id_curso)
    ON UPDATE CASCADE
    ON DELETE RESTRICT
);



CREATE TABLE asistencia (
    id_asistencia INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATE NOT NULL,
    estado ENUM('asistio', 'no asistio') NOT NULL,
    id_estudiante INT NOT NULL,
    id_curso INT NOT NULL,
    id_actividad INT,

    FOREIGN KEY (id_estudiante) REFERENCES estudiante(id_estudiante)
    ON UPDATE CASCADE
    ON DELETE RESTRICT,

    FOREIGN KEY (id_curso) REFERENCES curso(id_curso)
    ON UPDATE CASCADE
    ON DELETE RESTRICT,

    FOREIGN KEY (id_actividad) REFERENCES actividad(id_actividad)
    ON UPDATE CASCADE
    ON DELETE RESTRICT
);


CREATE TABLE observacion (
    id_observacion INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATE NOT NULL,
    comentario VARCHAR(500) NOT NULL,
    id_estudiante INT NOT NULL,
    id_usuario INT NOT NULL,

    FOREIGN KEY (id_estudiante) REFERENCES estudiante(id_estudiante)
    ON UPDATE CASCADE
    ON DELETE RESTRICT,

    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
    ON UPDATE CASCADE
    ON DELETE RESTRICT
);




CREATE TABLE estudiante_habilidad (
    id_estudiante_habilidad INT AUTO_INCREMENT PRIMARY KEY,
    id_estudiante INT NOT NULL,
    id_habilidad INT NOT NULL,
    id_actividad INT,
    nivel VARCHAR(30),
    fecha_registro DATE NOT NULL,
    observacion VARCHAR(500),

    FOREIGN KEY (id_estudiante)
    REFERENCES estudiante(id_estudiante)
    ON UPDATE CASCADE
    ON DELETE RESTRICT,

    FOREIGN KEY (id_habilidad)
    REFERENCES habilidad(id_habilidad)
    ON UPDATE CASCADE
    ON DELETE RESTRICT,

    FOREIGN KEY (id_actividad)
    REFERENCES actividad(id_actividad)
    ON UPDATE CASCADE
    ON DELETE RESTRICT
);




CREATE TABLE evaluacion (
    id_evaluacion INT AUTO_INCREMENT PRIMARY KEY,
    id_estudiante INT NOT NULL,
    id_curso INT NOT NULL,
    id_actividad INT,
    id_usuario INT NOT NULL,
    fecha DATE NOT NULL,
    tipo_evaluacion VARCHAR(80) NOT NULL,
    puntaje DECIMAL(5,2),
    puntaje_maximo DECIMAL(5,2),
    observacion VARCHAR(500),

    FOREIGN KEY (id_estudiante)
    REFERENCES estudiante(id_estudiante)
    ON UPDATE CASCADE
    ON DELETE RESTRICT,

    FOREIGN KEY (id_curso)
    REFERENCES curso(id_curso)
    ON UPDATE CASCADE
    ON DELETE RESTRICT,

    FOREIGN KEY (id_actividad)
    REFERENCES actividad(id_actividad)
    ON UPDATE CASCADE
    ON DELETE RESTRICT,

    FOREIGN KEY (id_usuario)
    REFERENCES usuario(id_usuario)
    ON UPDATE CASCADE
    ON DELETE RESTRICT
);

