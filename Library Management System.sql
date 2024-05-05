create database LIBRARY_MANAGEMENT_SYSTEM1
create table login
(
login_id int not null,
login_readername varchar(255) not null,
login_readerpass varchar(255) not null primary key,
);
INSERT INTO login VALUES
(11, 'Ammar', 'Am345'),
(12, 'Mughees', 'Mu340'),
(13, 'Abdullah', 'Ab347'),
(14, 'Owaim', 'Om346'),
(15, 'Ali', 'Al457'),
(16, 'Sara', 'Sa582'),
(17, 'Hassan', 'Ha678'),
(18, 'Fatima', 'Fa267'),
(19, 'Ahmed', 'Ah529'),
(20, 'Sana', 'Sa245'),
(21, 'Mohammad', 'Mo783'),
(22, 'Aisha', 'Ai328'),
(23, 'Usman', 'Us437'),
(24, 'Zainab', 'Za523'),
(25, 'Hamza', 'Ha872'),
(26, 'Mehwish', 'Me235'),
(27, 'Farhan', 'Fa648'),
(28, 'Ayesha', 'Ay785'),
(29, 'Bilal', 'Bi438'),
(30, 'Hina', 'Hi523'),
(31, 'Kashif', 'Ka792'),
(32, 'Zara', 'Za986'),
(33, 'Imran', 'Im367'),
(34, 'Nida', 'Ni523'),
(35, 'Faisal', 'Fa649');


create table Library1
(
lib_name varchar(255) not null,
lib_address varchar(255) primary key,
);


INSERT INTO Library1 VALUES
('City Library', 'Sialkot'),
('Center Library', 'Lahore'),
('Quaid e Azam Library', 'Karachi'),
('Town Library', 'Rawalpindi'),
('National Library', 'Islamabad'),
('Public Library', 'Faisalabad'),
('University Library', 'Multan'),
('Community Library', 'Peshawar'),
('School Library', 'Hyderabad'),
('Digital Library', 'Gujranwala'),
('Central Library', 'Abbottabad'),
('College Library', 'Sargodha'),
('District Library', 'Bahawalpur'),
('Research Library', 'Gujrat'),
('Special Library', 'Larkana'),
('Children Library', 'Mirpur Khas'),
('Art Library', 'Kohat'),
('Science Library', 'Mardan'),
('Reference Library', 'Rahim Yar Khan'),
('Heritage Library', 'Charsadda'),
('Music Library', 'Kamoke'),
('Academic Library', 'Jhelum'),
('Historical Library', 'Gwadar'),
('Medical Library', 'Okara'),
('Legal Library', 'Patoki');


create table reader
(
reader_name varchar(255) not null,
reader_id int not null primary key,
reader_address varchar(255),
reader_email varchar(255) not null,
reader_mobile varchar(255) ,
reader_pass varchar(255) not null,
lib_address varchar (255) foreign key references library1(lib_address)
);

