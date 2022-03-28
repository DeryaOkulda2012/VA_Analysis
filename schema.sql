-- Creating tables for VA_Analysis Database
CREATE TABLE Hospitals (
     Hospital_Name VARCHAR(100) NOT NULL,
     Hospital_County VARCHAR(40) NOT NULL,
     PRIMARY KEY (Hospital_Name),
     UNIQUE (Hospital_County)
);

CREATE TABLE Expenditures (
     Expenditures INT NOT NULL,
     Hospital_County VARCHAR(40) NOT NULL,
	 New_Patients INT NOT NULL,
     PRIMARY KEY (Hospital_County),
     UNIQUE (New_Patients)
);

select * from expenditures;