create database if not exists etudiants;

/*drop table etudiant;*/

create table if not exists etudiant(
    Id serial primary key,
    Nom varchar(50),
    Moyenne decimal(5,2),
    Img varchar(50)
);

insert into etudiant Values 
(default, 'Etudiant1', 12.00, 'img1.jpg'),
(default, 'Etudiant2', 14.00, 'img2.jpg'),
(default, 'Etudiant3', 9.00,  'img3.jpg'),
(default, 'Etudiant4', 15.00, 'img4.jpg'),
(default, 'Etudiant5', 8.00 , 'img5.jpg'),
(default, 'Etudiant6', 16.00, 'img6.jpg');

/*select * from etudiant;*/