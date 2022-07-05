# Create database
CREATE DATABASE IF NOT EXISTS test_results;
# Use database
USE test_results;

# Create personal table
CREATE TABLE personal_information (
    personal_id INT NOT NULL,
    test_date DATE NOT NULL,
    age_60_and_above VARCHAR(8),
    gender VARCHAR(8),
    corona_result  VARCHAR(55),
    PRIMARY KEY (personal_id)
);
   
CREATE TABLE symptoms (
symptoms_id INT NOT NULL,
personal_id INT NOT NULL,
cough BINARY,
fever BINARY,
shortness_of_breath BINARY,
sore_throat BINARY,
head_ache BINARY,
test_indication VARCHAR(55),
PRIMARY KEY (symptoms_id),
FOREIGN KEY (personal_id)
REFERENCES personal_information (personal_id)
);