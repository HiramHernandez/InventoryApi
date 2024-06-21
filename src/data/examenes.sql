CREATE TABLE categorias (
    categoria_id BIGINT NOT NULL AUTO_INCREMENT,
    titulo VARCHAR(255),
    descripcion TEXT,
    PRIMARY KEY (categoria_id)
);


CREATE TABLE examenes (
    examen_id BIGINT NOT NULL AUTO_INCREMENT,
    titulo VARCHAR(255),
    descripcion TEXT,
    puntos_maximos VARCHAR(255),
    numero_de_preguntas VARCHAR(255),
    activo BOOLEAN DEFAULT FALSE,
    categoria_id BIGINT,
    PRIMARY KEY (examen_id),
    FOREIGN KEY (categoria_id) REFERENCES categorias(categoria_id)
);

CREATE TABLE preguntas (
    pregunta_id BIGINT NOT NULL AUTO_INCREMENT,
    contenido VARCHAR(5000),
    imagen VARCHAR(255),
    opcion1 VARCHAR(255),
    opcion2 VARCHAR(255),
    opcion3 VARCHAR(255),
    opcion4 VARCHAR(255),
    respuesta VARCHAR(255),
    examen_id BIGINT,
    PRIMARY KEY (pregunta_id),
    FOREIGN KEY (examen_id) REFERENCES examenes(examen_id)
);