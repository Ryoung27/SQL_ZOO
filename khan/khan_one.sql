-- CREATE TABLE songs (
--     id INTEGER PRIMARY KEY,
--     title TEXT,
--     artist TEXT,
--     mood TEXT,
--     duration INTEGER,
--     released INTEGER);

-- INSERT INTO songs (title, artist, mood, duration, released)
--     VALUES ("Bohemian Rhapsody", "Queen", "epic", 60, 1975);
-- INSERT INTO songs (title, artist, mood, duration, released)
--     VALUES ("Let it go", "Idina Menzel", "epic", 227, 2013);
-- INSERT INTO songs (title, artist, mood, duration, released)
--     VALUES ("I will survive", "Gloria Gaynor", "epic", 198, 1978);
-- INSERT INTO songs (title, artist, mood, duration, released)
--     VALUES ("Twist and Shout", "The Beatles", "happy", 152, 1963);
-- INSERT INTO songs (title, artist, mood, duration, released)
--     VALUES ("La Bamba", "Ritchie Valens", "happy", 166, 1958);
-- INSERT INTO songs (title, artist, mood, duration, released)
--     VALUES ("I will always love you", "Whitney Houston", "epic", 273, 1992);
-- INSERT INTO songs (title, artist, mood, duration, released)
--     VALUES ("Sweet Caroline", "Neil Diamond", "happy", 201, 1969);
-- INSERT INTO songs (title, artist, mood, duration, released)
--     VALUES ("Call me maybe", "Carly Rae Jepsen", "happy", 193, 2011);

-- SELECT title FROM songs;
-- SELECT title FROM songs WHERE mood = 'epic' OR released > 1990;
-- SELECT title FROM songs WHERE mood = 'epic' AND released > 1990 AND duration < 240;


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

--POP in
SELECT title FROM songs Where artist = 'Queen';
SELECT name FROM artists Where genre = 'Pop';
SELECT title FROM songs WHERE artist IN ("Taylor Swift", "Celine Dion", "Rihanna", "Gloria Estefan");

--Exercise Log
SELECT type, SUM(calories) AS total_calories
FROM exercise_logs
GROUP BY (type);

SELECT type, SUM(calories) AS total_calories
exercise_logs
    GROUP BY type
    HAVING total_calories > 150;

SELECT type, AVG(calores) AS avg_calories FROM exercise_logs
GROUP BY type
HAVING avg_calories > 70
;

SELECT type FROM exercise_logs
GROUP BY type
HAVING count(*) >= 2;

SELECT COUNT(*) FROM exercise_logs
WHERE heart_rate > 220 -30;

SELECT COUNT(*) FROM exercise_logs
WHERE heart_rate >= ROUND(0.5 * (220 -30))
AND heart_rate <= ROUND(0.9 * (220 -30));

--CASE STATEMENT
SELECT type, heart_rate FROM exercise_logs
CASE
WHEN heart_rate > 220 -30 THEN "above max"
WHEN heart_rate >= 90 THEN "above target"
WHEN heart_rate >= 50 THEN "above target"
ELSE "below target"
END as "hr_zone";

--Total words
CREATE TABLE books (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    author TEXT,
    title TEXT,
    words INTEGER);

INSERT INTO books (author, title, words)
    VALUES ("J.K. Rowling", "Harry Potter and the Philosopher's Stone", 79944);
INSERT INTO books (author, title, words)
    VALUES ("J.K. Rowling", "Harry Potter and the Chamber of Secrets", 85141);
INSERT INTO books (author, title, words)
    VALUES ("J.K. Rowling", "Harry Potter and the Prisoner of Azkaban", 107253);
INSERT INTO books (author, title, words)
    VALUES ("J.K. Rowling", "Harry Potter and the Goblet of Fire", 190637);
INSERT INTO books (author, title, words)
    VALUES ("J.K. Rowling", "Harry Potter and the Order of the Phoenix", 257045);
INSERT INTO books (author, title, words)
    VALUES ("J.K. Rowling", "Harry Potter and the Half-Blood Prince", 168923);
INSERT INTO books (author, title, words)
    VALUES ("J.K. Rowling", "Harry Potter and the Deathly Hallows", 197651);

INSERT INTO books (author, title, words)
    VALUES ("Stephenie Meyer", "Twilight", 118501);
INSERT INTO books (author, title, words)
    VALUES ("Stephenie Meyer", "New Moon", 132807);
INSERT INTO books (author, title, words)
    VALUES ("Stephenie Meyer", "Eclipse", 147930);
INSERT INTO books (author, title, words)
    VALUES ("Stephenie Meyer", "Breaking Dawn", 192196);

INSERT INTO books (author, title, words)
    VALUES ("J.R.R. Tolkien", "The Hobbit", 95022);
INSERT INTO books (author, title, words)
    VALUES ("J.R.R. Tolkien", "Fellowship of the Ring", 177227);
INSERT INTO books (author, title, words)
    VALUES ("J.R.R. Tolkien", "Two Towers", 143436);
INSERT INTO books (author, title, words)
    VALUES ("J.R.R. Tolkien", "Return of the King", 134462);

SELECT author, SUM(words) AS total_words from books
GROUP BY author
HAVING total_words > 1000000;