INSERT INTO reader VALUES
('Owaim', 102, 'Iqubal Town', 'qm@gmail.com', '0303-4224042', 'hagdbah4', 'Sialkot'),
('Ammar', 52, 'Sabzazar', 'am143@gmail.com', '0303-9966699', 'amrs12', 'Lahore'),
('Ali', 314, 'Gulshan', 'ali@gmail.com', '0321-5678901', 'alipass12', 'Karachi'),
('Sana', 567, 'Model Town', 'sana@hotmail.com', '0333-1234567', 'sana123', 'Rawalpindi'),
('Hassan', 215, 'Defence', 'hassan@gmail.com', '0312-9876543', 'hassan12', 'Islamabad'),
('Aisha', 713, 'Gulberg', 'aisha@yahoo.com', '0345-5674321', 'aisha123', 'Faisalabad'),
('Farhan', 876, 'Cantt', 'farhan@gmail.com', '0300-3456789', 'farhan456', 'Multan'),
('Nida', 167, 'Garden Town', 'nida@hotmail.com', '0314-1234567', 'nida789', 'Peshawar'),
('Imran', 901, 'Johar Town', 'imran@yahoo.com', '0333-7654321', 'imran12', 'Hyderabad'),
('Faisal', 754, 'Township', 'faisal@gmail.com', '0322-9876543', 'faisal123', 'Gujranwala'),
('Ahmed', 289, 'Shahra-e-Faisal', 'ahmed@hotmail.com', '0315-5678901', 'ahmed456', 'Abbottabad'),
('Sara', 523, 'Allama Iqbal Town', 'sara@gmail.com', '0334-1234567', 'sara123', 'Sargodha'),
('Usman', 712, 'F-8', 'usman@gmail.com', '0312-3456789', 'usman12', 'Bahawalpur'),
('Fatima', 671, 'Clifton', 'fatima@yahoo.com', '0345-7654321', 'fatima123', 'Gujrat'),
('Hamza', 228, 'Bahria Town', 'hamza@hotmail.com', '0300-9876543', 'hamza12', 'Larkana'),
('Mehwish', 417, 'Garden East', 'mehwish@yahoo.com', '0314-5678901', 'mehwish456', 'Mirpur Khas'),
('Ayesha', 601, 'Faisal Town', 'ayesha@gmail.com', '0322-1234567', 'ayesha123', 'Kohat'),
('Bilal', 442, 'DHA', 'bilal@hotmail.com', '0333-9876543', 'bilal12', 'Mardan'),
('Hina', 295, 'North Nazimabad', 'hina@yahoo.com', '0315-7654321', 'hina123', 'Rahim yar khan'),
('Kashif', 907, 'Gulistan-e-Jauhar', 'kashif@gmail.com', '0304-5678901', 'kashif456', 'charsadda'),
('Zara', 436, 'Defence', 'zara@yahoo.com', '0345-9876543', 'zara12', 'Kamoke'),
('Zainab', 550, 'Punjab Colony', 'zainab@hotmail.com', '0300-1234567', 'zainab123', 'Jhelum'),
('Mohammad', 832, 'Jail Road', 'mohammad@gmail.com', '0312-7654321', 'mohammad12', 'Gwadar'),
('Sadia', 419, 'PECHS', 'sadia@yahoo.com', '0333-5678901', 'sadia456', 'Okara'),
('Tashad', 192, 'Maragzar', 'tashad96@gmail.com', '0315-5454042', 'tasnvekw85', 'Patoki');


create table staff
(
st_id varchar(255) not null primary key,
st_name varchar(255),
lib_address varchar (255) foreign key (lib_address) references library1(lib_address), 
);

INSERT INTO staff VALUES
('102', 'Qasim', 'Sialkot'),
('54', 'Usman', 'Lahore'),
('412', 'Noor', 'Karachi'),
('82', 'Asfand', 'Rawalpindi'),
('163', 'Naveed', 'Islamabad'),
('219', 'Sadia', 'Faisalabad'),
('382', 'Saeed', 'Multan'),
('495', 'Noman', 'Peshawar'),
('668', 'Yasir', 'Hyderabad'),
('756', 'Adeel', 'Gujranwala'),
('908', 'Zubair', 'Abbottabad'),
('131', 'Rabia', 'Sargodha'),
('266', 'Khalid', 'Bahawalpur'),
('387', 'Waqas', 'Gujrat'),
('514', 'Saman', 'Larkana'),
('659', 'Saim', 'Mirpur Khas'),
('777', 'Arslan', 'Kohat'),
('842', 'Sana', 'Mardan'),
('929', 'Aamir', 'Rahim yar khan'),
('124', 'Fahad', 'charsadda'),
('255', 'Hassan', 'Kamoke'),
('381', 'Nida', 'Jhelum'),
('498', 'Tariq', 'Gwadar'),
('661', 'Mehmood', 'Okara'),
('795', 'Yusra', 'Patoki');

create table publisher
(
pub_id int primary key,
pub_address varchar(255),
pub_name varchar(255),
year_of_publish int not null
);
INSERT INTO publisher VALUES
(98, 'samnabad', 'Salman', 2017),
(104, 'Manawa', 'Sanail', 2002),
(665, 'Ali Town', 'Zuraiz', 2022),
(995, 'Azam Garden', 'Burhan', 2007),
(767, 'Township', 'Zain', 2015),
(154, 'Cantt', 'Kamran', 2005),
(347, 'Gulberg', 'Waqas', 2019),
(623, 'Model Town', 'Adnan', 2010),
(285, 'Garden Town', 'Sara', 2008),
(715, 'Faisal Town', 'Amir', 2013),
(442, 'Johar Town', 'Nadia', 2016),
(826, 'Gulshan', 'Imran', 2009),
(951, 'Clifton', 'Zubair', 2012),
(128, 'Nazimabad', 'Hassan', 2020),
(277, 'PECHS', 'Umar', 2004),
(469, 'Saddar', 'Adil', 2014),
(682, 'Karimabad', 'Ali', 2011),
(785, 'Garden East', 'Talha', 2006),
(934, 'Malir', 'Shoaib', 2021),
(109, 'DHA', 'Noman', 2003),
(256, 'North Nazimabad', 'Nida', 2018),
(376, 'Liaquatabad', 'Usman', 2001),
(539, 'Bahadurabad', 'Mansoor', 2011),
(672, 'Gulistan-e-Jauhar', 'Sajid', 2008),
(814, 'Orangi Town', 'Tariq', 2005);


