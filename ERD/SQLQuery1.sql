create table position
(
positionID varchar(50) primary key,
positionName varchar(20),
status varchar(10)
)

create table Staff
(
staffID varchar(50) primary key,
name varchar(20),
birthday date,
sex bit,
CMND varchar(50),
tell varchar(20),
email varchar(30),
address varchar(50),
PostionID varchar(50) foreign key references position(positionID)
)

create table payment
(
id int primary key,
Content text,
money varchar(50),
Date datetime,
staffID varchar(50) foreign key references Staff(staffID),
receiver varchar(20),
address varchar(50),
note text
)

create table account
(
AccountID varchar(50) primary key,
name varchar(20),
password varchar(50),
staffID varchar(50) foreign key references Staff(staffID)
)

create table Receipts
(
ReceiptsID varchar(50) primary key,
content text,
Money varchar(50),
date Date,
receive varchar(50),
staffID varchar(50) foreign key references Staff(staffID)
)

create table Students
(
studentID varchar(50) primary key,
Name varchar(20),
birthday date,
sex bit,
CMND varchar(20),
tell varchar(20),
email varchar(20),
address varchar(50),
LearningStatus varchar(20),
Course1 varchar(20),
Course2 varchar(20),
)

create table Cousres
(
CourseID varchar(50) primary key,
name varchar(20),
tuition varchar(50),
numOfLessons varchar(50),
couseContent text,
)

create table lecturers
(
lecturerID varchar(50) primary key,
name varchar(20),
birthday date,
sex bit,
CMND varchar(50),
tell varchar(20),
email varchar(50),
address varchar(50),
Workstatus varchar(50),
)

create table Classroom
(
ClassID varchar(50) primary key,
ClassName varchar(20),
ClassSchedule varchar(50),
Status varchar(50),
StrartDate date,
EndDate date,
CourseID varchar(50) foreign key references Cousres(CourseID),
LecturerID varchar(50) foreign key references lecturers(lecturerID)
)

create table Classdetails
(
id varchar(20) primary key,
studentID varchar(50) foreign key references Students(studentID),
ClassID varchar(50) foreign key references Classroom(ClassID),
Tuition varchar(50),
Received varchar(20),
Proceeds varchar(50),
examscores varchar(20),
Rating varchar(255)
)