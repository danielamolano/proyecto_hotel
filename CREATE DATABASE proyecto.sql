CREATE DATABASE proyecto;
USE proyecto;

CREATE TABLE recepcionista 
(

    id_recepcionista integer(11) NOT NULL,
    nombre varchar(70) NOT NULL,
    apellido varchar(70) NOT NULL,
    telefono varchar(70) NULL,
    PRIMARY KEY (id_recepcionista) REFERENCES recepcionista(id),

);

CREATE TABLE reserva
(
    fecha_reserva datetime NOT NULL,
    id_reserva integer(11) NOT NULL,
    nombre varchar(70) NOT NULL,
    id_huesped integer(11) NOT NULL,
    id_habitacion integer(11) NOT NULL,
    N_personas integer(10) NOT NULL,
    PRIMARY KEY (id_reserva) REFERENCES reserva(id),
    FOREIGN KEY (id_huesped) REFERENCES huesped(id),
    FOREIGN KEY (id_habitacion) REFERENCES habitacion(id),
);

CREATE TABLE transaccion 
(
    id_transaccion_bancaria integer (11) NOT NULL,
    id_reserva integer (11) NOT NULL,
    id_efectivo integer (11) NOT NULL,
    id_met_pago integer (11) NOT NULL,
    valor integer (11) NOT NULL
    PRIMARY KEY (id_transaccion_bancaria) REFERENCES transaccion_bancaria(id),
    FOREIGN KEY (id_reserva) REFERENCES reserva(id),
    FOREIGN KEY (id_efectivo) REFERENCES efectivo(id),
    FOREIGN KEY (id_met_pago) REFERENCES met_pago(id),

);


CREATE TABLE servicios 
(
     nombre integer varchar (70) NOT NULL,
     id_servicios integer (11) NOT NULL,
     PRIMARY KEY (id_servicios) REFERENCES servicios(id),
);

CREATE TABLE met_pago
(
    id_met_pago varchar (11) NOT NULL,
    nombre varchar (70) NOT NULL,
    PRIMARY KEY (id_met_pago) REFERENCES met_pago(id),
)


CREATE TABLE huesped
(
    id_huesped integer(11) NOT NULL,
    nombre varchar (70) NOT NULL,
    apellido varchar (70) NOT NULL,
    telefono varchar (70) NULL,
    PRIMARY KEY (id_huesped) REFERENCES huesped(id),
);
CREATE TABLE habitacion
(
    id_habitacion integer(11) NOT NULL,
    id_huesped integer (11) NOT NULL,
    piso integer (11) NOT NULL,
    numero integer(11) NOT NULL,
    tipo_habitacion integer (100) NOT NULL,
    disponibilidad integer (100) NOT NULL,
    PRIMARY KEY (id_habitacion) REFERENCES habitacion(id),
    FOREIGN KEY (id_huesped) REFERENCES huesped(id),
);
CREATE TABLE huesped_habitacion
(
    id_habitacion integer (11) NOT NULL,
    id_huesped integer (11) NOT NULL,
    fecha_inicio datetime,
    fecha_final datetime,
    PRIMARY KEY (id_habitacion) REFERENCES habitacion(id),
    FOREIGN KEY (id_huesped) REFERENCES huesped(id),
)
