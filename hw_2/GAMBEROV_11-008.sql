CREATE DATABASE h_w_2;
\c h_w_2;

CREATE TABLE client(
	id INT NOT NULL PRIMARY KEY unique,
    fio varchar(50),
    number_phone integer,
    bank_cart integer
);
CREATE TABLE tarif (
	id INT NOT NULL PRIMARY KEY unique, 
    name_tariff varchar(50));
insert into tarif (id, name_tariff) values (0, 'comfort');
insert into tarif (id, name_tariff) values (1, 'comfort');
insert into tarif (id, name_tariff) values (2, 'comfort');
insert into tarif (id, name_tariff) values (3, 'comfort');
insert into tarif (id, name_tariff) values (4, 'comfort');
insert into tarif (id, name_tariff) values (5, 'comfort');
insert into tarif (id, name_tariff) values (6, 'comfort');
insert into tarif (id, name_tariff) values (7, 'comfort');
insert into tarif (id, name_tariff) values (8, 'comfort');
insert into tarif (id, name_tariff) values (9, 'comfort');

insert into client (id ,fio, number_phone, bank_cart) values (0,'Mariya IV', 7954354, 112223);
insert into client (id ,fio, number_phone, bank_cart) values (1,'SOSISKA HOT DOG', 3154342, 3214123);
insert into client (id ,fio, number_phone, bank_cart) values (2,'I LOVE IS', 79142314, 9999123);
insert into client (id ,fio, number_phone, bank_cart) values (3,'Lili Oldrin', 9731323, 999913);
insert into client (id ,fio, number_phone, bank_cart) values (4,'Marshal Oldrin', 9914214, 921123);
insert into client (id ,fio, number_phone, bank_cart) values (5,'popugai', 76435342, 1723);
insert into client (id ,fio, number_phone, bank_cart) values (6,'NORMAN OSBARN', 234352, 7654123);
insert into client (id ,fio, number_phone, bank_cart) values (7,'PETER PARKER', 79123314, 3219101);
insert into client (id ,fio, number_phone, bank_cart) values (8,'Ted Mostby', 792123423, 323413);
insert into client (id ,fio, number_phone, bank_cart) values (9,'Barny Ercison', 792142314, 94543);
CREATE TABLE taxist(
	id integer not null PRIMARY KEY,
    fio varchar(50),
    car varchar(50),
    rating integer,
    tarif_id integer references tarif (id)
);
insert into taxist (id ,fio, car, rating) values (0 ,'Odin', 'lada', 1);
insert into taxist (id ,fio, car, rating) values (1,'Akito', 'toyota', 5);
insert into taxist (id ,fio, car, rating) values (2,'Bearny', 'Mark 2', 9);
insert into taxist (id ,fio, car, rating) values (3,'Iron man', 'Volga', 4);
insert into taxist (id ,fio, car, rating) values (4,'Tolstoi', 'suzuki', 2;
insert into taxist (id ,fio, car, rating) values (5,'Madjahet', 'granta', 1);
insert into taxist (id ,fio, car, rating) values (6,'Brat', 'priora', 0);
insert into taxist (id ,fio, car, rating) values (7,'Papa', 'vertolet', 2);
insert into taxist (id ,fio, car, rating) values (8,'Maksim', 'kia rio', 10);
insert into taxist (id ,fio, car, rating) values (9,'Rodina', 'lada', 1);

CREATE TABLE order_ (
	id INT NOT NULL PRIMARY KEY,
	client_id integer references client (id),
    taxist_id integer references taxist (id),
    adress varchar(50),
    price integer,
    start_ varchar(50),
    end_ varchar(50)
    );
insert into order_ (id , price, start_, end_) values (0, 5232, 'Kazan', 'UFA');
insert into order_ (id , price, start_, end_) values (1, 125, 'Kolco', 'Kremlevskaya 35');
insert into order_ (id ,price, start_, end_) values (2, 345, 'Home', 'TC MEGA');
insert into order_ (id ,price, start_, end_) values (3, 765, 'Sukonnaya Sloboda', 'MEGA');
insert into order_ (id , price, start_, end_) values (4, 256, 'KazanMall', 'Avtovokzal Vost');
insert into order_ (id ,price, start_, end_) values (5, 123, 'Kreml', 'KFU');
insert into order_ (id ,price, start_, end_) values (6, 546, 'School 175', 'Technikum');
insert into order_ (id ,price, start_, end_) values (7, 278, 'Tandem', 'Park House');
insert into order_ (id ,price, start_, end_) values (8, 456, 'AK BARS ARENA', 'Stadion Rubin');
insert into order_ (id ,price, start_, end_) values (9,10002, 'Kazan', 'Bugulma');
