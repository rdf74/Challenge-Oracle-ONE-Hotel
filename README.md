# Challenge-Oracle-ONE-Hotel
Aplicación de escritorio que permite la gestión de reservas para un hotel. 
Permite al usuario registrar, consultar, editar y eliminar los datos de los huéspedes.


## ⚒ Tecnologías Utilizadas:

- Java
- Eclipse
- Biblioteca JCalendar
- MySql
- Plugin WindowBuilder

## Características
- Sistema de login de usuario
- CRUD para la entidades "Húesped", "Reserva" y "Usuario"

## Descargar e Inicio

</br>Deberan crear una base de datos, a continuacion la sentencia en SQL para la creacion de la misma:

CREATE DATABASE hotel_alura_ONE;

use hotel_alura_ONE;

CREATE TABLE reservas(
id INT not null auto_increment,
fecha_entrada DATE not null,
fecha_salida DATE not null,
valor VARCHAR(50),
forma_de_pago VARCHAR(50)not null,
PRIMARY KEY(id)
);

CREATE TABLE huespedes(
id INT not null auto_increment,
nombre VARCHAR(50)not null,
apellido VARCHAR(50)not null,
fecha_nacimiento DATE not null,
nacionalidad VARCHAR(50)not null,
telefono VARCHAR(50)not null,
id_reserva INT not null,
PRIMARY KEY (id),
FOREIGN KEY (id_reserva) REFERENCES reservas(id)
);

CREATE TABLE usuarios(
nombre VARCHAR(50),
contraseña VARCHAR(50)
);

INSERT INTO usuarios (nombre,contraseña) VALUES('admin','admin')</br>

Una vez configurado todo, podran darle ReBuild a su proyecto e iniciarlo en su IDE o realizar su JAR correspondiente.
