-- Create the Donor table
CREATE TABLE Donor (
    DonorID NUMBER PRIMARY KEY,
    Name VARCHAR2(50),
    ContactInfo VARCHAR2(100),
    DOB DATE,
    BloodType VARCHAR2(5),
    MedicalHistory VARCHAR2(255)
);

-- Create the Blood Inventory table
CREATE TABLE BloodInventory (
    BloodUnitID NUMBER PRIMARY KEY,
    BloodType VARCHAR2(5),
    Quantity NUMBER,
    ExpirationDate DATE,
    StorageLocation VARCHAR2(100),
    QualityInfo VARCHAR2(255)
);

-- Create the Blood Request table
CREATE TABLE BloodRequest (
    RequestID NUMBER PRIMARY KEY,
    RecipientID NUMBER, -- Foreign key to Recipient table
    BloodType VARCHAR2(5),
    QuantityNeeded NUMBER,
    RequestDate DATE,
    RequestStatus VARCHAR2(20)
);

-- Create the Blood Transfusion table
CREATE TABLE BloodTransfusion (
    TransfusionID NUMBER PRIMARY KEY,
    RecipientID NUMBER, -- Foreign key to Recipient table
    DonorID NUMBER,     -- Foreign key to Donor table
    BloodType VARCHAR2(5),
    QuantityTransfused NUMBER,
    TransfusionDate DATE
);

-- Create the User Accounts table
CREATE TABLE UserAccounts (
    UserID NUMBER PRIMARY KEY,
    Username VARCHAR2(50),
    Password VARCHAR2(255), -- Securely hashed and salted
    UserType VARCHAR2(20),
    Permissions VARCHAR2(100)
);

-- Insert  donor data
-- Donor 1
INSERT INTO Donor (DonorID, Name, ContactInfo, DOB, BloodType, MedicalHistory)
VALUES (2, 'Jane Smith', 'janesmith@example.com', TO_DATE('1992-09-20', 'YYYY-MM-DD'), 'B-', 'No known issues');

-- Donor 2
INSERT INTO Donor (DonorID, Name, ContactInfo, DOB, BloodType, MedicalHistory)
VALUES (3, 'Michael Johnson', 'michaelj@example.com', TO_DATE('1985-04-12', 'YYYY-MM-DD'), 'O+', 'Regular blood donor');

-- Donor 3
INSERT INTO Donor (DonorID, Name, ContactInfo, DOB, BloodType, MedicalHistory)
VALUES (4, 'Sara Davis', 'saradavis@example.com', TO_DATE('1990-08-05', 'YYYY-MM-DD'), 'A-', 'Allergic to penicillin');

-- Donor 4
INSERT INTO Donor (DonorID, Name, ContactInfo, DOB, BloodType, MedicalHistory)
VALUES (5, 'Robert Wilson', 'robertwilson@example.com', TO_DATE('1993-02-28', 'YYYY-MM-DD'), 'AB+', 'No known issues');

-- Donor 5
INSERT INTO Donor (DonorID, Name, ContactInfo, DOB, BloodType, MedicalHistory)
VALUES (6, 'Emily Clark', 'emilyc@example.com', TO_DATE('1988-11-15', 'YYYY-MM-DD'), 'B+', 'Previous blood transfusion');

-- Donor 6
INSERT INTO Donor (DonorID, Name, ContactInfo, DOB, BloodType, MedicalHistory)
VALUES (7, 'David Lee', 'davidlee@example.com', TO_DATE('1979-07-03', 'YYYY-MM-DD'), 'O-', 'Diabetic, controlled');

-- Donor 7
INSERT INTO Donor (DonorID, Name, ContactInfo, DOB, BloodType, MedicalHistory)
VALUES (8, 'Olivia Brown', 'oliviab@example.com', TO_DATE('1995-03-22', 'YYYY-MM-DD'), 'A+', 'No known issues');

-- Donor 8
INSERT INTO Donor (DonorID, Name, ContactInfo, DOB, BloodType, MedicalHistory)
VALUES (9, 'William White', 'williamwhite@example.com', TO_DATE('1982-06-10', 'YYYY-MM-DD'), 'B-', 'High blood pressure');

-- Donor 9
INSERT INTO Donor (DonorID, Name, ContactInfo, DOB, BloodType, MedicalHistory)
VALUES (10, 'Sophia Hall', 'sophiah@example.com', TO_DATE('1989-12-01', 'YYYY-MM-DD'), 'AB-', 'Asthma, mild');

-- Donor 10
INSERT INTO Donor (DonorID, Name, ContactInfo, DOB, BloodType, MedicalHistory)
VALUES (11, 'James Adams', 'jamesadams@example.com', TO_DATE('1975-01-19', 'YYYY-MM-DD'), 'O+', 'Regular blood donor');



