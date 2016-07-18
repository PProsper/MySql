use database Petstore;
create table Petinfo (ID int not null auto_increment, Pet_Name varchar (20), Species varchar (20), 
DOB date, Phone_Number int (7), Email varchar (20), Balance int, primary key(ID))  	
#Alter Table Petinfo add Gender varchar(1) after Species; 

create table Ownerinfo (ID int not null auto_increment, First_Pet_ID varchar (20), Firstname varchar (40),
Lastname  varchar (40), Gender varchar (1), DOB date, Phone_Number int(7), Email varchar (20), Balance int, primary key(ID))
Drop Table Ownerinfo; 
#Alter Table Ownerinfo add Lastname varchar (40) after Firstname;
#Alter Table Ownerinfo drop column Pet_Name;
Alter Table Ownerinfo drop column Species;
insert (ID int not null auto_increment, Pet_Name varchar (20), Species varchar (20), 
DOB date, Phone_Number int (7), Email varchar (20), Balance int, primary key(ID))  	
#Alter Table Petinfo add First_Pet_ID int(10) before First_Name;
Alter Table  Petinfo drop column Balance;
Alter Table Petinfo add column Date_Last_Visit date; 

Select * from Petinfo;
Select *from Ownerinfo;

select Petinfo.Pet_name, Petinfo.Gender, Ownerinfo.Firstname, Ownerinfo.Lastname, Ownerinfo.gender
from Ownerinfo inner join Petinfo ON Petinfo.Owner_Lastname=Ownerinfo.Lastname;

select Ownerinfo.FirstName, Ownerinfo.LastName, Ownerinfo.Balance from Ownerinfo left outer join Petinfo ON Petinfo.Gender=Ownerinfo.Gender And Ownerinfo.LastName=Petinfo.Owner_Lastname;

create View GenderCompare As select p.pet_name,p.gender,o.first_name,o.last_name from ownerinfo 
As o left outer join petinfo as p ON p.gender=o.gender;

select * from Petinfo Union select * from Ownerinfo;

create or replace view femaleowners AS select p.pet_name,p.gender,o.first_name,o.last_name from ownerinfo 
As o left outer join petinfo as p ON o.gender= 'F' or o.gender= 'f';


 