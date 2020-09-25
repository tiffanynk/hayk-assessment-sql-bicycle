-- Create a table, `owners`
CREATE TABLE owners (
    id INTEGER PRIMARY KEY,
    name TEXT,
    age INTEGER
);

-- Create a related table, `bicycles`
CREATE TABLE bicycles (
    id INTEGER PRIMARY KEY,
    kind TEXT,
    owner_id INTEGER
);

-- Create 3 bicycles and 2 owners
INSERT INTO owners (name, age) VALUES ("Tiffany", 30);
INSERT INTO owners (name, age) VALUES ("Kristi", 25);
INSERT INTO bicycles (kind, owner_id) VALUES ("Specialized", 1);
INSERT INTO bicycles (kind, owner_id) VALUES ("Bianchi", 1);
INSERT INTO bicycles (kind, owner_id) VALUES ("Trek", 2);

-- Update the properties of one of the bicycles
UPDATE bicycles SET kind = "Pinarello" WHERE kind = "Trek";

-- List all the bicycles
SELECT * FROM bicycles;

-- List all the bicycles with their owners
SELECT bicycles.kind, bicycles.owner_id FROM bicycles 
    INNER JOIN owners ON bicycles.owner_id = owners.id;

-- Delete one of the bicycles
DELETE FROM bicycles WHERE kind = "Pinarello";

