
create database customer_sale_scenario;
use customer_sale_scenario;
create table Customer(cust_id int primary key, cust_name varchar(50));
create table Item(item_id int primary key, item_name varchar(50),price int);
create table Sale(bill_no int primary key,bill_date date, cust_id int references
customer(cust_id), item_id int references item(item_id),qty_sold int);


insert into Customer values(11,"Asmit");
insert into Customer values(21,"Bipul");
insert into Customer values(22,"Biswajit");
insert into Customer values(43,"Indresh");
insert into Customer values(50,"Meghna");
insert into Customer values(57,"Nitin");
insert into Customer values(83,"Shubham");
insert into Customer values(87,"Sumit");
insert into Customer values(92,"Sushant");
insert into Customer values(97,"Sushobhit");
select *from Customer;


insert into Item values (01100,"c_book",200);
insert into Item values (02100,"cpp_book",1311);
insert into Item values (03100,"dsa_book",567);
insert into Item values (04100,"cp_book",398);
insert into Item values (05100,"dbms_book",1045);
insert into Item values (06100,"math_book",205);
insert into Item values (07100,"science_book",598);
insert into Item values (08100,"networking_book",367);
insert into Item values (09100,"java_book",768);
insert into Item values (10100,"graphics_book",1098);
select *from Item;

insert into Sale values(1001,"2021-10-21",11,01100,5);
insert into Sale values(1002,"2021-10-21",21,02100,6);
insert into Sale values(1003,"2021-10-22",22,03100,7);
insert into Sale values(1004,"2021-10-22",43,04100,8);
insert into Sale values(1005,"2021-10-23",50,05100,9);
insert into Sale values(1006,"2021-10-24",57,0600,10);
insert into Sale values(1007,"2021-10-24",83,07100,11);
insert into Sale values(1008,"2021-10-25",87,08100,12);
insert into Sale values(1009,"2021-10-26",92,09100,13);
insert into Sale values(1010,"2021-10-27",97,10100,14);
select *from Sale;