-- Insert  blood inventory data
-- Blood Unit 1
INSERT INTO BloodInventory (BloodUnitID, BloodType, Quantity, ExpirationDate, StorageLocation, QualityInfo)
VALUES (21, 'A+', 15, TO_DATE('2024-04-30', 'YYYY-MM-DD'), 'Refrigerator 2', 'Good condition');

-- Blood Unit 2
INSERT INTO BloodInventory (BloodUnitID, BloodType, Quantity, ExpirationDate, StorageLocation, QualityInfo)
VALUES (22, 'B-', 10, TO_DATE('2024-03-15', 'YYYY-MM-DD'), 'Freezer 1', 'Recent donation');

-- Blood Unit 3
INSERT INTO BloodInventory (BloodUnitID, BloodType, Quantity, ExpirationDate, StorageLocation, QualityInfo)
VALUES (23, 'O+', 20, TO_DATE('2023-11-11', 'YYYY-MM-DD'), 'Refrigerator 3', 'Good condition');

-- Blood Unit 4
INSERT INTO BloodInventory (BloodUnitID, BloodType, Quantity, ExpirationDate, StorageLocation, QualityInfo)
VALUES (24, 'AB+', 8, TO_DATE('2024-03-10', 'YYYY-MM-DD'), 'Freezer 2', 'No known issues');

-- Blood Unit 5
INSERT INTO BloodInventory (BloodUnitID, BloodType, Quantity, ExpirationDate, StorageLocation, QualityInfo)
VALUES (25, 'A-', 12, TO_DATE('2023-11-11', 'YYYY-MM-DD'), 'Refrigerator 1', 'Recent donation');

-- Blood Unit 6
INSERT INTO BloodInventory (BloodUnitID, BloodType, Quantity, ExpirationDate, StorageLocation, QualityInfo)
VALUES (26, 'B+', 18, TO_DATE('2024-04-25', 'YYYY-MM-DD'), 'Freezer 3', 'No known issues');

-- Blood Unit 7
INSERT INTO BloodInventory (BloodUnitID, BloodType, Quantity, ExpirationDate, StorageLocation, QualityInfo)
VALUES (27, 'O-', 25, TO_DATE('2024-05-10', 'YYYY-MM-DD'), 'Refrigerator 2', 'Good condition');

-- Blood Unit 8
INSERT INTO BloodInventory (BloodUnitID, BloodType, Quantity, ExpirationDate, StorageLocation, QualityInfo)
VALUES (28, 'AB-', 6, TO_DATE('2024-04-15', 'YYYY-MM-DD'), 'Freezer 1', 'Previous transfusion');

-- Blood Unit 9
INSERT INTO BloodInventory (BloodUnitID, BloodType, Quantity, ExpirationDate, StorageLocation, QualityInfo)
VALUES (29, 'A+', 14, TO_DATE('2024-05-02', 'YYYY-MM-DD'), 'Refrigerator 3', 'No known issues');

-- Blood Unit 10
INSERT INTO BloodInventory (BloodUnitID, BloodType, Quantity, ExpirationDate, StorageLocation, QualityInfo)
VALUES (30, 'O+', 22, TO_DATE('2024-05-12', 'YYYY-MM-DD'), 'Refrigerator 1', 'Recent donation');


-- Insert  blood request data
-- Request 1
INSERT INTO BloodRequest (RequestID, RecipientID, BloodType, QuantityNeeded, RequestDate, RequestStatus)
VALUES (31, 101, 'B+', 3, TO_DATE('2023-11-05', 'YYYY-MM-DD'), 'Pending');

-- Request 2
INSERT INTO BloodRequest (RequestID, RecipientID, BloodType, QuantityNeeded, RequestDate, RequestStatus)
VALUES (32, 102, 'O-', 2, TO_DATE('2023-10-18', 'YYYY-MM-DD'), 'Fulfilled');

-- Request 3
INSERT INTO BloodRequest (RequestID, RecipientID, BloodType, QuantityNeeded, RequestDate, RequestStatus)
VALUES (33, 103, 'A+', 5, TO_DATE('2023-11-02', 'YYYY-MM-DD'), 'Pending');

-- Request 4
INSERT INTO BloodRequest (RequestID, RecipientID, BloodType, QuantityNeeded, RequestDate, RequestStatus)
VALUES (34, 104, 'AB-', 1, TO_DATE('2023-10-20', 'YYYY-MM-DD'), 'Fulfilled');

-- Request 5
INSERT INTO BloodRequest (RequestID, RecipientID, BloodType, QuantityNeeded, RequestDate, RequestStatus)
VALUES (35, 105, 'O+', 4, TO_DATE('2023-10-25', 'YYYY-MM-DD'), 'Fulfilled');