create table author
(
author_id int primary key,
author_name varchar(255) not null,
qualifications varchar(255),
subjec varchar(255),
);

INSERT INTO author (author_id, author_name, qualifications, subjec)
VALUES
  (1, 'Ali', 'PhD', 'Computer Science'),
  (2, 'Fatima', 'MS', 'Electrical Engineering'),
  (3, 'Ahmed', 'MBA', 'Business Administration'),
  (4, 'Sana', 'PhD', 'Biochemistry'),
  (5, 'Mohammad', 'BS', 'Civil Engineering'),
  (6, 'Ayesha', 'MS', 'Environmental Science'),
  (7, 'Hassan', 'PhD', 'Physics'),
  (8, 'Amina', 'MSc', 'Mathematics'),
  (9, 'Farhan', 'MBA', 'Marketing'),
  (10, 'Zainab', 'PhD', 'Chemistry'),
  (11, 'Usman', 'MS', 'Mechanical Engineering'),
  (12, 'Saima', 'PhD', 'Microbiology'),
  (13, 'Kamran', 'MS', 'Information Technology'),
  (14, 'Madiha', 'MBA', 'Finance'),
  (15, 'Bilal', 'BS', 'Aerospace Engineering'),
  (16, 'Hina', 'PhD', 'Psychology'),
  (17, 'Imran', 'MSc', 'Statistics'),
  (18, 'Sadia', 'MBA', 'Human Resource Management'),
  (19, 'Waqar', 'PhD', 'Sociology'),
  (20, 'Aisha', 'MS', 'Software Engineering'),
  (21, 'Kashif', 'PhD', 'Economics'),
  (22, 'Zara', 'MSc', 'Biotechnology'),
  (23, 'Asad', 'MBA', 'Supply Chain Management'),
  (24, 'Sara', 'PhD', 'Political Science'),
  (25, 'Naveed', 'MS', 'Communication Studies');


create table member
(
member_id int primary key,
member_name varchar(255),
);
INSERT INTO member (member_id, member_name)
VALUES
  (1, 'Atif'),
  (2, 'Amna'),
  (3, 'Sahil'),
  (4, 'Sameer'),
  (5, 'Fatima'),
  (6, 'Ali'),
  (7, 'Aisha'),
  (8, 'Imran'),
  (9, 'Sana'),
  (10, 'Ahmed'),
  (11, 'Zara'),
  (12, 'Hamza'),
  (13, 'Hina'),
  (14, 'Usman'),
  (15, 'Ayesha'),
  (16, 'Kamran'),
  (17, 'Farah'),
  (18, 'Bilal'),
  (19, 'Nadia'),
  (20, 'Tahir'),
  (21, 'Saima'),
  (22, 'Khalid'),
  (23, 'Rabia'),
  (24, 'Nasir'),
  (25, 'Safia');

  
create table member_info
(
member_mobile varchar(255),
member_email varchar(255),
member_expiry date,
member_date date,
member_id int foreign key references [member],
);
INSERT INTO member_info VALUES
  ('0304-7885412', 'muha@gmail.com', '2023-08-01', '2018-08-01', 1),
  ('0326-0554126', 'atiffm@gmail.com', '2028-03-29', '2018-03-29', 2),
  ('0332-8435420', 'nadir45@gmail.com', '2025-09-05', '2020-09-05', 3),
  ('0315-2894521', 'owaim2@gmail.com', '2022-12-21', '2017-12-21', 4),
  ('0345-1234567', 'zainab@gmail.com', '2024-05-15', '2019-05-15', 5),
  ('0312-9876543', 'ali123@yahoo.com', '2023-11-30', '2018-11-30', 6),
  ('0321-5678901', 'hassan34@gmail.com', '2026-02-10', '2021-02-10', 7),
  ('0333-2468135', 'sara22@hotmail.com', '2027-07-25', '2022-07-25', 8),
  ('0345-6789012', 'amir56@gmail.com', '2025-04-03', '2020-04-03', 9),
  ('0311-3456789', 'farahkhan@gmail.com', '2024-09-17', '2019-09-17', 10),
  ('0322-9876543', 'nasir786@yahoo.com', '2022-06-08', '2017-06-08', 11),
  ('0334-5678901', 'maria19@gmail.com', '2023-03-12', '2018-03-12', 12),
  ('0313-2468135', 'usmanali@hotmail.com', '2025-11-21', '2020-11-21', 13),
  ('0346-6789012', 'nida33@gmail.com', '2024-08-05', '2019-08-05', 14),
  ('0324-3456789', 'ahmedkhan@gmail.com', '2027-02-28', '2022-02-28', 15),
  ('0331-9876543', 'sadiakhan@yahoo.com', '2026-07-13', '2021-07-13', 16),
  ('0342-5678901', 'waqar99@gmail.com', '2022-12-25', '2017-12-25', 17),
  ('0315-7890123', 'hina12@gmail.com', '2023-09-09', '2018-09-09', 18),
  ('0323-2468135', 'asifali@hotmail.com', '2026-05-03', '2021-05-03', 19),
  ('0335-6789012', 'sarahkhan@gmail.com', '2025-10-17', '2020-10-17', 20),
  ('0310-3456789', 'naeemahmed@yahoo.com', '2024-05-30', '2019-05-30', 21),
  ('0321-9876543', 'ammarali@gmail.com', '2022-10-15', '2017-10-15', 22),
  ('0332-5678901', 'fareeha44@gmail.com', '2023-07-28', '2018-07-28', 23),
  ('0340-7890123', 'hassankhan@gmail.com', '2026-12-10', '2021-12-10', 24),
  ('0314-2468135', 'maryamkhan@hotmail.com', '2027-05-24', '2022-05-24', 25);

  
