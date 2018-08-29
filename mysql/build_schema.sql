DROP DATABASE IF EXISTS bird_taxonomy;

CREATE DATABASE bird_taxonomy;

USE bird_taxonomy;

-- table for color
CREATE TABLE color (
    color_id INT NOT NULL AUTO_INCREMENT,
    color_code INT NOT NULL,
    name varchar(12),
    CONSTRAINT pk_color PRIMARY KEY (color_id)
);
-- table for style
CREATE TABLE style (
    style_id INT NOT NULL AUTO_INCREMENT,
    style_code INT NOT NULL,
    name VARCHAR(12) NOT NULL,
    CONSTRAINT pk_style PRIMARY KEY (style_id)
);

-- table for location
CREATE TABLE location (
    location_id INT NOT NULL AUTO_INCREMENT,
    location_code INT NOT NULL,
    name VARCHAR(30) NOT NULL,
    CONSTRAINT pk_location PRIMARY KEY (location_id)
);

-- table for bird_type
CREATE TABLE bird_type (
    bird_type_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(60) NOT NULL,
    CONSTRAINT pk_bird_type PRIMARY KEY (bird_type_id)
);

/**
 * How Colors Work:
 *      The color field is an int but the value will be treated is a 4-digit
 *  hexadecimal number, where each digit represent a different color (there
 *  are 16 colors so each hex number 0-F will represent a color). The first
 *  three digits from the right will be a series of colors that a bird's
 *  body part can have. The fourth digit will represent the style of the
 *  colors on the bird. For example, if a birds nape is black and white
 *  stripes, then its code would look something like this:
 *      Black = 0x9, White = 0x7, Stripe = 0x1
 *      => 0x1097 = 4247
 *  The first two digits are the codes for black and white, generally, the
 *  greater number will be further to the left. Since there are only two
 *  colors, the third digit is 0x0, meaning there is no third color.
 */

/**
 * How Locations Work:
 *     The location field is an int but the value will be treated as a 16-
 *  bit integer. There are 16 locations covering the United States and each
 *  location is represent as a single bit in a unique index. For example,
 *  say a bird is located in the Florida Keys, Eastern North, and
 *  California, then the location value will look as followed:
 *      Florida Keys  = 0b0000000000000100
 *      Eastern North = 0b0000000000000010
 *      California    = 0b0000010000000000
 *      ______________+___________________
 *      Location      = 0b0000010000000110 = 1030
 *  Essentially the location is the | (OR) of all locations the bird can be
 *  seen.
 */

-- table for bird
CREATE TABLE bird (
    bird_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(60) NOT NULL,
    bird_type_id INT,
    winter_location INT,
    summer_location INT,
    yearly_location INT,
    migration_location INT,
    length FLOAT NOT NULL,
    width FLOAT NOT NULL,
    weight FLOAT NOT NULL,
    gender ENUM('M', 'F'),
# colors
    # head
    cheek_color INT,
    crown_color INT,
    eyebrow_color INT,
    lores_color INT,
    lower_mandible_color INT,
    malar_color INT,
    nape_color INT,
    nasal_tuft_color INT,
    orbital_feathers_color INT,
    supraloral_color INT,
    throat_color INT,
    upper_mandible_color INT,
    # body
    belly_color INT,
    breast_color INT,
    femoral_tract_color INT,
    flanks_color INT,
    mantle_color INT,
    scapulars_color INT,
    sides_color INT,
    tibial_feathers_color INT,
    vent_color INT,
    # wings
    alula_color INT,
    axillaries_color INT,
    greater_primary_coverts_color INT,
    greater_secondary_coverts_color INT,
    lesser_secondary_coverts_color INT,
    median_secondary_coverts_color INT,
    primary_coverts_color INT,
    secondary_coverts_color INT,
    tail_color INT,
    tertials_color INT,
    undertail_coverts_color INT,
    underwing_coverts_color INT,
    uppertail_coverts_color INT,
    # body parts
    tarsus_color INT,
    toes_color INT,
    CONSTRAINT pf_bird_id PRIMARY KEY (bird_id),
    CONSTRAINT fk_bird_type FOREIGN KEY (bird_type_id) REFERENCES bird_type (bird_type_id)
);

-- adding colors to color table
INSERT INTO color (color_code, name) VALUES (0,  'NONE');
INSERT INTO color (color_code, name) VALUES (1,  'GREEN');
INSERT INTO color (color_code, name) VALUES (2,  'BLUE');
INSERT INTO color (color_code, name) VALUES (3,  'TAN');
INSERT INTO color (color_code, name) VALUES (4,  'RED');
INSERT INTO color (color_code, name) VALUES (5,  'PINK');
INSERT INTO color (color_code, name) VALUES (6,  'ORANGE');
INSERT INTO color (color_code, name) VALUES (7,  'WHITE');
INSERT INTO color (color_code, name) VALUES (8,  'BROWN');
INSERT INTO color (color_code, name) VALUES (9,  'BLACK');
INSERT INTO color (color_code, name) VALUES (10, 'GREY');
INSERT INTO color (color_code, name) VALUES (11, 'YELLOW');
INSERT INTO color (color_code, name) VALUES (12, 'RUFOUS');
INSERT INTO color (color_code, name) VALUES (13, 'OLIVE');
INSERT INTO color (color_code, name) VALUES (14, 'PURPLE');
INSERT INTO color (color_code, name) VALUES (15, 'IRIDESCENCE');

