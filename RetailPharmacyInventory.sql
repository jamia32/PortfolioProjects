/*

Creating Tables in SQL for 'Pharmacy' Database

*/

--
-- Table structure for table `Category`
--

CREATE TABLE Category (
CategoryID int,
CategoryName varchar(255)
PRIMARY KEY (CategoryID)
);

--
-- Dumping data for table `Category`
--

INSERT INTO Category (categoryID, categoryName) VALUES
(1, 'Acne Treatment'),
(2, 'Thyroid Medications'),
(3, 'Anti Depressants'),
(4, 'Antiepileptic'),
(5, 'Anti Viral'),
(6, 'Antibiotics'),
(7, 'Weight Loss'),
(8, 'Asthma Medications'),
(9, 'Blood Pressure'),
(10, 'Nausea'),
(11, 'Cholesterol'),
(12, 'Anxiety'),
(13, 'Diabetes'),
(14, 'Pain'),
(15, 'Migraines');

--
-- Table structure for table `Inventory`
--

CREATE TABLE Inventory (
ProductID int,
ProductName varchar(255),
Exp_Date date,
ProductQuantity int,
CategoryID int,
PRIMARY KEY (ProductID)
);

--
-- Dumping data for table `Inventory`
--

INSERT INTO Inventory (ProductID, ProductName, Exp_date, ProductQuantity, CategoryID) VALUES
(1, 'Azithromycin 500mg', '2025-06-02', 60, 6),
(2, 'Sumatriptan 50mg', '2024-09-08', 100, 15),
(3, 'Atorvastatin 40mg', '2023-07-01', 900, 11),
(4, 'Alprazolam 1mg', '2023-09-30', 320, 12),
(5, 'Losartan 100mg', '2025-03-20', 24, 9),
(6, 'Albuterol HFA 90mcg', '2024-11-15', 255, 8),
(7, 'Augmentin 875mg', '2025-01-13', 1200, 6),
(8, 'Ondansetron ODT 4mg', '2024-05-23', 300, 10),
(9, 'Gabapentin 300mg', '2024-04-19', 830, 4),
(10, 'Tramadol 50mg', '2024-12-11', 220, 14),
(11, 'Acyclovir 400mg', '2024-07-06', 80, 5),
(12, 'Phentermine 30mg', '2024-06-06', 57, 7),
(13, 'Topiramate 25mg', '2025-02-15', 2000, 15),
(14, 'Levothyroxine 75mcg', '2024-11-07', 17, 2),
(15, 'Fluoxetine 40mg', '2024-03-14', 400, 3),
(16, 'Ozempic 2mg', '2024-09-17', 2, 13);
