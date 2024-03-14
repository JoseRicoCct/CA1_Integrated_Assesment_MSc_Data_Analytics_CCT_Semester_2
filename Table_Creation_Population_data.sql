CREATE TABLE Population_Data (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    `Index` INT,
    User_Id VARCHAR(255),
    First_Name VARCHAR(255),
    Last_Name VARCHAR(255),
    Sex VARCHAR(10),
    Email VARCHAR(255),
    Phone VARCHAR(100),
    Date_of_birth DATE,
    Job_Title VARCHAR(255)
);

Select * from population_data

limit 100;

SHOW TABLE STATUS LIKE 'population_data';

SELECT table_name AS "Table",
round(((data_length + index_length) / 1024 / 1024), 2) AS "Size (MB)",
round(((data_length + index_length) / 1024), 2) AS "Size (KB)",
round(((data_length + index_length) / 1024 / 1024 / 1024), 2) AS "Size (GB)"
FROM information_schema.tables 
WHERE table_schema = 'population' 
AND table_name = 'population_data';

