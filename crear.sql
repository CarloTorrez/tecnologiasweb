CREATE DATABASE IF NOT EXISTS testdb;

USE testdb;



CREATE TABLE IF NOT EXISTS roles (

  id_rol INT AUTO_INCREMENT PRIMARY KEY,

  nombre_rol VARCHAR(30) NOT NULL UNIQUE

);



CREATE TABLE IF NOT EXISTS usuarios (

  id_usuario INT AUTO_INCREMENT PRIMARY KEY,

  id_rol INT NOT NULL,

  nombre VARCHAR(100) NOT NULL,

  apellido VARCHAR(100) NOT NULL,

  correo VARCHAR(150) NOT NULL UNIQUE,

  usuario VARCHAR(50) NOT NULL UNIQUE,

  contrasena_hash VARCHAR(255) NOT NULL,

  FOREIGN KEY (id_rol) REFERENCES roles(id_rol)

);



INSERT IGNORE INTO roles (nombre_rol) VALUES ('administrador'), ('tutor'), ('estudiante');



INSERT IGNORE INTO usuarios (id_rol, nombre, apellido, correo, usuario, contrasena_hash)

VALUES (1, 'Admin', 'Sistema', 'admin@tutorias.local', 'admin', 'admin123');
