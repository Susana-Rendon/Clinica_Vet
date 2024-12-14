CREATE DATABASE ClinicaVeterinaria;
USE ClinicaVeterinaria;

-- Tabla de dueños
CREATE TABLE Dueno (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    telefono VARCHAR(15),
    direccion VARCHAR(255)
);

-- Tabla de mascotas
CREATE TABLE Mascota (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    especie VARCHAR(50),
    raza VARCHAR(50),
    edad INT,
    id_dueno INT,
    FOREIGN KEY (id_dueno) REFERENCES Dueno(id) ON DELETE CASCADE
);

-- Tabla de citas
CREATE TABLE Cita (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATETIME,
    motivo VARCHAR(255),
    id_mascota INT,
    FOREIGN KEY (id_mascota) REFERENCES Mascota(id) ON DELETE CASCADE
);

-- Tabla de vacunaciones
CREATE TABLE Vacunacion (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATE,
    vacuna VARCHAR(100),
    id_mascota INT,
    FOREIGN KEY (id_mascota) REFERENCES Mascota(id) ON DELETE CASCADE
);

-- Tabla de historial médico
CREATE TABLE HistorialMedico (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATE,
    descripcion TEXT,
    id_mascota INT,
    FOREIGN KEY (id_mascota) REFERENCES Mascota(id) ON DELETE CASCADE
);

-- Tabla de medicamentos e inventario
CREATE TABLE Medicamento (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    stock INT
);