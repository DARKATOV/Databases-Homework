create table mentors (
	id serial primary key,
	name varchar(30) not null,
	yearsInGlasgow	int,
	address 		varchar(30),
    programmingTop varchar(10),
);

insert into mentors (name, yearsinglasgow, programmingTop, address) values ('Francisco Palacios', 40, 'Javascript', 'elpepe358@gmail.com');
insert into mentors (name, yearsinglasgow, programmingTop, address) values ('Diviana Robersi', 36, 'Phyton', 'dondeestoy24@hotmail.com');
insert into mentors (name, yearsinglasgow, programmingTop, address) values ('Daniela Colpas', 70,'Php', 'e25epe358@gmail.com');
insert into mentors (name, yearsinglasgow, programmingTop, address) values ('Mario Luigi', 31, 'C++', 'ramoneitpe@hotmail.com');
insert into mentors (name, yearsinglasgow, programmingTop, address) values ('Layr Over', 50, 'Java', 'jimenae14@gmail.com');

create table students(
	id serial primary key,
	name varchar(30),
	graduated boolean
	address varchar(30),
);

insert into students (name, graduated, address) values ('Miguel Palacios', true, 'miguel@gmail.com');
insert into students (name, graduated, address) values ('Antonio Perez', true , 'apl@gmail.com');
insert into students (name, graduated, address) values ('Maria Delagdo', false, 'maripu88@yahoo.com');
insert into students (name, graduated, address) values ('Ricardo Shgi', false, 'rickvzla@gmail.com');
insert into students (name, graduated, address) values ('Laymer Rover', true, 'lrlr@gmail.com');
insert into students (name, graduated, address) values ('Jose Palacios', true, 'joeluel@otulook.com');
insert into students (name, graduated, address) values ('Ramon Pereira', true , 'aramonpl@hotmail.com');
insert into students (name, graduated, address) values ('Turvia Derecho', false, 'turvi820@gmail.com');
insert into students (name, graduated, address) values ('Yi Shon', false, 'dragon263@gmail.com');
insert into students (name, graduated, address) values ('Land Autana', true, 'landatana@gmail.com');

create table catedra(
	id serial primary key,
	mentor varchar(20) not null, 
    topic varchar(20) not null, 
	dateClass date unique not null,
	naul varchar(30) not null,
);

insert into classes (mentor, topic, naul, dateClass) values ('Juanita Bebe', 'Node js', "107", '2021-06-09 12:30:00');
insert into classes (mentor, topic, naul, dateClass) values ('Santiago Caceres', 'React js', "205", '2021-06-22 19:30:00');
insert into classes (mentor, topic, naul, dateClass) values ('Javier Requena', 'SQL', "213", '2021-06-20 17:30:00');
insert into classes (mentor, topic, naul, dateClass) values ('Ramon Rubiolo', 'HTML', "101", '2021-07-15 09:40:00');
insert into classes (mentor, topic, naul, dateClass) values ('Simon Caceres', 'CSS', "202", '2021-07-22 14:30:00');

create table asistances(
	studentId serial primary key,
	classId varchar(20) not null, 
    asistanceDate date references 
);

insert into asistances (studentId, classId, asistanceDate) values (2, 1, '2021-06-30 09:32:02');
insert into asistances (studentId, classId, asistanceDate) values (5, 2, '2021-07-05 09:31:33');
insert into asistances (studentId, classId, asistanceDate) values (1, 3, '2021-06-19 09:28:20');
insert into asistances (studentId, classId, asistanceDate) values (7, 4, '2021-06-19 09:29:10');

select * from mentors where years_in_glasgow > 16;
select * from mentors where programmingTop = 'Phyton';
select * from students where graduated is true;
select * from classes where asistanceDate < '2021-06-01 00:00:01';
select studentId, classId from asistances where classId = 1;