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

-- table for bird_type
CREATE TABLE bird_type (
    bird_type_id INT NOT NULL AUTO_INCREMENT,
    bird_type_name VARCHAR(60) NOT NULL,
    CONSTRAINT pk_bird_type PRIMARY KEY (bird_type_id)
);

-- table for bird
CREATE TABLE bird (
    bird_id INT NOT NULL AUTO_INCREMENT,
    bird_name VARCHAR(60) NOT NULL,
    bird_type_id INT,
    length FLOAT NOT NULL,    -- in inches
    wingspan FLOAT NOT NULL,  -- in inches
    weight FLOAT NOT NULL,    -- in pounds
    gender ENUM('M', 'F', 'B'),
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

-- adding bird types to bird type table
INSERT INTO bird_type (bird_type_name) VALUES ('LOON');
INSERT INTO bird_type (bird_type_name) VALUES ('GREBE');
INSERT INTO bird_type (bird_type_name) VALUES ('FULMAR');
INSERT INTO bird_type (bird_type_name) VALUES ('PETREL');
INSERT INTO bird_type (bird_type_name) VALUES ('SHEARWATER');
INSERT INTO bird_type (bird_type_name) VALUES ('STORM-PETREL');
INSERT INTO bird_type (bird_type_name) VALUES ('BOOBY');
INSERT INTO bird_type (bird_type_name) VALUES ('FRIGATEBIRD');
INSERT INTO bird_type (bird_type_name) VALUES ('GANNET');
INSERT INTO bird_type (bird_type_name) VALUES ('PELICAN');
INSERT INTO bird_type (bird_type_name) VALUES ('TROPICBIRD');
INSERT INTO bird_type (bird_type_name) VALUES ('ANHINGA');
INSERT INTO bird_type (bird_type_name) VALUES ('CORMORANTS');
INSERT INTO bird_type (bird_type_name) VALUES ('BITTERNS');
INSERT INTO bird_type (bird_type_name) VALUES ('EGRETS');
INSERT INTO bird_type (bird_type_name) VALUES ('FLAMINGO');
INSERT INTO bird_type (bird_type_name) VALUES ('HERON');
INSERT INTO bird_type (bird_type_name) VALUES ('IBIS');
INSERT INTO bird_type (bird_type_name) VALUES ('NIGHT-HERON');
INSERT INTO bird_type (bird_type_name) VALUES ('SPOONBILL');
INSERT INTO bird_type (bird_type_name) VALUES ('STORK');
INSERT INTO bird_type (bird_type_name) VALUES ('DOMESTIC WATERFOWL');
INSERT INTO bird_type (bird_type_name) VALUES ('EXOTIC WATERFOWL');
INSERT INTO bird_type (bird_type_name) VALUES ('GOOSE');
INSERT INTO bird_type (bird_type_name) VALUES ('SWAN');
INSERT INTO bird_type (bird_type_name) VALUES ('PUDDLE DUCK');
INSERT INTO bird_type (bird_type_name) VALUES ('TEAL');
INSERT INTO bird_type (bird_type_name) VALUES ('WHISTLING-DUCK');
INSERT INTO bird_type (bird_type_name) VALUES ('WIGEON');
INSERT INTO bird_type (bird_type_name) VALUES ('EIDER');
INSERT INTO bird_type (bird_type_name) VALUES ('GOLDENEYE');
INSERT INTO bird_type (bird_type_name) VALUES ('MERGANSER');
INSERT INTO bird_type (bird_type_name) VALUES ('SCAUP');
INSERT INTO bird_type (bird_type_name) VALUES ('SCOTER');
INSERT INTO bird_type (bird_type_name) VALUES ('CARACARA');
INSERT INTO bird_type (bird_type_name) VALUES ('EAGLE');
INSERT INTO bird_type (bird_type_name) VALUES ('FALCON');
INSERT INTO bird_type (bird_type_name) VALUES ('HAWK');
INSERT INTO bird_type (bird_type_name) VALUES ('KITE');
INSERT INTO bird_type (bird_type_name) VALUES ('NEW WORLD VULTURE');
INSERT INTO bird_type (bird_type_name) VALUES ('OSPREY');
INSERT INTO bird_type (bird_type_name) VALUES ('CHACHALACA');
INSERT INTO bird_type (bird_type_name) VALUES ('CHUKAR');
INSERT INTO bird_type (bird_type_name) VALUES ('EXOTIC GAME BIRD');
INSERT INTO bird_type (bird_type_name) VALUES ('GROUSE');
INSERT INTO bird_type (bird_type_name) VALUES ('PARTRIDGE');
INSERT INTO bird_type (bird_type_name) VALUES ('PHEASANT');
INSERT INTO bird_type (bird_type_name) VALUES ('PRAIRIE-CHICKEN');
INSERT INTO bird_type (bird_type_name) VALUES ('PTARMIGAN');
INSERT INTO bird_type (bird_type_name) VALUES ('QUAIL');
INSERT INTO bird_type (bird_type_name) VALUES ('TURKEY');
INSERT INTO bird_type (bird_type_name) VALUES ('COOT');
INSERT INTO bird_type (bird_type_name) VALUES ('CRANE');
INSERT INTO bird_type (bird_type_name) VALUES ('GALLINULE');
INSERT INTO bird_type (bird_type_name) VALUES ('LIMPKIN');
INSERT INTO bird_type (bird_type_name) VALUES ('MOORHEN');
INSERT INTO bird_type (bird_type_name) VALUES ('RAIL');
INSERT INTO bird_type (bird_type_name) VALUES ('SORA');
INSERT INTO bird_type (bird_type_name) VALUES ('AVOCET');
INSERT INTO bird_type (bird_type_name) VALUES ('CURLEW');
INSERT INTO bird_type (bird_type_name) VALUES ('DOWITCHER');
INSERT INTO bird_type (bird_type_name) VALUES ('GODWIT');
INSERT INTO bird_type (bird_type_name) VALUES ('JACANA');
INSERT INTO bird_type (bird_type_name) VALUES ('LAPWING');
INSERT INTO bird_type (bird_type_name) VALUES ('OYSTERCATCHER');
INSERT INTO bird_type (bird_type_name) VALUES ('PHALAROPE');
INSERT INTO bird_type (bird_type_name) VALUES ('PLOVER');
INSERT INTO bird_type (bird_type_name) VALUES ('RUFF');
INSERT INTO bird_type (bird_type_name) VALUES ('SANDPIPER');
INSERT INTO bird_type (bird_type_name) VALUES ('SNIPE');
INSERT INTO bird_type (bird_type_name) VALUES ('STILT');
INSERT INTO bird_type (bird_type_name) VALUES ('TURNSTONE');
INSERT INTO bird_type (bird_type_name) VALUES ('WHIMBREL');
INSERT INTO bird_type (bird_type_name) VALUES ('WILLET');
INSERT INTO bird_type (bird_type_name) VALUES ('WOODCOCK');
INSERT INTO bird_type (bird_type_name) VALUES ('YELLOWLEG');
INSERT INTO bird_type (bird_type_name) VALUES ('SKUA');
INSERT INTO bird_type (bird_type_name) VALUES ('JAEGER');
INSERT INTO bird_type (bird_type_name) VALUES ('GULL');
INSERT INTO bird_type (bird_type_name) VALUES ('TERN');
INSERT INTO bird_type (bird_type_name) VALUES ('SKIMMER');
INSERT INTO bird_type (bird_type_name) VALUES ('DOVEKIE');
INSERT INTO bird_type (bird_type_name) VALUES ('GUILLEMOT');
INSERT INTO bird_type (bird_type_name) VALUES ('MURRELETS');
INSERT INTO bird_type (bird_type_name) VALUES ('PIGEON');
INSERT INTO bird_type (bird_type_name) VALUES ('DOVE');
INSERT INTO bird_type (bird_type_name) VALUES ('PARROT');
INSERT INTO bird_type (bird_type_name) VALUES ('ANI');
INSERT INTO bird_type (bird_type_name) VALUES ('CUCKOO');
INSERT INTO bird_type (bird_type_name) VALUES ('ROADRUNNER');
INSERT INTO bird_type (bird_type_name) VALUES ('OWL');
INSERT INTO bird_type (bird_type_name) VALUES ('NIGHTHAWK');
INSERT INTO bird_type (bird_type_name) VALUES ('NIGHTJAR');
INSERT INTO bird_type (bird_type_name) VALUES ('SWIFT');
INSERT INTO bird_type (bird_type_name) VALUES ('HUMMINGBIRD');
INSERT INTO bird_type (bird_type_name) VALUES ('KINGFISHER');
INSERT INTO bird_type (bird_type_name) VALUES ('WOODPECKER');
INSERT INTO bird_type (bird_type_name) VALUES ('FLYCATCHER');
INSERT INTO bird_type (bird_type_name) VALUES ('KINGBIRD');
INSERT INTO bird_type (bird_type_name) VALUES ('PEWEE');
INSERT INTO bird_type (bird_type_name) VALUES ('PHOEBE');
INSERT INTO bird_type (bird_type_name) VALUES ('WOOD-PEWEE');
INSERT INTO bird_type (bird_type_name) VALUES ('SHRIKE');
INSERT INTO bird_type (bird_type_name) VALUES ('VIREO');
INSERT INTO bird_type (bird_type_name) VALUES ('CROW');
INSERT INTO bird_type (bird_type_name) VALUES ('JAY');
INSERT INTO bird_type (bird_type_name) VALUES ('MAGPIE');
INSERT INTO bird_type (bird_type_name) VALUES ('RAVEN');
INSERT INTO bird_type (bird_type_name) VALUES ('SCRUB-JAY');
INSERT INTO bird_type (bird_type_name) VALUES ('LARK');
INSERT INTO bird_type (bird_type_name) VALUES ('SWALLOW');
INSERT INTO bird_type (bird_type_name) VALUES ('BUSHTIT');
INSERT INTO bird_type (bird_type_name) VALUES ('CHICKADEE');
INSERT INTO bird_type (bird_type_name) VALUES ('CREEPER');
INSERT INTO bird_type (bird_type_name) VALUES ('NUTHATCH');
INSERT INTO bird_type (bird_type_name) VALUES ('TITMOUSE');
INSERT INTO bird_type (bird_type_name) VALUES ('VERDIN');
INSERT INTO bird_type (bird_type_name) VALUES ('WREN');
INSERT INTO bird_type (bird_type_name) VALUES ('DIPPER');
INSERT INTO bird_type (bird_type_name) VALUES ('KINGLET');
INSERT INTO bird_type (bird_type_name) VALUES ('GNATCATCHER');
INSERT INTO bird_type (bird_type_name) VALUES ('BLUEBIRD');
INSERT INTO bird_type (bird_type_name) VALUES ('ROBIN');
INSERT INTO bird_type (bird_type_name) VALUES ('THRUSH');
INSERT INTO bird_type (bird_type_name) VALUES ('CATBIRD');
INSERT INTO bird_type (bird_type_name) VALUES ('MOCKINBIRD');
INSERT INTO bird_type (bird_type_name) VALUES ('THRASHER');
INSERT INTO bird_type (bird_type_name) VALUES ('PIPIT');
INSERT INTO bird_type (bird_type_name) VALUES ('WAXWING');
INSERT INTO bird_type (bird_type_name) VALUES ('STARLING');
INSERT INTO bird_type (bird_type_name) VALUES ('MYNA');
INSERT INTO bird_type (bird_type_name) VALUES ('BULBUL');
INSERT INTO bird_type (bird_type_name) VALUES ('CHAT');
INSERT INTO bird_type (bird_type_name) VALUES ('OVENBIRD');
INSERT INTO bird_type (bird_type_name) VALUES ('PARULA');
INSERT INTO bird_type (bird_type_name) VALUES ('REDSTART');
INSERT INTO bird_type (bird_type_name) VALUES ('WARBLER');
INSERT INTO bird_type (bird_type_name) VALUES ('WATERTHRUSH');
INSERT INTO bird_type (bird_type_name) VALUES ('YELLOWTHROAT');
INSERT INTO bird_type (bird_type_name) VALUES ('BANANAQUIT');
INSERT INTO bird_type (bird_type_name) VALUES ('CARDINALINE BUNTING');
INSERT INTO bird_type (bird_type_name) VALUES ('CARDINAL');
INSERT INTO bird_type (bird_type_name) VALUES ('DICKCISSEL');
INSERT INTO bird_type (bird_type_name) VALUES ('GROSBEAK');
INSERT INTO bird_type (bird_type_name) VALUES ('TANAGER');
INSERT INTO bird_type (bird_type_name) VALUES ('EMBERIZINE BUNTING');
INSERT INTO bird_type (bird_type_name) VALUES ('JUNCO');
INSERT INTO bird_type (bird_type_name) VALUES ('LONGSPUR');
INSERT INTO bird_type (bird_type_name) VALUES ('SPARROW');
INSERT INTO bird_type (bird_type_name) VALUES ('TOWHEE');
INSERT INTO bird_type (bird_type_name) VALUES ('BLACKBIRD');
INSERT INTO bird_type (bird_type_name) VALUES ('BOBOLINK');
INSERT INTO bird_type (bird_type_name) VALUES ('COWBIRD');
INSERT INTO bird_type (bird_type_name) VALUES ('GRACKLE');
INSERT INTO bird_type (bird_type_name) VALUES ('MEADOWLARK');
INSERT INTO bird_type (bird_type_name) VALUES ('ORIOLE');
INSERT INTO bird_type (bird_type_name) VALUES ('CROSSBILL');
INSERT INTO bird_type (bird_type_name) VALUES ('FINCH');
INSERT INTO bird_type (bird_type_name) VALUES ('GOLDFINCH');
INSERT INTO bird_type (bird_type_name) VALUES ('OLD WORLD SPARROW');
INSERT INTO bird_type (bird_type_name) VALUES ('REDPOLL');
INSERT INTO bird_type (bird_type_name) VALUES ('SISKIN');

-- adding birds to bird table
INSERT INTO bird (bird_name, bird_type_id, length, wingspan, weight, gender)
    VALUE ('COMMON LOON', 1, 32, 46, 9, 'B');
INSERT INTO bird (bird_name, bird_type_id, length, wingspan, weight, gender)
    VALUE ('YELLOW-BILLED LOON', 1, 35, 49, 11.8, 'B');
INSERT INTO bird (bird_name, bird_type_id, length, wingspan, weight, gender)
    VALUE ('RED-THROATED LOON', 1, 25, 30, 3.1, 'B');
INSERT INTO bird (bird_name, bird_type_id, length, wingspan, weight, gender)
    VALUE ('PACIFIC LOON', 1, 25, 36, 3.7, 'B');
INSERT INTO bird (bird_name, bird_type_id, length, wingspan, weight, gender)
    VALUE ('WESTERN GREBE', 2, 25, 24, 3.3, 'B');
INSERT INTO bird (bird_name, bird_type_id, length, wingspan, weight, gender)
    VALUE ('CLARK''S GREBE', 2, 25, 24, 3.1, 'B');
INSERT INTO bird (bird_name, bird_type_id, length, wingspan, weight, gender)
    VALUE ('PIED-BILLED GREBE', 2, 13, 16, 1, 'B');
INSERT INTO bird (bird_name, bird_type_id, length, wingspan, weight, gender)
    VALUE ('LEAST GREBE', 2, 9.5, 11, .25, 'B');
INSERT INTO bird (bird_name, bird_type_id, length, wingspan, weight, gender)
    VALUE ('HORNED GREBE', 2, 14, 18, 1, 'B');
INSERT INTO bird (bird_name, bird_type_id, length, wingspan, weight, gender)
    VALUE ('RED-NECKED GREBE', 2, 18, 24, 2.2, 'B');
INSERT INTO bird (bird_name, bird_type_id, length, wingspan, weight, gender)
    VALUE ('EARED GREBE', 2, 13, 16, .6875, 'B');