-- adding styles to style table
INSERT INTO style (style_code, name) VALUES (0, 'NONE');
INSERT INTO style (style_code, name) VALUES (1, 'STRIPED');
INSERT INTO style (style_code, name) VALUES (2, 'DOTTED');
INSERT INTO style (style_code, name) VALUES (3, 'MIXED');
INSERT INTO style (style_code, name) VALUES (4, 'FADE');

-- adding locations to location table
INSERT INTO location (location_code, name) VALUES (1,     'EASTERN SOUTH');
INSERT INTO location (location_code, name) VALUES (2,     'EASTERN NORTH');
INSERT INTO location (location_code, name) VALUES (4,     'FLORIDA KEYS');
INSERT INTO location (location_code, name) VALUES (8,     'FLORIDA');
INSERT INTO location (location_code, name) VALUES (16,    'NEWFOUNDLAND');
INSERT INTO location (location_code, name) VALUES (32,    'TAIGA');
INSERT INTO location (location_code, name) VALUES (64,    'GREAT PLAINS');
INSERT INTO location (location_code, name) VALUES (128,   'SOUTHWEST');
INSERT INTO location (location_code, name) VALUES (256,   'GREAT BASIN');
INSERT INTO location (location_code, name) VALUES (512,   'ROCKY MOUNTAINS');
INSERT INTO location (location_code, name) VALUES (1024,  'CALIFORNIA');
INSERT INTO location (location_code, name) VALUES (2048,  'PACIFIC NORTHWEST');
INSERT INTO location (location_code, name) VALUES (4096,  'QUEEN CHARLOTTE ISLANDS');
INSERT INTO location (location_code, name) VALUES (8192,  'MEXICAN');
INSERT INTO location (location_code, name) VALUES (16384, 'ARCITC');
INSERT INTO location (location_code, name) VALUES (32768, 'GREENLAND');

-- adding bird types to bird type table
INSERT INTO bird_type (name) VALUES ('LOONS AND GREBES');
INSERT INTO bird_type (name) VALUES ('TUBENOSES');
INSERT INTO bird_type (name) VALUES ('PELECANIFORMES');
INSERT INTO bird_type (name) VALUES ('ANHINGA AND CORMORANTS');
INSERT INTO bird_type (name) VALUES ('WADING BIRDS');
INSERT INTO bird_type (name) VALUES ('SWANS AND GEESE');
INSERT INTO bird_type (name) VALUES ('DABBLING DUCKS');
INSERT INTO bird_type (name) VALUES ('DIVING DUCKS');
INSERT INTO bird_type (name) VALUES ('DIURNAL RAPTORS');
INSERT INTO bird_type (name) VALUES ('UPLAND GAME BIRDS');
INSERT INTO bird_type (name) VALUES ('GRUIFORMES');
INSERT INTO bird_type (name) VALUES ('SHOREBIRDS');
INSERT INTO bird_type (name) VALUES ('SKUAS, JAEGERS, AND GULLS');
INSERT INTO bird_type (name) VALUES ('TERNS AND SKIMMERS');
INSERT INTO bird_type (name) VALUES ('ALCIDS');
INSERT INTO bird_type (name) VALUES ('PIGEONS AND DOVES');
INSERT INTO bird_type (name) VALUES ('PARROTS AND THEIR ALLIES');
INSERT INTO bird_type (name) VALUES ('CUCKOOS AND THE ALLIES');
INSERT INTO bird_type (name) VALUES ('OWLS');
INSERT INTO bird_type (name) VALUES ('GOATSUCKERS');
INSERT INTO bird_type (name) VALUES ('SWIFTS');
INSERT INTO bird_type (name) VALUES ('HUMMINGBIRDS');
INSERT INTO bird_type (name) VALUES ('KINGFISHERS');
INSERT INTO bird_type (name) VALUES ('WOODPECKERS');
INSERT INTO bird_type (name) VALUES ('TYRANT FLYCATCHERS');
INSERT INTO bird_type (name) VALUES ('SHRIKES AND VIREOS');
INSERT INTO bird_type (name) VALUES ('JAYS, CROWS, AND THEIR ALLIES');
INSERT INTO bird_type (name) VALUES ('LARKS');
INSERT INTO bird_type (name) VALUES ('SWALLOWS');
INSERT INTO bird_type (name) VALUES ('CHICKADEES, NUTHATCHES, AND THEIR ALLIES');
INSERT INTO bird_type (name) VALUES ('WRENS');
INSERT INTO bird_type (name) VALUES ('DIPPER, KINGLETS, AND GNATCATCHERS');
INSERT INTO bird_type (name) VALUES ('THRUSHES');
INSERT INTO bird_type (name) VALUES ('MIMIDS');
INSERT INTO bird_type (name) VALUES ('PIPITS');
INSERT INTO bird_type (name) VALUES ('WAXWINGS');
INSERT INTO bird_type (name) VALUES ('STARLINGS, MYNAS, AND BULBUL');
INSERT INTO bird_type (name) VALUES ('WOOD-WARBLERS');
INSERT INTO bird_type (name) VALUES ('TANAGERS, CARDINALS, AND THEIR ALLIES');
INSERT INTO bird_type (name) VALUES ('EMBERIZINE SPARROWS AND THEIR ALLIES');
INSERT INTO bird_type (name) VALUES ('ICTERIDS');
INSERT INTO bird_type (name) VALUES ('FINCHES AND OLD WORLD SPARROWS');
