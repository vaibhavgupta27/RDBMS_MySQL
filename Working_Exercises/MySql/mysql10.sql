use ajdb;
create table datacenter(
	id int auto_increment primary key,
	name varchar(100) not null,
	capacity int not null );

show tables;

create table datacenterstats(
	totalcapacity int not null);
