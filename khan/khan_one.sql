-- /**
-- Grocery list:
-- Bananas(4)
-- Peanut Butter(1)
-- Dark Chocolate Bars(2)
-- **/

-- CREATE TABLE store(id INTEGER PRIMARY KEY, name TEXT, price INTEGER, aisle INTEGER);

-- INSERT INTO store VALUES(1, "Banana", 4, 1);
-- INSERT INTO store VALUES(2, "Apple", 4, 1);
-- INSERT INTO store VALUES(3, "Mango", 4, 1);
-- INSERT INTO store VALUES(4, "Strawberry", 4, 1);
-- INSERT INTO store VALUES(5, "Lettuce", 4, 1);
-- INSERT INTO store VALUES(6, "Tomato", 4, 1);
-- INSERT INTO store VALUES(7, "Onion", 4, 1);
-- INSERT INTO store VALUES(8, "Shallot", 4, 1);
-- INSERT INTO store VALUES(9, "Avacado", 4, 1);
-- INSERT INTO store VALUES(10, "Pears", 4, 1);
-- INSERT INTO store VALUES(11, "Spinich", 4, 1);
-- INSERT INTO store VALUES(12, "Dates", 4, 1);
-- INSERT INTO store VALUES(13, "Coconuts", 4, 1);
-- INSERT INTO store VALUES(14, "Grapples", 4, 1);
-- INSERT INTO store VALUES(15, "Grapes", 4, 1);

-- SELECT * FROM store ORDER BY(price);

-- CREATE TABLE groceries(id INTEGER PRIMARY KEY, name TEXT, quantity INTEGER, aisle INTEGER);

-- INSERT INTO groceries VALUES(1, "Bananas", 4);
-- INSERT INTO groceries VALUES(2, "Peanut Butter", 1);
-- INSERT INTO groceries VALUES(3, "Dark chocolate bars", 2)
-- ;

-- SELECT * FROM groceries;
-- SELECT * FROM groceries;
-- SELECT * FROM groceries ORDER BY aisle;
-- SELECT * FROM groceries WHERE aisle > 5 ORDER BY aisle;

-- --Aggregating Data
-- SELECT aisle, SUM(quantity) FROM groceries GROUP BY aisle;
-- SELECT MAX(quantity) FROM groceries;

-- INSERT INTO todo_list VALUES(4, "Other things", 30);
-- SELECT SUM(minutes) FROM todo_list;



-- Books
-- CREATE TABLE books(id INTEGER PRIMARY KEY, name TEXT, rating INTEGER);
-- INSERT INTO books VALUES(1, "The God Father", 5);
-- INSERT INTO books VALUES(2, "Harry Potter", 5);
-- INSERT INTO books VALUES(3, "East of Eden", 5);

-- --movies
-- SELECT * FROM movies;
-- SELECT * FROM movies WHERE release_year >= 2000 ORDER BY release_year;

-- New queries
CREATE TABLE exercise_logs(id INTEGER PRIMARY KEY AUTOINCREMENT, type TEXT,
minutes INTEGER, calories INTEGER, heart_rate INTEGER);

INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES("biking", 30, 100, 110);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES("dancing", 15, 200, 120);


SELECT * FROM exercise_logs WHERE calories > 50 ORDER BY calories;
-- AND
SELECT * FROM exercise_logs WHERE calories > 50 and minutes < 30 ORDER BY calories;
-- or
SELECT * FROM exercise_logs WHERE calories > 50 or heart_rate > 100 ORDER BY
calories;