-- Request 6
INSERT INTO BloodRequest (RequestID, RecipientID, BloodType, QuantityNeeded, RequestDate, RequestStatus)
VALUES (36, 106, 'B-', 2, TO_DATE('2023-10-22', 'YYYY-MM-DD'), 'Pending');

-- Request 7
INSERT INTO BloodRequest (RequestID, RecipientID, BloodType, QuantityNeeded, RequestDate, RequestStatus)
VALUES (37, 107, 'A-', 3, TO_DATE('2023-10-29', 'YYYY-MM-DD'), 'Fulfilled');

-- Request 8
INSERT INTO BloodRequest (RequestID, RecipientID, BloodType, QuantityNeeded, RequestDate, RequestStatus)
VALUES (38, 108, 'AB+', 2, TO_DATE('2023-11-01', 'YYYY-MM-DD'), 'Pending');

-- Request 9
INSERT INTO BloodRequest (RequestID, RecipientID, BloodType, QuantityNeeded, RequestDate, RequestStatus)
VALUES (39, 109, 'O-', 4, TO_DATE('2023-10-23', 'YYYY-MM-DD'), 'Fulfilled');

-- Request 10
INSERT INTO BloodRequest (RequestID, RecipientID, BloodType, QuantityNeeded, RequestDate, RequestStatus)
VALUES (40, 110, 'A+', 6, TO_DATE('2023-11-03', 'YYYY-MM-DD'), 'Pending');













-- Insert  blood transfusion data
-- Transfusion 1
INSERT INTO BloodTransfusion (TransfusionID, RecipientID, DonorID, BloodType, QuantityTransfused, TransfusionDate)
VALUES (41, 101, 1, 'B+', 2, TO_DATE('2023-10-15', 'YYYY-MM-DD'));

-- Transfusion 2
INSERT INTO BloodTransfusion (TransfusionID, RecipientID, DonorID, BloodType, QuantityTransfused, TransfusionDate)
VALUES (42, 102, 3, 'O-', 1, TO_DATE('2023-10-18', 'YYYY-MM-DD'));

-- Transfusion 3
INSERT INTO BloodTransfusion (TransfusionID, RecipientID, DonorID, BloodType, QuantityTransfused, TransfusionDate)
VALUES (43, 103, 2, 'A+', 3, TO_DATE('2023-10-20', 'YYYY-MM-DD'));

-- Transfusion 4
INSERT INTO BloodTransfusion (TransfusionID, RecipientID, DonorID, BloodType, QuantityTransfused, TransfusionDate)
VALUES (44, 104, 5, 'AB-', 1, TO_DATE('2023-10-22', 'YYYY-MM-DD'));

-- Transfusion 5
INSERT INTO BloodTransfusion (TransfusionID, RecipientID, DonorID, BloodType, QuantityTransfused, TransfusionDate)
VALUES (45, 105, 4, 'O+', 2, TO_DATE('2023-10-25', 'YYYY-MM-DD'));

-- Transfusion 6
INSERT INTO BloodTransfusion (TransfusionID, RecipientID, DonorID, BloodType, QuantityTransfused, TransfusionDate)
VALUES (46, 106, 7, 'B-', 1, TO_DATE('2023-10-28', 'YYYY-MM-DD'));

-- Transfusion 7
INSERT INTO BloodTransfusion (TransfusionID, RecipientID, DonorID, BloodType, QuantityTransfused, TransfusionDate)
VALUES (47, 107, 9, 'A-', 2, TO_DATE('2023-10-30', 'YYYY-MM-DD'));

-- Transfusion 8
INSERT INTO BloodTransfusion (TransfusionID, RecipientID, DonorID, BloodType, QuantityTransfused, TransfusionDate)
VALUES (48, 108, 6, 'AB+', 1, TO_DATE('2023-11-01', 'YYYY-MM-DD'));

-- Transfusion 9
INSERT INTO BloodTransfusion (TransfusionID, RecipientID, DonorID, BloodType, QuantityTransfused, TransfusionDate)
VALUES (49, 109, 8, 'O-', 3, TO_DATE('2023-11-03', 'YYYY-MM-DD'));

-- Transfusion 10
INSERT INTO BloodTransfusion (TransfusionID, RecipientID, DonorID, BloodType, QuantityTransfused, TransfusionDate)
VALUES (50, 110, 10, 'A+', 4, TO_DATE('2023-11-05', 'YYYY-MM-DD'));



-- Insert  user account data
-- User Account 1
INSERT INTO UserAccounts (UserID, Username, Password, UserType, Permissions)
VALUES (51, 'adminuser', 'hashedpassword1', 'Admin', 'All Access');

