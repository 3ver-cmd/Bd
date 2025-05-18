-- Tabla Estudiante
CREATE TABLE Estudiante (
    ID_Estudiante SERIAL PRIMARY KEY,
    Nombre VARCHAR(100)
);

-- Tabla Profesores
CREATE TABLE Profesores (
    ID_Profesor SERIAL PRIMARY KEY,
    Nombre VARCHAR(100)
);

-- Tabla Curso
CREATE TABLE Curso (
    ID_Curso SERIAL PRIMARY KEY,
    Nombre VARCHAR(100),
    ID_Profesor INT,
    FOREIGN KEY (ID_Profesor) REFERENCES Profesores(ID_Profesor)
);

-- Tabla Calificacion (relación entre estudiante y curso)
CREATE TABLE Calificacion (
    ID_Estudiante INT,
    ID_Curso INT,
    Nota DECIMAL(4,2),
    PRIMARY KEY (ID_Estudiante, ID_Curso),
    FOREIGN KEY (ID_Estudiante) REFERENCES Estudiante(ID_Estudiante),
    FOREIGN KEY (ID_Curso) REFERENCES Curso(ID_Curso)
);
