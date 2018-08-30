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
 *     The location of a bird is made up of 2 numbers, denoted as
 *  <time_period_location>_x or <time_period_location>_y. The first
 *  number is represent as 25-bit number where each bit denotes the
 *  columns of a map of North America where the bird is found. The second
 *  number represents a 10-bit number where each bit denotes the rows of
 *  a map of North America where the bird is found. For example:
 *       0 1 2 3 4 5 6 7 8 9 1011121314151617181920212223
 *     0 |_|X|X|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|
 *     1 |_|X|X|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|
 *     2 |_|_|_|X|X|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|
 *     3 |_|_|_|X|X|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|
 *     4 |_|_|_|_|_|X|X|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|
 *     5 |_|_|_|_|_|X|X|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|
 *     6 |_|_|_|_|_|_|_|X|X|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|
 *     7 |_|_|_|_|_|_|_|X|X|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|
 *     8 |_|_|_|_|_|_|_|_|_|X|X|_|_|_|_|_|_|_|_|_|_|_|_|_|
 *     9 |_|_|_|_|_|_|_|_|_|X|X|_|_|_|_|_|_|_|_|_|_|_|_|_|
 *      can be denotes as:
 *          pos_x = 011111111110000000000000
 *          pos_y = 1111111111
 */

-- table for bird
CREATE TABLE bird (
    bird_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(60) NOT NULL,
    bird_type_id INT,
    winter_location_x INT,
    winter_location_y INT,
    summer_location_x INT,
    summer_location_y INT,
    yearly_location_x INT,
    yearly_location_y INT,
    migration_location_x INT,
    migration_location_y INT,
    length FLOAT NOT NULL,    -- in inches
    wingspan FLOAT NOT NULL,  -- in inches
    weight FLOAT NOT NULL,    -- in pounds
    gender ENUM('M', 'F', 'B'),
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
    flank_color INT,
    mantle_color INT,
    scapulars_color INT,
    sides_color INT,
    tibial_feathers_color INT,
    vent_color INT,
    # wings
    alula_color INT,
    axillary_color INT,
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
    neck_color INT,
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
INSERT INTO bird_type (name) VALUES ('LOON');
INSERT INTO bird_type (name) VALUES ('GREBE');
INSERT INTO bird_type (name) VALUES ('FULMAR');
INSERT INTO bird_type (name) VALUES ('PETREL');
INSERT INTO bird_type (name) VALUES ('SHEARWATER');
INSERT INTO bird_type (name) VALUES ('STORM-PETREL');
INSERT INTO bird_type (name) VALUES ('BOOBY');
INSERT INTO bird_type (name) VALUES ('FRIGATEBIRD');
INSERT INTO bird_type (name) VALUES ('GANNET');
INSERT INTO bird_type (name) VALUES ('PELICAN');
INSERT INTO bird_type (name) VALUES ('TROPICBIRD');
INSERT INTO bird_type (name) VALUES ('ANHINGA');
INSERT INTO bird_type (name) VALUES ('CORMORANTS');
INSERT INTO bird_type (name) VALUES ('BITTERNS');
INSERT INTO bird_type (name) VALUES ('EGRETS');
INSERT INTO bird_type (name) VALUES ('FLAMINGO');
INSERT INTO bird_type (name) VALUES ('HERON');
INSERT INTO bird_type (name) VALUES ('IBIS');
INSERT INTO bird_type (name) VALUES ('NIGHT-HERON');
INSERT INTO bird_type (name) VALUES ('SPOONBILL');
INSERT INTO bird_type (name) VALUES ('STORK');
INSERT INTO bird_type (name) VALUES ('DOMESTIC WATERFOWL');
INSERT INTO bird_type (name) VALUES ('EXOTIC WATERFOWL');
INSERT INTO bird_type (name) VALUES ('GOOSE');
INSERT INTO bird_type (name) VALUES ('SWAN');
INSERT INTO bird_type (name) VALUES ('PUDDLE DUCK');
INSERT INTO bird_type (name) VALUES ('TEAL');
INSERT INTO bird_type (name) VALUES ('WHISTLING-DUCK');
INSERT INTO bird_type (name) VALUES ('WIGEON');
INSERT INTO bird_type (name) VALUES ('EIDER');
INSERT INTO bird_type (name) VALUES ('GOLDENEYE');
INSERT INTO bird_type (name) VALUES ('MERGANSER');
INSERT INTO bird_type (name) VALUES ('SCAUP');
INSERT INTO bird_type (name) VALUES ('SCOTER');
INSERT INTO bird_type (name) VALUES ('CARACARA');
INSERT INTO bird_type (name) VALUES ('EAGLE');
INSERT INTO bird_type (name) VALUES ('FALCON');
INSERT INTO bird_type (name) VALUES ('HAWK');
INSERT INTO bird_type (name) VALUES ('KITE');
INSERT INTO bird_type (name) VALUES ('NEW WORLD VULTURE');
INSERT INTO bird_type (name) VALUES ('OSPREY');
INSERT INTO bird_type (name) VALUES ('CHACHALACA');
INSERT INTO bird_type (name) VALUES ('CHUKAR');
INSERT INTO bird_type (name) VALUES ('EXOTIC GAME BIRD');
INSERT INTO bird_type (name) VALUES ('GROUSE');
INSERT INTO bird_type (name) VALUES ('PARTRIDGE');
INSERT INTO bird_type (name) VALUES ('PHEASANT');
INSERT INTO bird_type (name) VALUES ('PRAIRIE-CHICKEN');
INSERT INTO bird_type (name) VALUES ('PTARMIGAN');
INSERT INTO bird_type (name) VALUES ('QUAIL');
INSERT INTO bird_type (name) VALUES ('TURKEY');
INSERT INTO bird_type (name) VALUES ('COOT');
INSERT INTO bird_type (name) VALUES ('CRANE');
INSERT INTO bird_type (name) VALUES ('GALLINULE');
INSERT INTO bird_type (name) VALUES ('LIMPKIN');
INSERT INTO bird_type (name) VALUES ('MOORHEN');
INSERT INTO bird_type (name) VALUES ('RAIL');
INSERT INTO bird_type (name) VALUES ('SORA');
INSERT INTO bird_type (name) VALUES ('AVOCET');
INSERT INTO bird_type (name) VALUES ('CURLEW');
INSERT INTO bird_type (name) VALUES ('DOWITCHER');
INSERT INTO bird_type (name) VALUES ('GODWIT');
INSERT INTO bird_type (name) VALUES ('JACANA');
INSERT INTO bird_type (name) VALUES ('LAPWING');
INSERT INTO bird_type (name) VALUES ('OYSTERCATCHER');
INSERT INTO bird_type (name) VALUES ('PHALAROPE');
INSERT INTO bird_type (name) VALUES ('PLOVER');
INSERT INTO bird_type (name) VALUES ('RUFF');
INSERT INTO bird_type (name) VALUES ('SANDPIPER');
INSERT INTO bird_type (name) VALUES ('SNIPE');
INSERT INTO bird_type (name) VALUES ('STILT');
INSERT INTO bird_type (name) VALUES ('TURNSTONE');
INSERT INTO bird_type (name) VALUES ('WHIMBREL');
INSERT INTO bird_type (name) VALUES ('WILLET');
INSERT INTO bird_type (name) VALUES ('WOODCOCK');
INSERT INTO bird_type (name) VALUES ('YELLOWLEG');
INSERT INTO bird_type (name) VALUES ('SKUA');
INSERT INTO bird_type (name) VALUES ('JAEGER');
INSERT INTO bird_type (name) VALUES ('GULL');
INSERT INTO bird_type (name) VALUES ('TERN');
INSERT INTO bird_type (name) VALUES ('SKIMMER');
INSERT INTO bird_type (name) VALUES ('DOVEKIE');
INSERT INTO bird_type (name) VALUES ('GUILLEMOT');
INSERT INTO bird_type (name) VALUES ('MURRELETS');
INSERT INTO bird_type (name) VALUES ('PIGEON');
INSERT INTO bird_type (name) VALUES ('DOVE');
INSERT INTO bird_type (name) VALUES ('PARROT');
INSERT INTO bird_type (name) VALUES ('ANI');
INSERT INTO bird_type (name) VALUES ('CUCKOO');
INSERT INTO bird_type (name) VALUES ('ROADRUNNER');
INSERT INTO bird_type (name) VALUES ('OWL');
INSERT INTO bird_type (name) VALUES ('NIGHTHAWK');
INSERT INTO bird_type (name) VALUES ('NIGHTJAR');
INSERT INTO bird_type (name) VALUES ('SWIFT');
INSERT INTO bird_type (name) VALUES ('HUMMINGBIRD');
INSERT INTO bird_type (name) VALUES ('KINGFISHER');
INSERT INTO bird_type (name) VALUES ('WOODPECKER');
INSERT INTO bird_type (name) VALUES ('FLYCATCHER');
INSERT INTO bird_type (name) VALUES ('KINGBIRD');
INSERT INTO bird_type (name) VALUES ('PEWEE');
INSERT INTO bird_type (name) VALUES ('PHOEBE');
INSERT INTO bird_type (name) VALUES ('WOOD-PEWEE');
INSERT INTO bird_type (name) VALUES ('SHRIKE');
INSERT INTO bird_type (name) VALUES ('VIREO');
INSERT INTO bird_type (name) VALUES ('CROW');
INSERT INTO bird_type (name) VALUES ('JAY');
INSERT INTO bird_type (name) VALUES ('MAGPIE');
INSERT INTO bird_type (name) VALUES ('RAVEN');
INSERT INTO bird_type (name) VALUES ('SCRUB-JAY');
INSERT INTO bird_type (name) VALUES ('LARK');
INSERT INTO bird_type (name) VALUES ('SWALLOW');
INSERT INTO bird_type (name) VALUES ('BUSHTIT');
INSERT INTO bird_type (name) VALUES ('CHICKADEE');
INSERT INTO bird_type (name) VALUES ('CREEPER');
INSERT INTO bird_type (name) VALUES ('NUTHATCH');
INSERT INTO bird_type (name) VALUES ('TITMOUSE');
INSERT INTO bird_type (name) VALUES ('VERDIN');
INSERT INTO bird_type (name) VALUES ('WREN');
INSERT INTO bird_type (name) VALUES ('DIPPER');
INSERT INTO bird_type (name) VALUES ('KINGLET');
INSERT INTO bird_type (name) VALUES ('GNATCATCHER');
INSERT INTO bird_type (name) VALUES ('BLUEBIRD');
INSERT INTO bird_type (name) VALUES ('ROBIN');
INSERT INTO bird_type (name) VALUES ('THRUSH');
INSERT INTO bird_type (name) VALUES ('CATBIRD');
INSERT INTO bird_type (name) VALUES ('MOCKINBIRD');
INSERT INTO bird_type (name) VALUES ('THRASHER');
INSERT INTO bird_type (name) VALUES ('PIPIT');
INSERT INTO bird_type (name) VALUES ('WAXWING');
INSERT INTO bird_type (name) VALUES ('STARLING');
INSERT INTO bird_type (name) VALUES ('MYNA');
INSERT INTO bird_type (name) VALUES ('BULBUL');
INSERT INTO bird_type (name) VALUES ('CHAT');
INSERT INTO bird_type (name) VALUES ('OVENBIRD');
INSERT INTO bird_type (name) VALUES ('PARULA');
INSERT INTO bird_type (name) VALUES ('REDSTART');
INSERT INTO bird_type (name) VALUES ('WARBLER');
INSERT INTO bird_type (name) VALUES ('WATERTHRUSH');
INSERT INTO bird_type (name) VALUES ('YELLOWTHROAT');
INSERT INTO bird_type (name) VALUES ('BANANAQUIT');
INSERT INTO bird_type (name) VALUES ('CARDINALINE BUNTING');
INSERT INTO bird_type (name) VALUES ('CARDINAL');
INSERT INTO bird_type (name) VALUES ('DICKCISSEL');
INSERT INTO bird_type (name) VALUES ('GROSBEAK');
INSERT INTO bird_type (name) VALUES ('TANAGER');
INSERT INTO bird_type (name) VALUES ('EMBERIZINE BUNTING');
INSERT INTO bird_type (name) VALUES ('JUNCO');
INSERT INTO bird_type (name) VALUES ('LONGSPUR');
INSERT INTO bird_type (name) VALUES ('SPARROW');
INSERT INTO bird_type (name) VALUES ('TOWHEE');
INSERT INTO bird_type (name) VALUES ('BLACKBIRD');
INSERT INTO bird_type (name) VALUES ('BOBOLINK');
INSERT INTO bird_type (name) VALUES ('COWBIRD');
INSERT INTO bird_type (name) VALUES ('GRACKLE');
INSERT INTO bird_type (name) VALUES ('MEADOWLARK');
INSERT INTO bird_type (name) VALUES ('ORIOLE');
INSERT INTO bird_type (name) VALUES ('CROSSBILL');
INSERT INTO bird_type (name) VALUES ('FINCH');
INSERT INTO bird_type (name) VALUES ('GOLDFINCH');
INSERT INTO bird_type (name) VALUES ('OLD WORLD SPARROW');
INSERT INTO bird_type (name) VALUES ('REDPOLL');
INSERT INTO bird_type (name) VALUES ('SISKIN');

