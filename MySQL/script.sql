SET STORAGE_ENGINE = INNODB;

-- Change Erehwon to your username on the next 3 lines
DROP DATABASE IF EXISTS eodame;
CREATE DATABASE eodame;
USE eodame;

-- Create tables


-- Create Inventory_Group table
CREATE TABLE Inventory_Group (
  group_code INT NOT NULL AUTO_INCREMENT,
  group_name VARCHAR(20),
  PRIMARY KEY(group_code)
);

-- Create Inventory table
CREATE TABLE Inventory (
  item_code CHAR(8) NOT NULL,
  item_name VARCHAR(40),
  item_description VARCHAR(140),
  item_author VARCHAR (60),
  item_image_loc VARCHAR(140), 
  item_group INT,
  item_price DECIMAL(10,2),
  item_stock_location VARCHAR (10),  
  item__stock_count INT,
  item_order_count INT,
  PRIMARY KEY(item_code),
  FOREIGN KEY(item_group) REFERENCES Inventory_Group(group_code) ON DELETE SET NULL
);

-- Create Customer table
CREATE TABLE Customer (
  customer_number INT NOT NULL AUTO_INCREMENT,
  surname VARCHAR(40),
  initials VARCHAR(10),
  firstname VARCHAR(40),
  title ENUM('Mr', 'Mrs', 'Miss', 'Ms', 'Dr', 'Prof', 'Rev'),
  address1 VARCHAR(60),
  address2 VARCHAR(60),
  city VARCHAR(30),
  county VARCHAR(30),
  postcode VARCHAR(8),
  passwd VARCHAR(128),
  passphrase VARCHAR(128),
  PRIMARY KEY(customer_number)
);

--Create Customer_Order Table
CREATE TABLE Customer_Order (
  order_number INT NOT NULL AUTO_INCREMENT,
  order_date DATETIME NOT NULL,
  delivered BOOLEAN,
  shipping_date DATETIME, 
  customer_number INT NOT NULL,
  PRIMARY KEY(order_number)   
);  
  
--Create Order_Item Table
CREATE TABLE Order_Item (
  item_code CHAR(8) NOT NULL,
  order_number INT NOT NULL,
  quantity INT NOT NULL,
  PRIMARY KEY(item_code, order_number),
  FOREIGN KEY(order_number) REFERENCES Customer_Order(order_number) ON DELETE CASCADE,
  FOREIGN KEY(item_code) REFERENCES Inventory(item_code)
);
  

-- Create Manager table
CREATE TABLE Manager (
  manager_number INT NOT NULL,
  surname VARCHAR(40),
  initials VARCHAR(10),
  firstname VARCHAR(40),
  passwd VARCHAR(128),
  passphrase VARCHAR(128),
 PRIMARY KEY(manager_number)
);

-- Populate tables

INSERT INTO Inventory_Group VALUES (1001, "Books");
INSERT INTO Inventory_Group VALUES (1002, "Music");
INSERT INTO Inventory_Group VALUES (1003, "Games");
INSERT INTO Inventory_Group VALUES (1004, "DVDs");

