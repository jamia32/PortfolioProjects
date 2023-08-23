--Create Database Volunteers;

/*Volunteers*/

CREATE TABLE Volunteers (
VolunteerID int PRIMARY KEY,
Name varchar(50),
Email varchar(100),
Phone varchar(10),
Address text,
SkillsInterest text,
Availability varchar(100)
);

/*Projects*/

CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(100),
    Description TEXT,
    StartDate DATE,
    EndDate DATE
);

/*VolunteerAssignments*/

CREATE TABLE VolunteerAssignments (
    VolunteerID INT,
    ProjectID INT,
    AssignmentDate DATE,
    HoursWorked DECIMAL(5, 2),
    PRIMARY KEY (VolunteerID),
    FOREIGN KEY (VolunteerID) REFERENCES Volunteers(VolunteerID),
    FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID)
	);

/*ProjectDescription*/

CREATE TABLE ProjectDescription (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(100),
    Description TEXT,
    Date DATE,
    Location VARCHAR(200),
    Lead VARCHAR(100)
);

INSERT INTO Volunteers (VolunteerID, Name, Email, Phone, Address, SkillsInterest, Availability) VALUES ('1', 'Robert Jones', 'RobbyJ77@gmail.com', '7704320079', '17 Whale Aveune 30030', 'Photography', 'Weekends'), ('2', 'Samanatha Bridges', 'Sssammy456@yahoo.com', '404098345', '4567 Peachtree St 30030', 'Construction', 'Open'), ('3', 'Landon Tipton', 'Tiptonfallingdwn2@gmail.com', '3782224958', '12 Washingtion Street 30030', 'Tutoring,Writing', 'Evenings');
INSERT INTO Projects (ProjectID, ProjectName, Description, StartDate, EndDate) VALUES ('001', 'FlowerGarden', 'Building a garden for childrens hospital', '03-02-2023', '5-15-2023'), ('002', 'WarZone', 'Fixing up a war veterans home', '10-30-2022', '10-14-2023'), ('003', 'BillNye', 'Tutor children', '08-12-2023', '05-28-2024'), ('004', 'MoneyTrain', 'Fundraising relay race for childrens hospital', '02-22-2024', '02-22-2024');
INSERT INTO VolunteerAssignments (VolunteerID, ProjectID, AssignmentDate, HoursWorked) VALUES ('1', '004', '02-22-2024', '4.5'), ('2', '002', '03-02-2023', '6'), ('3', '003', '11-01-2023', '3.5');
INSERT INTO ProjectDescription (ProjectID, ProjectName, Description, Date, Location, Lead) VALUES ('001', 'FlowerGarden', 'Building a garden for childrens hospital', '03-02-2023', 'Childrens Hospital', 'Gabriel Gardner'), ('002', 'WarZone', 'Fixing up a war veterans home', '10-30-2022', '1107 Ponce de Leon 30030', 'Sommer Muckle'), ('003', 'BillNye', 'Tutor children', '08-12-2023', 'Columbia Middle School', 'Destiny Markson'), ('004', 'MoneyTrain', 'Fundraising relay race for childrens hospital', '02-22-2024', 'Olympics Park', 'Shelly Price')
