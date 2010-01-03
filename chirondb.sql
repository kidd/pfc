create database if not exists cyllarus;

use cyllarus;

create table Experiment (
	id integer NOT NULL AUTO_INCREMENT,
	user text not null,
	name text not null,
	pop_size integer not null,
	num_aleles integer not null,
	config_file text not null,
	cached integer not null, 
	PRIMARY KEY (id)
) engine = INNODB DEFAULT CHARSET=utf8 ;

create table Individual (
	id integer NOT NULL AUTO_INCREMENT,
	id_exp integer,
	fitness float,
	n_gen integer NOT NULL,
	appears integer NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (id_exp) references 
			Experiment(id) on delete cascade
) engine = INNODB DEFAULT CHARSET=utf8 ;

create table Bound (
	id integer NOT NULL AUTO_INCREMENT,
	id_exp integer NOT NULL,
	pos integer not null,
	value integer,
	PRIMARY KEY (id),
	FOREIGN KEY (id_exp) references 
			Experiment(id) on delete cascade
) engine = INNODB DEFAULT CHARSET=utf8 ;

create table Element(
	id integer NOT NULL AUTO_INCREMENT,
	id_individual integer NOT NULL,
	pos integer NOT NULL, 
	n_gen integer NOT NULL,
	valor integer NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (id_individual) references 
			Individual(id) on delete cascade
) engine = INNODB DEFAULT CHARSET=utf8 ;