INSERT INTO Inventory VALUES ("AA01-001", "Of Mice and Men", "\"Guys like us, that work on ranches, are the loneliest guys in the world. They got no family. They don\'t belong no place ...With us it ain\'t", "John Steinbeck", "miceandmen.jpg", 1001, 10.99 ,"A7-33", 10, 15 );
INSERT INTO Inventory VALUES ("AA01-002", "Cambridge Latin Course, Book 1: Level 1", "The leading Latin course worldwide Book I begins in the city of Pompeii shortly before the eruption of Vesuvius.", "Cambridge School Classics Project", "latincourse.jpg", 1001, 12.75 ,"A5-22", 5, 10 );
INSERT INTO Inventory VALUES ("AA01-003", "King Lear", "By far the best edition of King Lear - in respect of both textual and other matters. This volume is a treasure-trove of precise information ", "William Shakespeare, ed. R A Foakes", "kinglear.jpg", 1001, 8.99 ,"A5-26", 25, 100 );
INSERT INTO Inventory VALUES ("AA01-054", "Babel", "Babel is the second studio album from London folk rockers Mumford and Sons, following the phenomenally successful debut Sigh No More (2009).", "Mumford and Sons", "babel.jpg", 1002, 8.99 ,"B1-23", 25, 100 );
INSERT INTO Inventory VALUES ("AA01-058", "Random Access Memories", "Random Access Memories is, without a doubt Daft Punk, but it's a sign of how the group is evolving. The signature sound is still there, but ", "Daft Punk", "ram.jpg", 1002, 9.99 ,"B1-28", 15, 25 );
INSERT INTO Inventory VALUES ("AA01-059", "The Shocking Miss Emerald", "The Shocking Miss Emerald is the second studio album from Dutch singing sensation Caro Emerald. The album promises more of the same jazzy po", "Caro Emerald", "theshockingmissemerald.jpg", 1002, 10.00 ,"B4-04", 15, 25 );
INSERT INTO Inventory VALUES ("AA01-060", "Our Version of Events", "For a relative newcomer, Sande has already had an incredible career. As a published writer she has written hit singles for Chipmunk (Diamond", "Emeli Sande", "ourversionofevents.jpg", 1002,9.99 ,"B2-25", 15, 25 );
INSERT INTO Inventory VALUES ("AA01-004", "The Hogwarts Library Boxed Set", "A highly collectable hardback boxed set from the world of Harry Potter - containing handsome new editions of Quidditch Through the Ages, Fan", "J K Rowling", "hogwartslibrary.jpg", 1001, 25.00 ,"A6-12", 16, 0 );
INSERT INTO Inventory VALUES ("AA01-005", "A Hat Full of Sky", "A Hat Full of Sky continues the adventures of eleven-year-old Tiffany as she endeavours to become a proper witch. She's 'done' magic before,", "Terry Pratchett", "ahatfullofsky.jpg", 1001, 15.50 ,"A23-06", 10, 0 );
INSERT INTO Inventory VALUES ("AA01-006", "Times Good University Guide 2014 ", "The Times Good University Guide is an essential tool that gives you all the information you need to make the crucial decision of where to st", "John O\'Leary", "timesgooduniversity.jpg", 1001, 16.99 ,"A23-07", 0, 100 );
INSERT INTO Inventory VALUES ("AA01-007", "Empire of the Deep: The Rise and Fall of", "The story of our navy is nothing less than the story of Britain, our culture and our empire. Much more than a parade of admirals and their b", "Ben Wilson", "empireofthedepp.jpg", 1001, 25.00 ,"A23-09", 0, 10);
INSERT INTO Inventory VALUES ("AA01-008", "Titanic", "\"Deep romance about a couple who are stuck on a boat which hits something. Panic.                                                                                          ", "James Cameron", "titanic.jpg", 1004, 10.99 ,"A7-33", 10, 15 );
INSERT INTO Inventory VALUES ("AA01-009", "The Avengers", "\"Superheroes fight together to save Earth which is being attacked by aliens.                                                                                          ", "Joss Whedon", "theavengers.jpg", 1004, 10.99 ,"A7-33", 10, 15 );
INSERT INTO Inventory VALUES ("AA01-010", "The Dark Knight", "\"Normal man in an amazing suit fights evil people trying to cause havoc in America                                                                                 ", "Christopher Nolan", "thedarkknight.jpg", 1004, 10.99 ,"A7-33", 10, 15 );
INSERT INTO Inventory VALUES ("AA01-011", "Evolve", "\"Play as a Monster or a Hunter. Very amazing game.                                                                                                                          ", "2K", "evolve.jpg", 1003, 10.99 ,"A7-33", 10, 15 );
INSERT INTO Inventory VALUES ("AA01-012", "Fifa 15", "\"Basically like football in real life but in a game.                                                                                                                       ", "EA Sports", "fifa15.jpg", 1003, 10.99 ,"A7-33", 10, 15 );
INSERT INTO Inventory VALUES ("AA01-013", "COD: Black Ops", "\"Shoot players, bots or zombies to win the game                                                                                                                     ", "Treyarch", "cod.jpg", 1003, 10.99 ,"A7-33", 10, 15 );




INSERT INTO Customer VALUES (1001, "Smith", "J.", "Alan", 'Mr', "43 The Glebe", "Mugwell Hill", "Nodnol", "", "N10 4SB", MD5("Alan"), "Mugwell Hill");      
INSERT INTO Customer VALUES (1003, "Smith", "W.", "Fiona", 'Mrs', "43 The Glebe", "Mugwell Hill", "Nodnol", "", "N10 4SB", MD5("Fiona"), "Mugwell Hill");
INSERT INTO Customer VALUES (5789, "Potter", "J.", "Harry", 'Mr', "4 Privet Drive", "", "Little Whinging", "Surrey", "LW3 6JR", MD5("Harry"), "Diagonally");
INSERT INTO Customer VALUES (4321, "Black", "S.", "Sirius", 'Mr', "12 Grimmauld Place", "Bensington ", "Nodnol", "", "W1 3RD", MD5("Sirius"), "Diagonally");
INSERT INTO Customer VALUES (6999, "McGonagall", "T.", "William", 'Mr', "12 Dundas Street", "Bad Poetry", "Yelsiap", "Werfner", "G43 3RD", MD5("Wiliam"), "Silvery Tay");
INSERT INTO Customer VALUES (6956, "McFeegle", "", "Wee Jock", 'Mr',  "The Barrow", "The Chalk", "nr Waylands", "Ramtops", "TP1 7XF", MD5("Jock"), "Jings Crivens");
INSERT INTO Customer VALUES (9867, "Aching", "", "Tiffany", 'Miss', "The Farm", "The Chalk", "nr Waylands", "Ramtops", "TP1 5RR", MD5("Tiffany"), "I shall wear Midnight");

