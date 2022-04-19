/* Create the tables in the database */

-- Create carpools table
DROP TABLE IF EXISTS carpools;

CREATE TABLE carpools (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    departure VARCHAR(255),
    destination VARCHAR(255),
    date_time DATETIME,
    groupme_link VARCHAR(255) DEFAULT NULL
);

-- Create passengers table
DROP TABLE IF EXISTS passengers;

CREATE TABLE passengers (
    passenger_id INTEGER PRIMARY KEY AUTO_INCREMENT, 
    carpool_id INTEGER, 
    name VARCHAR(255), 
    email VARCHAR(255), 
    code VARCHAR(255), 
    created_at DATETIME, 
    CONSTRAINT carpool_fk 
        FOREIGN KEY (carpool_id) 
        REFERENCES carpool (id) 
        ON UPDATE CASCADE 
        ON DELETE CASCADE
);