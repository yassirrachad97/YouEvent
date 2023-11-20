CREATE DATABASE ConnectEvent;
USE ConnectEvent;
CREATE TABLE participants(
    id INT PRIMARY KEY AUTO_INCREMENT,
    firstname VARCHAR (250),
    lastname VARCHAR (250),
    cin VARCHAR (250),
    email VARCHAR (250),
    phone VARCHAR (250),
    adress VARCHAR (250),
    username VARCHAR (250),
    password VARCHAR (250),
    birthday DATE
);
CREATE TABLE lieux(
    id_lieux INT PRIMARY KEY AUTO_INCREMENT,
    adress VARCHAR (250),
    city VARCHAR (250),
    country VARCHAR (250),
    zipcode INT
);
CREATE TABLE organisation(
    id_org INT PRIMARY KEY AUTO_INCREMENT,
    firstname VARCHAR (250),
    lastname VARCHAR (250),
    email VARCHAR (250),
    phone VARCHAR (250)
 );
 CREATE TABLE sponseur(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR (250),
    sector VARCHAR (250),
    email VARCHAR (250),
    phone VARCHAR (250),
    adress VARCHAR (250)
 );
   CREATE TABLE sponsoriser(
    id_spnsr INT,
    id_event INT,
    PRIMARY KEY (id_spnsr , id_event),
    FOREIGN KEY (id_spnsr) REFERENCES sponseur (id),
    FOREIGN KEY (id_event) REFERENCES event (id)
  );
ALTER TABLE lieux
CHANGE COLUMN id_lieux id INT;
ALTER TABLE organisation
CHANGE COLUMN id_org id INT;
 CREATE TABLE event (
     id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR (250),
    date_time DATETIME,
    description TEXT,
    id_lieux INT,
    FOREIGN KEY (id_lieux) REFERENCES lieux (id)
 );
  CREATE TABLE participer(
    date_time DATETIME,
    price FLOAT,
    quantity INT,
    categorie VARCHAR (250),
    id_part INT,
    id_event INT,
    PRIMARY KEY (id_part , id_event),
    FOREIGN KEY (id_part) REFERENCES participants (id),
    FOREIGN KEY (id_event) REFERENCES event (id)
 );

 CREATE table  animer (
   id_event INT,
    id_org INT,
    PRIMARY KEY (id_event , id_org),
    FOREIGN KEY (id_event) REFERENCES event (id),
    FOREIGN KEY (id_org) REFERENCES organisation (id)
 )


  INSERT INTO participants VALUES (1,'khalid','idrissi','SH1254','khalididriss@gmail.com','+212661234578','hay farah bloc 7 laayoune','khalidisrissi','kh12345','1995-01-20');
  ALTER TABLE participants
CHANGE COLUMN password password BINARY;
  ALTER TABLE participants
CHANGE COLUMN password password BINARY(20);
 INSERT INTO participants VALUES (7,'rachid','houssan','JT1254','rachidhossam123@gmail.com','+212771587266','hay  mohamadi avenu zarqtouni casablanca','rachhossam','houssam1997','1997-02-15');
INSERT INTO lieux VALUES (1,'place municipal el houriya','Marrakech','Maroc','84210');
INSERT INTO lieux VALUES (5,'espace ouverte inbiaat','Agadir','Maroc','85000');
INSERT INTO lieux VALUES (2,'le theatre mohamed VI','casablanca','Maroc','62354');
INSERT  INTO organisation VALUES 
(1,'association MAWAHIB','NAJAH','MAWAHIBNAJAH@gmail.com','+212661656970'),
(2, 'Company XYZ', 'John Doe', 'john.doe@example.com', '+123456789'),
(3, 'Nonprofit ABC', 'Jane Smith', 'jane.smith@example.org', '+987654321'),
(4, 'Tech Solutions', 'Mike Johnson', 'mike.johnson@example.net', '+345678901'),
(5, 'Foundation XYZ', 'Emily Brown', 'emily.brown@example.org', '+1122334455');
 INSERT INTO participants VALUES
 (12, 'ali', 'ahmed', 'AB7896', 'aliahmed123@gmail.com', '+212665478912', '23 Atlas Street, Marrakech', 'ali123', 'ahmed1985', '1985-08-20'),