INSERT INTO Customer_Order VALUES (1001, SUBDATE(NOW(), INTERVAL 2 MONTH), TRUE, SUBDATE(NOW(), INTERVAL 50 DAY),  1001);
INSERT INTO Customer_Order VALUES (1002, SUBDATE(NOW(), INTERVAL 40 DAY), TRUE, SUBDATE(NOW(), INTERVAL 38 DAY), 5789);
INSERT INTO Customer_Order VALUES (1003, SUBDATE(NOW(), INTERVAL 30 DAY), TRUE, SUBDATE(NOW(), INTERVAL 28 DAY), 1001);
INSERT INTO Customer_Order VALUES (1004, SUBDATE(NOW(), INTERVAL 21 DAY), TRUE, SUBDATE(NOW(), INTERVAL 20 DAY), 5789);
INSERT INTO Customer_Order VALUES (1005, SUBDATE(NOW(), INTERVAL 14 DAY), FALSE, '1900/01/01', 9867);
INSERT INTO Customer_Order VALUES (1006, SUBDATE(NOW(), INTERVAL 8 DAY), TRUE, SUBDATE(NOW(), INTERVAL 7 DAY), 6999);
INSERT INTO Customer_Order VALUES (1007, SUBDATE(NOW(), INTERVAL 6 DAY), TRUE, SUBDATE(NOW(), INTERVAL 5 DAY), 1001);
INSERT INTO Customer_Order VALUES (1008, SUBDATE(NOW(), INTERVAL 4 DAY), TRUE, SUBDATE(NOW(), INTERVAL 3 DAY), 5789);
INSERT INTO Customer_Order VALUES (1009, SUBDATE(NOW(), INTERVAL 4 DAY), FALSE, '1900/01/01', 6999);
INSERT INTO Customer_Order VALUES (1010, SUBDATE(NOW(), INTERVAL 2 DAY), TRUE, SUBDATE(NOW(), INTERVAL 1 DAY), 6956);
INSERT INTO Customer_Order VALUES (1011, SUBDATE(NOW(), INTERVAL 1 DAY), FALSE, '1900/01/01', 5789);
INSERT INTO Customer_Order VALUES (1012, SUBDATE(NOW(), INTERVAL 1 DAY), FALSE, '1900/01/01', 9867);
INSERT INTO Customer_Order VALUES (1013, NOW(), FALSE, '1900/01/01', 1001);

INSERT INTO Order_Item VALUES ("AA01-002", 1001 ,1);
INSERT INTO Order_Item VALUES ("AA01-004", 1002 ,1);
INSERT INTO Order_Item VALUES ("AA01-060", 1002 ,1);
INSERT INTO Order_Item VALUES ("AA01-060", 1003 ,1);
INSERT INTO Order_Item VALUES ("AA01-054", 1003 ,1);
INSERT INTO Order_Item VALUES ("AA01-059", 1003 ,1);
INSERT INTO Order_Item VALUES ("AA01-054", 1004 ,1);
INSERT INTO Order_Item VALUES ("AA01-005", 1005 ,1);
INSERT INTO Order_Item VALUES ("AA01-003", 1006 ,1);
INSERT INTO Order_Item VALUES ("AA01-002", 1006 ,1);
INSERT INTO Order_Item VALUES ("AA01-001", 1007 ,1);
INSERT INTO Order_Item VALUES ("AA01-003", 1008 ,1);
INSERT INTO Order_Item VALUES ("AA01-001", 1009 ,1);
INSERT INTO Order_Item VALUES ("AA01-005", 1010 ,25);
INSERT INTO Order_Item VALUES ("AA01-007", 1011 ,1);
INSERT INTO Order_Item VALUES ("AA01-059", 1012 ,1);
INSERT INTO Order_Item VALUES ("AA01-054", 1012 ,1);
INSERT INTO Order_Item VALUES ("AA01-060", 1012 ,1);
INSERT INTO Order_Item VALUES ("AA01-007", 1013 ,1);
INSERT INTO Order_Item VALUES ("AA01-006", 1013 ,1);

INSERT INTO Manager VALUES(100, "Jones", "", "Adam", MD5("Adam"), "Erehwon website" );

-- Create the user. Change JSP to your username.
GRANT DELETE,SELECT,INSERT,UPDATE ON eodame.* TO 'eodame'@'localhost' IDENTIFIED BY 'obscure';


