consultas

Consulta 1: Esta consulta obtiene el nombre y apellido de los huespedes en una habitacion predeterminada en la base de datos
SELECT huesped.nombre, huesped.apellido 
FROM huesped;

Consulta 2: Esta consulta selecciona el nombre de los servicios disponibles en la base de datos.
SELECT servicios.nombre 
FROM servicios;

Consulta 3: Esta consulta selecciona el nombre de los métodos de pago disponibles en la base de datos.
SELECT met_pago.nombre 
FROM met_pago;

Consulta 4: Esta consulta selecciona el número de habitación de los huéspedes de la base de datos.
SELECT habitacion.numero 
FROM habitacion;

consulta 5: Esta consulta cuenta el numero de personas para cada reserva en la base de datos
SELECT reserva.N_personas
FROM reserva;

consulta 6: Esta consulta obtiene el valor de la transaccion en la base de datos
SELECT transaccion.valor
FROM transaccion;

consulta 7: Esta consulta obtiene el id del huesped en la base de datos
SELECT huesped.id_huesped
FROM huesped;

consulta 8: Esta consulta obtiene el tipo de habitacion que desea el huesped en la base de datos
SELECT habitacion.tipo_habitacion
FROM  habitacion;

consulta 9: Esta consulta obtiene el telefono del recepcionista en la base de datos
SELECT recepcionista.telefono
FROM recepcionista;

consulta 10: Esta consulta selecciona la fecha de la reserva en la base de datos
SELECT reserva.fecha_reserva 
FROM reserva;

