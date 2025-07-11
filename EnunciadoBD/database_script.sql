create database hospital;
use hospital;
-- drop database hospital;
create table especialidad(
id_especialidad varchar(30) not null,
nombre varchar(20) not null,
descripcion varchar(150),
primary key(id_especialidad)
);

insert into especialidad values
('CRD01', 'Cardiologia', 'Encargada de las enfermedades del corazon'),
('PED02', 'Pediatria', 'Especializada en la atencion medica para los niños'),
('GNE03', 'Ginecologia', 'Especialista en la salud reproductiva de la mujer');

select * from especialidad;


create table doctor(
id_doctor varchar(20) not null,
nombre varchar(30) not null,
apellido_paterno varchar(30),
apellido_materno varchar(30),
edad int,
teléfono int,
correo varchar(45),
dirección varchar(30),
id_especialidad varchar(30),
primary key(id_doctor),
foreign key(id_especialidad) references especialidad(id_especialidad)
);

insert into doctor values
('DOC001','Efren','Ramirez','Ochoa',34,554433,'efren@doc.com','calle rosa', 'CRD01'),
('DOC002', 'María', 'Hernández', 'Pérez', 38, 55123, 'maria.hernandez@doc.com', 'Calle Esperanza 456', 'PED02'),
('DOC003', 'Luisa', 'Martínez', 'Gómez', 50, 55432, 'luisa.martinez@hospital.com', 'Blvd. Médico 789', 'GNE03');

select * from doctor;


create table genero(
id_genero varchar(15) not null,
descripción varchar(150),
primary key(id_genero)
);

insert into genero values 
('GEN01', 'Maculino'),
('GEN02', 'Femenino'),
('GEN03', 'Femenino');


insert into genero values ('GEN01', 'Maculino');
select * from genero;


create table tipoSangre(
id_tipo varchar(20) not null,
descripción varchar(150),
compatible varchar(30),
primary key(id_tipo)
);

insert into tipoSangre values
('TS01', 'O negativo', 'Todos los grupos'),
('TS02', 'O positivo', 'O+, A+, B+, AB+'),
('TS03', 'A negativo', 'A-, A+, AB-, AB+');

select * from tipoSangre;


create table turno(
id_turno int not null auto_increment,
turno varchar(20),
descripcion varchar(150),
primary key(id_turno)
);

insert into turno values
(01,'Matutino', 'Turno de la mañana de 6:00 a.m. a 2:00 p.m.'),
(02,'Vespertino', 'Turno de la tarde de 2:00 p.m. a 10:00 p.m.'),
(03,'Nocturno', 'Turno de la noche de 10:00 p.m. a 6:00 a.m.');

select * from turno;


create table tipoNotificacion(
id_tipo int not null auto_increment,
tipo varchar(45),
descripción varchar(150),
primary key(id_tipo)
);
insert into tipoNotificacion values
(11,'Cita médica', 'Recordatorio o confirmación de una cita programada'),
(22,'Resultados de estudios', 'Notificación sobre la disponibilidad de análisis clínicos'),
(33,'Urgencia', 'Aviso importante por una situación crítica o emergencia');

select * from tipoNotificacion;


create table notificacion(
id_notificacion int auto_increment,
titulo varchar(50),
contenido varchar(300),
hora_envio time,
fecha date,
id_tipo int,
primary key(id_notificacion),
foreign key(id_tipo) references tipoNotificacion(id_tipo)
);

insert into notificacion values
(1, 'Cambio de horario', 'Se ha actualizado el horario de atención del doctor.', '08:30:00', '2025-07-10', 11),
(2, 'Vacuna disponible', 'Ya está disponible la vacuna contra la gripe.', '10:15:00', '2025-07-11', 22),
(3, 'Mantenimiento', 'El sistema estará en mantenimiento el sábado.', '16:00:00', '2025-07-12', 11);

select * from notificaci;


create table paciente(
id_paciente int not null auto_increment,
nombre varchar(30) not null,
apellido_paterno varchar(25),
apellido_materno varchar(25),
edad int,
fecha_nacimiento datetime,
estatura float,
peso float,
teléfono int,
correo varchar(40),
dirección varchar(45),
contacto_emergencia int,
id_genero varchar(15),
id_tipo varchar(20),
primary key(id_paciente),
foreign key(id_genero) references genero(id_genero),
foreign key (id_tipo) references tipoSangre(id_tipo)
);

insert into paciente values
('Gabriela', 'Sánchez', 'López', 29, '1995-03-14 14:30:00', 1.65, 60.5, 5523456789, 'gabriela.sanchez@gmail.com', 'Calle Olivo 123', 5512345678, 'GEN02', 'TS04'),
('Jorge', 'Martínez', 'Ruiz', 40, '1984-09-22 11:40:00', 1.75, 80.0, 5511122233, 'jorge.martinez@gmail.com', 'Av. Reforma 456', 5544556677, 'GEN01', 'TS01'),
('Luis', 'Pérez', 'Ramírez', 35, '1989-01-10 09:00:00', 1.78, 75.2, 5533445566, 'luis.perez@gmail.com', 'Blvd. Las Palmas 789', 5500112233, 'GEN01', 'TS02');

create table cita(
id_cita int not null,
fechaHora datetime,
observaciones varchar(150),
id_paciente int,
id_doctor varchar(20),
primary key(id_cita),
foreign key(id_paciente) references paciente(id_paciente),
foreign key(id_doctor) references doctor(id_doctor)
);

insert into cita values
(1, '2025-07-12 09:00:00', 'Revisión general anual', 1, 'DOC001'),
(2, '2025-07-13 15:30:00', 'Chequeo general', 2, 'DOC002'),
(3, '2025-07-14 11:00:00', 'Consulta por revision de parto', 3, 'DOC003');

create table horario(
id_horario int auto_increment, 
hora_entrada time,
hora_salida time,
dia_semana varchar(20),
id_turno int,
primary key(id_horario),
foreign key(id_turno) references turno(id_turno)
);

insert into horario values
(1, '06:00:00', '14:00:00', 'Lunes', 1),        
(2, '06:00:00', '14:00:00', 'Martes', 1),
(3, '14:00:00', '22:00:00', 'Miércoles', 2);


create table doctor_horario( 
id_doctor varchar(20),
id_horario int,
primary key(id_doctor, id_horario),
foreign key(id_doctor) references doctor(id_doctor),
foreign key(id_horario) references horario(id_horario)
);

insert into doctor_horario values
('DOC001', 1),  
('DOC001', 2),  
('DOC002', 3);