create table if not exists agenda
(
    codigoper   varchar(3)  not null,
    nombre      varchar(45) not null,
    apellido    varchar(45) not null,
    direccion   varchar(45) null,
    telefijo    varchar(9)  null,
    telefmovi   varchar(9)  null,
    email       varchar(30) null,
    fbc         varchar(30) null,
    distrito_id int         null
);

create table if not exists distrito
(
    id       int  null,
    distrito text null
);

INSERT INTO agenda VALUES ('1', 'carlos', 'serna','av. palmeras 145', '1',
'043524875', '942587568','carlos@hotmail.com', 'carlos serna');
INSERT INTO agenda VALUES ('2', 'carmen', 'figueroa','av. alamos f-5', '2',
'043154784', '943124578','carmen@hotmail.com', 'carmen figeroa');
INSERT INTO agenda VALUES ('3', 'juan', 'perez','av.pacaes', '3',
'043758694', '943582674','juan@hotmail.com', 'juan perez');
INSERT INTO agenda VALUES ('4', 'jean', 'ramirez','av.pardo 580', '4',
'043587469', '941748596','jean@hotmail.com', 'jean ramirez');
INSERT INTO agenda VALUES ('5', 'melisa', 'cavero','av.huaraz 220', '5',
'043152648', '942121415','melisa@hotmail.com', 'melisa cavero');
INSERT INTO agenda VALUES ('6', 'klaus', 'arteaga','av.lima 145', '6',
'048757686', '943332524','klaus@hotmail.com', 'klaus arteaga');
INSERT INTO agenda VALUES ('7', 'octavio', 'baldarrago','av.galvez 874', '7',
'043584736', '941747485','octavio585@hotmail.com', 'octavio baldarrago');
INSERT INTO agenda VALUES ('8', 'angela', 'suarez','av.pardo 1894', '8',
'043252526', '941741212','angela_humilde@hotmail.com', 'angela suarez');
INSERT INTO agenda VALUES ('8', 'angela', 'suarez','av.pardo 1894', '9',
'043252526', '941741212','angela_humilde@hotmail.com', 'angela suarez');
INSERT INTO agenda VALUES ('9', 'antonhy', 'orbegozo','av.palmeras 456', '1',
'043151919', '942321212','antonhyelgozo@hotmail.com', 'antonhy orbegozo');
INSERT INTO agenda VALUES ('10', 'giancarlo', 'sarrin','av.huaraz 123', '2',
'043411742', '9744105472','giancarlosarrines@hotmail.com', 'giancarlo sarrin');
COMMIT;

ALTER TABLE distrito
ADD INDEX id_index (id);

alter table distrito
    add constraint distrito_agenda_distrito_id_fk
        foreign key (id) references agenda (distrito_id);
