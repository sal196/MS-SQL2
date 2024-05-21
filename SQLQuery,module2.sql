

---------------creating customer table--------------

create table Custummer(
cust_id int,
First_Name varchar(20),
Last_Name varchar(20),
email varchar (20),
Adrr varchar (30),
  city   varchar(20),
state varchar (20),
ZipCode int
 );


insert into  Custummer  values(
 1,'Philip','Kelp', 'PK@gmail.in.com','red street#5-stage','Junia','Alaska',4326 )

insert into  Custumr   values (
2,'Mohammed','Sidique','sid456@gmail.com','Akber street'  ,'Agra','UttarPradesh',17930)

insert into   Custummer  values(
 3,'Salman','Faris','salmonel65@gmail.com', 'JP Nager','Banglore','Maharashtra',22898)


insert  into  Custummer values(
4,'Gorge','Methew','Gorge 1996@yahoo.com','Saint.Martin street_2nd stage', 'Sanjose','Callifornia',44691)

insert into  Custummer values(
5,'Krisha','Mulidharen','Ka86@gmail.com','Saidapet','Chennai','Tamil Nadu',75693)



select * from Custummer;


select * from  Custummer where First_Name  like 'g%' and city='Sanjose'

select first_name,Last_Name from Custummer

--------------------------creating  orders table-----------

create table ordrr(

order_id int not null,
order_date  date,
amount varchar (20),
custumer_id int
);


insert into ordrr values(
  13567,'2022-Aug-6', 2000,5)


  insert into ordrr values(
 17742 ,'2022-sep-2',1200,3)

  insert into ordrr values(
 42230 ,'2022/nov/22',500,2 )


   insert into ordrr values(
  50432,'2022/nov/28',1750,7  ) 


   insert into ordrr values(
 52437 ,'2022/dec/5',1500,6 ) 

  
  select * from ordrr

 ------------------------ inner join-------------------
  select c.First_Name,o.custumer_id
  from Custumr as c inner join  ord as o
  on c.cust_id=o.custumer_id
  
  ------------------------ LEFT join-------------------

  select c.First_Name,o.custumer_id
  from Custumr as c left join  ord as o
  on c.cust_id=o.custumer_id

------------------------ RIGHT join-------------------

   select c.First_Name,o.custumer_id
  from Custumr as c inner join  ord as o
  on c.cust_id=o.custumer_id
	   
 ------------------- updating  orders table---------------

update ordrr set amount=1000 where custumer_id=3

select * from ordrr