(25, 'fatima', 'zahra', 'XY4567', 'fatimazahra456@gmail.com', '+212633224567', '15 Oasis Avenue, Agadir', 'fatima456', 'zahra2000', '2000-04-10'),
(18, 'mohammed', 'salah', 'BC2345', 'mohammedsalah22@gmail.com', '+212688745612', '8 Palm Lane, Rabat', 'mohsalah', 'salah1998', '1998-11-05'),
(33, 'sara', 'elham', 'DE7890', 'sara.elham@gmail.com', '+212611234567', '42 Cedar Road, Fes', 'saraelham', 'elham2005', '2005-07-18'),
(8, 'amir', 'hamza', 'FG1234', 'amir.hamza87@gmail.com', '+212633987654', '7 Pine Street, Tangier', 'amir87', 'hamza1987', '1987-09-25'),
(14, 'lina', 'mounir', 'HI5678', 'lina.mounir@gmail.com', '+212661234567', '31 Maple Avenue, Casablanca', 'lina321', 'mounir1995', '1995-12-03'),
(22, 'hassan', 'nadia', 'JK1234', 'hassan.nadia@gmail.com', '+212677891234', '18 Birch Lane, Marrakech', 'hassan12', 'nadia1989', '1989-06-15'),
(19, 'nour', 'karim', 'LM5678', 'nour.karim@gmail.com', '+212633445566', '11 Palm Road, Agadir', 'nour22', 'karim1997', '1997-03-08'),
(27, 'amina', 'omar', 'NO1234', 'amina.omar@gmail.com', '+212612345678', '27 Cedar Avenue, Rabat', 'amina99', 'omar1992', '1992-10-12'),
(10, 'sami', 'leila', 'PQ5678', 'samileila@gmail.com', '+212677890123', '5 Oak Street, Tangier', 'sami55', 'leila2002', '2002-02-28');
 INSERT INTO sponseur VALUES
 (3,'societe aazozi','transport et logistique','Aazozilogistique90@gmail.com','+212525362548','immeuble 65 avenue hassan II bab lhad RABAT'),
 (8, 'entreprise benali', 'informatique et services', 'benali_info@gmail.com', '+212612345678', '34 Rue des Roses, Casablanca'),
(15, 'société Zerouali', 'construction et génie civil', 'zerouali_construction@gmail.com', '+212633987654', '22 Boulevard Mohammed V, Marrakech'),
(6, 'compagnie El Amrani', 'énergie renouvelable', 'elamrani_energy@gmail.com', '+212677891234', '12 Avenue des Oliviers, Agadir'),
(12, 'société Bouzid', 'agroalimentaire', 'bouzid_agro@gmail.com', '+212688745612', '18 Rue des Champs, Fes'),
(19, 'entreprise Mokhtari', 'télécommunications', 'mokhtari_telecom@gmail.com', '+212633224567', '8 Avenue des Palmiers, Tangier');
INSERT INTO event VALUES
(1,'festivale de culture amazighe','2023-12-20 21:00:00',' Immerse yourself in the vibrant celebration of music,
 art, and culture at Harmony Fest.This annual extravaganza brings together talented artists and performers from around the world.
  Located in the heart of a lush meadow, the festival grounds buzz with energy as attendees enjoy a diverse lineup of musical genres, 
  mesmerizing art installations, and delectable food from local vendors. Harmony Fest is not just a music festival; it',2),
  (5, 'Culinary Delights Expo', '2023-11-15 18:30:00', 'Indulge your senses in a culinary journey at the Culinary Delights Expo.
   This gastronomic extravaganza is a paradise for food enthusiasts, showcasing a diverse array of flavors from renowned chefs and local artisans.
    From mouthwatering dishes to innovative cooking demonstrations, the expo offers a feast for the palate. Join us at the venue adorned with aromas of
     exquisite cuisines and experience a celebration of culinary artistry.', 1),
     (3, 'Festival of Lights Parade', '2023-12-08 19:30:00', 'Witness the enchantment at the Festival of Lights Parade. 
     As twilight falls, the city streets come alive with a dazzling spectacle of illuminated floats, vibrant costumes, 
     and joyous performances. Families and friends gather along the parade route to experience the magic of this annual celebration. 
     Join us in the glow of a thousand lights as we usher in the holiday season with music, laughter, and the warmth of community.', 5);

INSERT INTO animer VALUES
(5,3),
(5,1),
(1,3),
(3,4),
(3,2),
(1,5);
INSERT INTO participer VALUES
('2024-01-10 19:30:00','120','1','class 1','8','1'),
('2023-12-22 19:30:00','120','1','class 1','12','3'),
('2023-11-30 19:30:00','120','1','class 1','33','5');

INSERT INTO sponsoriser VALUES
(15,5),
(6,1),
(19,3),
(3,1),
(8,5);
UPDATE participer SET price = 70
WHERE id_event = 3;
UPDATE participer SET quantity = 3
WHERE id_part = 12;
UPDATE participer SET categorie = 'vip'
WHERE id_part = 33;
UPDATE participer SET price = 370.5 
WHERE categorie = 'vip';
DELETE FROM participants WHERE id =14;
SELECT firstname FROM participants  WHERE id=8;
SELECT firstname
 FROM participants
  WHERE firstname LIKE 'a%';
  SELECT firstname, categorie FROM participants ps INNER JOIN participer p on ps.id=p.id_part where p.categorie = "vip";

select ps.firstname from participants ps inner join participer p on ps.id=p.id_part inner join event e on p.id_event=e.id where e.title='festivale de culture amazighe'