SELECT author, AVG(words) as avg_words FROM books
GROUP BY author
HAVING avg_words > 150000;


CREATE TABLE student_grades (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    number_grade INTEGER,
    fraction_completed REAL);

INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winston", 90, 0.805);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winnefer", 95, 0.901);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winsteen", 85, 0.906);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Wincifer", 66, 0.7054);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winster", 76, 0.5013);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winstonia", 82, 0.9045);

SELECT name, number_grade, ROUND(fraction_completed*100)
AS percent_completed FROM student_grades;

SELECT name, number_grade,
CASE
WHEN number_grade>90 THEN "A"
WHEN number_grade>80 THEN "B"
WHEN number_grade>70 THEN "C"
ELSE "F"
END as "letter_grade"
FROM student_grades;

SELECT number_grade, COUNT (*)
FROM student_grades
Group by number_grade;


--JOIN
SELECT * FROM student_grades;

--CROSS JOIN
SELECT * FROM student_grades, students;

-- implicit INNER JOIN
SELECT * FROM student_grades, students;
    WHERE student_grades.student_id = students.id;

-- explicit INNER JOIN
SELECT students.first_name, students.last_name, students.email, student_grades.test, student_grades.grade FROM students;
 JOIN student_grades
 ON students.id = student_grades.student_id
 WHERE grade > 90;

 SELECT persons.name, hobbies.name FROM persons JOIN hobbies ON persons.id = hobbies.person_id;

SELECT persons.name, hobbies.name FROM persons JOIN hobbies ON persons.id = hobbies.person_id;


SELECT persons.name, hobbies.name FROM persons JOIN hobbies ON persons.id = hobbies.person_id
WHERE persons.name = 'Bobby McBobbyFace';

SELECT students.first_name, students.last_name, student_projects.title
FROM students LEFT OUTER JOIN student_projects ON students.id = student_projects.student_id;

SELECT customers.name, customers.email, orders.item, orders.price FROM customers LEFT OUTER JOIN orders ON customers.id = orders.customer_id;

SELECT customers.name, customers.email, SUM(price) as orders FROM customers LEFT OUTER JOIN orders ON customers.id=orders.customer_id GROUP BY name ORDER BY price DESC;

SELECT id, first_name, last_name, buddy_id FROM students;

-- Self JOIN
SELECT first_name, last_name, buddies.email
FROM students JOIN students buddies
ON students.buddy_id = buddies.id;

SELECT movies. title, sequals.sequal_id
FROM movies LEFT OUTER JOIN movies sequals
ON movies.sequal_id = sequals.id;

SELECT movies.title, sequels.title
FROM movies
LEFT OUTER JOIN movies sequels
ON movies.sequel_id = sequels.id;

SELECT persons.fullname, hobbies.name FROM persons
JOIN hobbies
ON persons.id = hobbies.person_id;

SELECT a.fullname, b.fullname FROM friends
JOIN persons a
ON friends.person1_id = a.id
JOIN persons b
ON friends.person2_id = b.id

UPDATE diary_logs SET content = "Blah"
WHERE user_id = 1 AND date = "2015-01-01"

DELETE FROM diary_logs WHERE id = 1;

--CREATE table documents (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT,
    content TEXT,
    author TEXT);

INSERT INTO documents (author, title, content)
    VALUES ("Puff T.M. Dragon", "Fancy Stuff", "Ceiling wax, dragon wings, etc.");
INSERT INTO documents (author, title, content)
    VALUES ("Puff T.M. Dragon", "Living Things", "They're located in the left ear, you know.");
INSERT INTO documents (author, title, content)
    VALUES ("Jackie Paper", "Pirate Recipes", "Cherry pie, apple pie, blueberry pie.");
INSERT INTO documents (author, title, content)
    VALUES ("Jackie Paper", "Boat Supplies", "Rudder - guitar. Main mast - bed post.");
INSERT INTO documents (author, title, content)
    VALUES ("Jackie Paper", "Things I'm Afraid Of", "Talking to my parents, the sea, giant pirates, heights.");

SELECT * FROM documents;

UPDATE documents SET author = 'Jackie Draper'
WHERE author = 'Jackie Paper';

SELECT * FROM documents;
DELETE FROM documents WHERE title = "Things I'm Afraid Of";
SELECT * FROM documents;

CREATE TABLE clothes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    type TEXT,
    design TEXT);

INSERT INTO clothes (type, design)
    VALUES ("dress", "pink polka dots");
INSERT INTO clothes (type, design)
    VALUES ("pants", "rainbow tie-dye");
INSERT INTO clothes (type, design)
    VALUES ("blazer", "black sequin");

-- ALTER TABLE table_name
--   ADD column_name column_definition;
 ALTER TABLE clothes
 ADD price INTEGER;
 SELECT * FROM clothes;

UPDATE clothes set price = 10 WHERE id=1;
UPDATE clothes set price = 20 WHERE id=2;
UPDATE clothes set price = 30 WHERE id=3;

SELECT * FROM clothes;
INSERT INTO clothes(type, design, price)
    VALUES("shoe", "Nike", "100");
SELECT * FROM clothes;