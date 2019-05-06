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