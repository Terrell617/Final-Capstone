DROP TABLE IF EXISTS images CASCADE;
DROP TABLE IF EXISTS pets CASCADE;
DROP TABLE IF EXISTS volunteers CASCADE;

BEGIN TRANSACTION;

CREATE TABLE IF NOT EXISTS pets (
        pet_id serial PRIMARY KEY,
        pet_name VARCHAR (16) NOT NULL,
        age_in_months INT NOT NULL,
        gender VARCHAR (1) NOT NULL,
        species VARCHAR (16) NOT NULL,
        description VARCHAR (256) NOT NULL
);

CREATE TABLE IF NOT EXISTS images (
        image_id serial PRIMARY KEY,
        pet_id INT NOT NULL,
        url VARCHAR (64),
        image_description VARCHAR (64), 
        FOREIGN KEY (pet_id)
                REFERENCES pets (pet_id)    
);

CREATE TABLE IF NOT EXISTS volunteers (
        volunteer_id serial PRIMARY KEY,
        first_name VARCHAR (32) NOT NULL,
        last_name VARCHAR (32) NOT NULL,
        email_address VARCHAR (32) NOT NULL,
        approval_status INT NOT NULL
);

COMMIT;

BEGIN TRANSACTION;

INSERT INTO pets (pet_name, age_in_months, gender, species, description)
VALUES ('Cookie', 18, 'F', 'dog', 'Cookie is a shy but friendly pup who loves treats! Spend a little quality time with her and she will warm up to you quickly.');

INSERT INTO pets (pet_name, age_in_months, gender, species, description)
VALUES ('Vincent', 9, 'M', 'cat', 'Say hello to Vincent! This little furball is looking for a new home with a friendly owner. His happy place is a gentle ear scratch and he loves classical music!');

INSERT INTO pets (pet_name, age_in_months, gender, species, description)
VALUES ('Buster', 11, 'M', 'rabbit', 'Buster is an inquisitive young fella who needs a loving home with a new friend! Interestingly, he does not seem to like carrots, but is a big cucumber fan!');

INSERT INTO pets (pet_name, age_in_months, gender, species, description)
VALUES ('Waffles', 10, 'M', 'dog', 'Waffles is an energetic, adorable little scruffy boy with a huge heart who is looking for a friend whom he can love unconditionally!');

COMMIT;

BEGIN TRANSACTION;

INSERT INTO images (pet_id, url, image_description)
VALUES (3, 'src\images\BUSTER_01.JPG', 'Cute white fluffy bunny.');

INSERT INTO images (pet_id, url, image_description)
VALUES (1, 'src\images\COOKIE_01.JPG', 'Golden brown short haired dog licking nose.');

INSERT INTO images (pet_id, url, image_description)
VALUES (2, 'src\images\VINCENT_01.JPG', 'Young gray and black kitten.');

INSERT INTO images (pet_id, url, image_description)
VALUES (4, 'src\images\WAFFLES_01.JPG', 'Young chocolate lab.');

COMMIT;