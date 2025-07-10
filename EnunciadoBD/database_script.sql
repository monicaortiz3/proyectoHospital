create database hospital;
use hospital;

create table especialidad(
id_especialidad varchar(30) not null,
nombre varchar(20) not null,
descripción varchar(150),
primary key(id_especialidad)
);

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

create table genero(
id_genero varchar(15) not null,
descripción varchar(150),
primary key(id_genero)
);

create table tipoSangre(
id_tipo varchar(20) not null,
descripción varchar(150),
compatible varchar(30),
primary key(id_tipo)
);

create table turno(
id_turno int not null auto_increment,
turno varchar(20),
descripcion varchar(150),
primary key(id_turno)
);

create table notificación(
id_notificacion int auto_increment,
titulo varchar(50),
contenido varchar(300),
hora_envio time,
fecha date,
id_tipo int,
primary key(id_notificacion),
foreign key(id_tipo) references tipoNotificacion(id_tipo)
);

create table tipoNotificacion(
id_tipo int not null auto_increment,
tipo varchar(45),
descripción varchar(150),
primary key(id_tipo)
);

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

create table horario(
id_horario int auto_increment,
hora_entrada time,
hora_salida time,
dia_semana varchar(20),
id_turno int,
primary key(id_horario),
foreign key(id_turno) references turno(id_turno)
);

create table doctor_horario( 
id_doctor varchar(20),
id_horario int,
primary key(id_doctor, id_horario),
foreign key(id_doctor) references doctor(id_doctor),
foreign key(id_horario) references horario(id_horario)
);