-- User Account 2
INSERT INTO UserAccounts (UserID, Username, Password, UserType, Permissions)
VALUES (52, 'staffuser1', 'hashedpassword2', 'Staff', 'View Access');

-- User Account 3
INSERT INTO UserAccounts (UserID, Username, Password, UserType, Permissions)
VALUES (53, 'staffuser2', 'hashedpassword3', 'Staff', 'View Access');

-- User Account 4
INSERT INTO UserAccounts (UserID, Username, Password, UserType, Permissions)
VALUES (54, 'recipient1', 'hashedpassword4', 'Recipient', 'View Access');

-- User Account 5
INSERT INTO UserAccounts (UserID, Username, Password, UserType, Permissions)
VALUES (55, 'recipient2', 'hashedpassword5', 'Recipient', 'View Access');

-- User Account 6
INSERT INTO UserAccounts (UserID, Username, Password, UserType, Permissions)
VALUES (56, 'admin2', 'hashedpassword6', 'Admin', 'All Access');

-- User Account 7
INSERT INTO UserAccounts (UserID, Username, Password, UserType, Permissions)
VALUES (57, 'staff3', 'hashedpassword7', 'Staff', 'View Access');

-- User Account 8
INSERT INTO UserAccounts (UserID, Username, Password, UserType, Permissions)
VALUES (58, 'admin3', 'hashedpassword8', 'Admin', 'All Access');

-- User Account 9
INSERT INTO UserAccounts (UserID, Username, Password, UserType, Permissions)
VALUES (59, 'staff4', 'hashedpassword9', 'Staff', 'View Access');

-- User Account 10
INSERT INTO UserAccounts (UserID, Username, Password, UserType, Permissions)
VALUES (60, 'recipient3', 'hashedpassword10', 'Recipient', 'View Access');





--List Donors with the Most Donations:

SELECT D.Name, COUNT(DT.DonorID) AS DonationCount
FROM Donor D
LEFT JOIN BloodTransfusion DT ON D.DonorID = DT.DonorID
GROUP BY D.Name
ORDER BY DonationCount DESC
FETCH FIRST 5 ROWS ONLY

UPDATE BloodInventory
SET ExpirationDate = TO_DATE('2023-09-11', 'YYYY-MM-DD')
WHERE BloodUnitID >= 27;
--Find Blood Units Close to Expiration:

SELECT BloodUnitID, BloodType, ExpirationDate
FROM BloodInventory
WHERE ExpirationDate <= SYSDATE + 30 
ORDER BY ExpirationDate;



--Retrieve Recipients with Pending Requests:
SELECT R.Name, BR.RequestStatus
FROM BloodRequest as R
JOIN BloodRequest BR ON R.RecipientID = BR.RecipientID
WHERE BR.RequestStatus = 'Pending';



--Calculate Average Quantity Transfused Per Blood Type:
SELECT BloodType, AVG(QuantityTransfused) AS AvgQuantityTransfused
FROM BloodTransfusion
GROUP BY BloodType;

--Find Donors Who Havenated More Than Once Last Month:

SELECT D.Name, COUNT(DT.DonorID) AS DonationCount
FROM Donor D
JOIN BloodTransfusion DT ON D.DonorID = DT.DonorID
WHERE DT.TransfusionDate >= ADD_MONTHS(SYSDATE, -1)
GROUP BY D.Name
HAVING COUNT(DT.DonorID) > 1;


--Identify the Busiest Donation Center

SELECT DC.Name, COUNT(D.DonorID) AS DonorCount
FROM DonationCenter DC
JOIN Donor D ON DC.CenterID = D.CenterID
GROUP BY DC.Name
ORDER BY DonorCount DESC
FETCH FIRST 1 ROWS ONLY;
--  THE TABLE DonationCenter NOT CREATED

--Retrieve the Ten Most Recent Blood Transfusions:

SELECT TransfusionID, RecipientID, DonorID, BloodType, QuantityTransfused, TransfusionDate
FROM BloodTransfusion
ORDER BY TransfusionDate DESC
FETCH FIRST 10 ROWS ONLY;

--Find the Blood Type Most in Demand:
SELECT BloodType, COUNT(*) AS RequestCount
FROM BloodRequest
GROUP BY BloodType
ORDER BY RequestCount DESC
FETCH FIRST 1 ROWS ONLY;


--Calculate the Recipient Satisfaction Rate:


SELECT (COUNT(CASE WHEN BR.RequestStatus = 'Fulfilled' THEN 1 END) / COUNT(*)) * 100 
AS SatisfactionRate
FROM BloodRequest BR;



