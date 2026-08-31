CREATE DATABASE gimnasio_db;
USE gimnasio_db;

CREATE TABLE cliente (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    dni VARCHAR(15),
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    telefono VARCHAR(20)
);

CREATE TABLE instructor (
    id_instructor INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    telefono VARCHAR(20),
    especialidad VARCHAR(50)
);

CREATE TABLE membresia (
    id_membresia INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT,
    tipo VARCHAR(50),
    precio DECIMAL(10,2),
    fecha_inicio DATE,
    fecha_fin DATE,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

CREATE TABLE pago (
    id_pago INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT,
    id_membresia INT,
    monto DECIMAL(10,2),
    metodo_pago VARCHAR(30),
    fecha DATE,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_membresia) REFERENCES membresia(id_membresia)
);

CREATE TABLE clase (
    id_clase INT PRIMARY KEY AUTO_INCREMENT,
    id_instructor INT,
    nombre VARCHAR(50),
    capacidad INT,
    horario TIME,
    FOREIGN KEY (id_instructor) REFERENCES instructor(id_instructor)
);

CREATE TABLE rutina (
    id_rutina INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT,
    id_instructor INT,
    tipo VARCHAR(50),
    descripcion TEXT,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_instructor) REFERENCES instructor(id_instructor)
);

CREATE TABLE ejercicio (
    id_ejercicio INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    duracion VARCHAR(30)
);

CREATE TABLE rutina_ejercicio (
    id_rutina INT,
    id_ejercicio INT,
    PRIMARY KEY (id_rutina, id_ejercicio),
    FOREIGN KEY (id_rutina) REFERENCES rutina(id_rutina),
    FOREIGN KEY (id_ejercicio) REFERENCES ejercicio(id_ejercicio)
);