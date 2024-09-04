CREATE DATABASE persona;
USE persona;

CREATE TABLE funcionarios (
    id INT,
    nome VARCHAR(50),
    telefone CHAR(11) NOT NULL,
    registro VARCHAR(10),
    nascimento DATE,
    PRIMARY KEY (id)
);

INSERT INTO funcionarios (id, nome, telefone, registro, nascimento) VALUES
('1','Kauê Douglas','11954442098','2238','2005-07-11'),
('2','Pedro Torres','11915302648','4109','1999-09-20'),
('3','Pablo Pontes','11934195639','2238','2010-03-13'),
('4','Douglas Pozatti','11921429142','3577','1987-10-03'),
('5','Paula Andrade','119554025481','2238','1984-10-24');

SELECT * FROM funcionarios;

create table hospital(
unidade varchar(20), 
especialidade varchar(20), 
ranking int(10), 
crm int(20)
);

insert into hospital(unidade, especialidade, ranking, crm) value
 ('AC CAmargo','Cirurgia Colorretal','11','21092'),
 ('AC CAmargo','Fisioterapia','17','346169'),
 ('AC CAmargo','Física Médica','01','1477'),
 ('AC CAmargo','Anestesiologia','19','98760'),
 ('AC CAmargo','Terapia Intensiva','41','139463'),
 ('AC CAmargo','Cirurgia Abdominal','24','102614');

SELECT * FROM hospital;

alter table hospital add column id_hospital INT;

alter table hospital add foreign key(id_hospital) references funcionarios(id);

describe funcionarios;


