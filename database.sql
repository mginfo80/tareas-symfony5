CREATE DATABASE IF NOT EXISTS symfony_master;
USE symfony_master;

CREATE TABLE IF NOT EXISTS users(
    id              int(255) auto_increment not null,
    role            varchar(50),
    name            varchar(100),
    surname         varchar(200),
    password        varchar(255),
    created_at      datetime,
    CONSTRAINT pk_users PRIMARY KEY(id)
)ENGINE=InnoDb;

CREATE TABLE IF NOT EXISTS tasks(
    id              int(255) auto_increment not null,
    user_id         int(255) not null,
    title           varchar(255,
    content         text,
    priority        varchar(20),
    hours           int(100),
    created_at      datetime,
    CONSTRAINT pk_tasks PRIMARY KEY(id),
    CONSTRAINT fk_task_user FOREIGN KEY(user_id) REFERENCES user(id)
)ENGINE=InnoDb;


INSERT INTO users VALUES(NULL, 'ROLE_USER', 'Marcelo', 'Gorski', 'marcelo@marcelo.com', '123456', CURTIME(), NULL);
INSERT INTO users VALUES(NULL, 'ROLE_USER', 'Luciana', 'Burgueño', 'luciana@luciana.com', '123456', CURTIME(), NULL);
INSERT INTO users VALUES(NULL, 'ROLE_USER', 'León', 'Gorski', 'leon@leon.com', '123456', CURTIME(), NULL);

INSERT INTO tasks VALUES(NULL, 'Tarea 1', 'Contenido de prueba 1', 'high', 40, CURTIME(), NULL);

INSERT INTO tasks
VALUE(NULL,
'Tarea 1',
'Contenido de prueba 1',
'high',
40,
CURTIME(),
NULL
);

INSERT INTO tasks VALUES(NULL, 1,'Tarea 1', 'Contenido de prueba 1', 'high', 40, CURTIME(), NULL);
INSERT INTO tasks VALUES(NULL, 1,'Tarea 2', 'Contenido de prueba 2', 'low', 20, CURTIME(), NULL);
INSERT INTO tasks VALUES(NULL, 2,'Tarea 3', 'Contenido de prueba 3', 'mwdium', 10, CURTIME(), NULL);
INSERT INTO tasks VALUES(NULL, 3,'Tarea 4', 'Contenido de prueba 4', 'high', 50, CURTIME(), NULL);

