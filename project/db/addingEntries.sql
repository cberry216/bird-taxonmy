DROP DATABASE IF EXISTS taxonomy;

CREATE DATABASE taxonomy;

USE taxonomy;

CREATE TABLE bird (
    bird_id INTEGER NOT NULL AUTO_INCREMENT,
    bird_name VARCHAR(30) NOT NULL,
    bird_type ENUM('LOON','GREBE'),
    length INT NOT NULL,
    wingspan INT NOT NULL,
    weight INT NOT NULL,
    summary VARCHAR(300),
    voice VARCHAR(100),
    CONSTRAINT pk_bird_id PRIMARY KEY (bird_id)
);

CREATE TABLE description (
    description_id INT NOT NULL AUTO_INCREMENT,
    bird_id INT NOT NULL,
    gender ENUM('M', 'F'),
    nonbreeding BOOLEAN,
    body_part ENUM('BACK',
                   'BELLY',
                   'BILL',
                   'BREAST',
                   'FEET',
                   'HEAD',
                   'NAPE',
                   'NECK',
                   'TAIL',
                   'WINGS') NOT NULL,
    color ENUM('WHITE',
               'BLACK',
               'GREY',
               'BROWN',
               'RED',
               'ORANGE',
               'YELLOW',
               'GREEN',
               'BLUE',
               'PURPLE',
               'PINK',
               'RUFOUS',
               'OLIVE',
               'TAN') NOT NULL,
    CONSTRAINT pk_description_id PRIMARY KEY (description_id),
    CONSTRAINT fk_desc_bird_id FOREIGN KEY (bird_id) REFERENCES bird (bird_id)
);

CREATE TABLE location (
    location_id INT NOT NULL AUTO_INCREMENT,
    bird_id INT NOT NULL,
    region ENUM('PRIBILOFS',
                'ALEUTIANS',
                'GREENLAND',
                'ARCTIC',
                'NEWFOUNDLAND',
                'TAIGA',
                'QUEEN CHARLOTTE ISLANDS',
                'PACIFIC NORTHWEST',
                'CALIFORNIA',
                'CHANNEL ISLANDS',
                'ROCKY MOUNTAINS',
                'GREAT BASIN',
                'SOUTHWEST',
                'GREAT PLAINS',
                'MEXICAN',
                'NORTHEAST',
                'SOUTHEAST',
                'FLORIDA',
                'FLORIDA KEYS'),
    CONSTRAINT pk_location_id PRIMARY KEY (location_id),
    CONSTRAINT fk_loc_bird_id FOREIGN KEY (bird_id) REFERENCES bird (bird_id)
);