create table book
(
book_title varchar(255),
book_id int not null primary key,
book_type varchar(255),
book_edition int not null,
member_id int foreign key (member_id) references member(member_id),
pub_id int foreign key (pub_id) references publisher(pub_id),
author_id int foreign key (author_id) references author(author_id),
reader_id int foreign key (reader_id) references reader(reader_id),
);
INSERT INTO book VALUES
('The Alchemist',203, 'Paulo Coelho',6, 1,    98,1,102),
('To Kill a Mockingbird',407 , 'Harper Lee',1, 2,   104,2,52),
('Pride and Prejudice',512,  'Jane Austen',2, 3,   665,3,314),
('1984',726,  'George Orwell',6, 4,   995,4,567),
('The Great Gatsby',835,  'F. Scott Fitzgerald',8, 5,   767,5,215),
('Moby Dick',912,  'Herman Melville',1, 6,    154,6,713),
('War and Peace',115,  'Leo Tolstoy',9, 7,    347,7,876),
('The Catcher in the Rye',217,  'J.D. Salinger',5, 8,    623,8,167),
('Crime and Punishment',335,  'Fyodor Dostoevsky',7, 9,    285,9,901),
('The Hobbit',439,  'J.R.R. Tolkien',1, 10,    715,10,754),
('The Lord of the Rings',558,  'J.R.R. Tolkien',8, 11,     442,11,289),
('Alice''s Adventures in Wonderland',617,  'Lewis Carroll',4, 12,    826,12,523),
('Brave New World',729,  'Aldous Huxley',7, 13,    951,13,712),
('The Odyssey',834,  'Homer',7, 14,    128,14,671),
('Gone with the Wind',956,  'Margaret Mitchell',5, 15,    277,15,228),
('Jane Eyre',107,  'Charlotte Brontë',2, 16,    469,16,417),
('The Book Thief',202,  'Markus Zusak',1, 17,    682,17,601),
('The Adventures of Huckleberry Finn',305,  'Mark Twain',4, 18,     785,18,442),
('The Little Prince',418,  'Antoine de Saint-Exupéry',6, 19,    934,19,295),
('One Hundred Years of Solitude',528,  'Gabriel García Márquez',3, 20,    109,20,907),
('The Chronicles of Narnia',634,  'C.S. Lewis',6, 21,    256,21,436),
('Anna Karenina',718,  'Leo Tolstoy',8, 22,     376,22,550),
('The Picture of Dorian Gray',822,  'Oscar Wilde',1, 23,     539,23,832),
('Wuthering Heights',925,  'Emily Brontë',8, 24,    672,24,419),
('The Dark',929,  'Robert',6, 25,     814,25,192);

create table report
(
read_id int ,
registration_no int primary key,
issue_date date not null,
return_date date not null,
);
INSERT INTO report (read_id, registration_no, issue_date, return_date)
VALUES
  (452, 1, '2015-12-04', '2015-12-12'),
  (1025, 2, '2022-01-01', '2022-08-29'),
  (8952, 3, '2023-04-24', '2023-05-01'),
  (1251, 4, '2023-01-01', '2023-01-12'),
  (731, 5, '2020-06-15', '2020-07-03'),
  (612, 6, '2019-09-18', '2019-10-05'),
  (953, 7, '2021-11-28', '2021-12-06'),
  (849, 8, '2018-03-12', '2018-03-28'),
  (267, 9, '2022-07-09', '2022-07-25'),
  (543, 10, '2020-02-02', '2020-02-14'),
  (356, 11, '2023-05-10', '2023-05-23'),
  (982, 12, '2017-08-20', '2017-09-03'),
  (214, 13, '2022-09-05', '2022-09-15'),
  (687, 14, '2021-02-14', '2021-03-01'),
  (329, 15, '2019-11-01', '2019-11-15'),
  (574, 16, '2020-12-07', '2020-12-20'),
  (881, 17, '2018-06-02', '2018-06-15'),
  (436, 18, '2023-03-16', '2023-03-29'),
  (783, 19, '2017-04-11', '2017-04-24'),
  (951, 20, '2022-10-09', '2022-10-19'),
  (216, 21, '2021-03-18', '2021-04-02'),
  (692, 22, '2019-12-25', '2020-01-08'),
  (335, 23, '2020-08-04', '2020-08-16'),
  (558, 24, '2018-12-15', '2018-12-29'),
  (914, 25, '2023-02-28', '2023-03-14');

create table permission
(
p_id int primary key,
p_module varchar(255),
p_name varchar(255),
);
INSERT INTO permission (p_id, p_module, p_name)
VALUES
  (1001, 'Availability', 'Reading available books in science'),
  (1002, 'Search', 'Searching of books in an appropriate way'),
  (1003, 'Report', 'Making reports in conference rooms'),
  (1004, 'Availability', 'Reading available books in history'),
  (1005, 'Search', 'Searching of books in an efficient manner'),
  (1006, 'Report', 'Generating reports for research papers'),
  (1007, 'Availability', 'Accessing available journals in biology'),
  (1008, 'Search', 'Searching of books based on authors'),
  (1009, 'Report', 'Creating reports for library statistics'),
  (1010, 'Availability', 'Browsing available magazines in literature'),
  (1011, 'Search', 'Searching of books using keywords'),
  (1012, 'Report', 'Compiling reports for library inventory'),
  (1013, 'Availability', 'Accessing available books in computer science'),
  (1014, 'Search', 'Searching of books by publication year'),
  (1015, 'Report', 'Preparing reports for library budget'),
  (1016, 'Availability', 'Reading available newspapers in Urdu'),
  (1017, 'Search', 'Searching of books based on ISBN'),
  (1018, 'Report', 'Generating reports for library usage analysis'),
  (1019, 'Availability', 'Browsing available novels in English'),
  (1020, 'Search', 'Searching of books by subject category'),
  (1021, 'Report', 'Creating reports for library events'),
  (1022, 'Availability', 'Accessing available textbooks in mathematics'),
  (1023, 'Search', 'Searching of books by title'),
  (1024, 'Report', 'Compiling reports for library membership'),
  (1025, 'Availability', 'Reading available magazines in fashion');

 
create table keeps_track_of
(
red_id int not null,
st_id int not null,
);
INSERT INTO keeps_track_of (red_id, st_id)
VALUES
  (112, 452),
  (875, 651),
  (102, 426),
  (52, 753),
  (225, 998),
  (743, 265),
  (365, 781),
  (916, 379),
  (532, 124),
  (654, 992),
  (256, 478),
  (784, 351),
  (487, 512),
  (105, 826),
  (329, 677),
  (578, 230),
  (892, 914),
  (416, 583),
  (201, 795),
  (637, 401),
  (348, 581),
  (709, 230),
  (153, 941),
  (894, 416),
  (425, 732);


truncate table keeps_track_of
truncate table permission  
drop table member_info
select*from author
truncate table publisher
select*from publisher
truncate table staff
select*from reader
truncate table reader
delete reader
drop table reader
select * from member
truncate table member_info
drop table book
delete library1
drop table library1
select*from Library1

SELECT r.reader_name, l.login_id, l.login_readername, lib.lib_name
FROM reader AS r
JOIN login AS l ON r.reader_name = l.login_readername
JOIN Library1 AS lib ON r.lib_address = lib.lib_address;


SELECT r.reader_name, l.login_id, l.login_readername, lib.lib_name
FROM reader AS r
JOIN login AS l ON r.reader_name = l.login_readername
JOIN (
  SELECT lib_name, lib_address
  FROM Library1
  WHERE lib_address = 'Faisalabad'
) AS lib ON r.lib_address = lib.lib_address;


