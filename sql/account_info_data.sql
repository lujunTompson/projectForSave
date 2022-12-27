/*
 Navicat MySQL Data Transfer

 Source Server         : localMySQL
 Source Server Type    : MySQL
 Source Server Version : 80013 (8.0.13)
 Source Host           : localhost:3306
 Source Schema         : save

 Target Server Type    : MySQL
 Target Server Version : 80013 (8.0.13)
 File Encoding         : 65001

 Date: 27/12/2022 13:15:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account_info
-- ----------------------------
DROP TABLE IF EXISTS `account_info`;
CREATE TABLE `account_info`  (
  `last_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `first_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `street_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `unit` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `city` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `state` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `zip` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `dob` date NULL DEFAULT NULL,
  `ssn` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email_address` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `mobile_number` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `account_number` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`account_number`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of account_info
-- ----------------------------
INSERT INTO `account_info` VALUES ('Smith', 'Michael', '4306 Yoakum Blvd', NULL, 'Houston', 'TX', '77006', '1965-07-29', '108-60-1119', 'msmith111@gmail.com', '7134921111', '11111');
INSERT INTO `account_info` VALUES ('Becky', 'Mirafuentes', '30553 Washington Rd', NULL, 'Plainfield', 'NJ', '7062', '1986-02-18', '933-95-7101', 'becky.mirafuentes@mirafuentes.com', '6095243586', '13626');
INSERT INTO `account_info` VALUES ('Reita', 'Leto', '55262 N French Rd', NULL, 'Indianapolis', 'IN', '46240', '1988-12-13', '557-73-6098', 'reita.leto@gmail.com', '6029069419', '13868');
INSERT INTO `account_info` VALUES ('Irma', 'Wolfgramm', '9745 W Main St', NULL, 'Randolph', 'NJ', '7869', '1991-10-21', '637-83-3065', 'irma.wolfgramm@hotmail.com', '8479799545', '13907');
INSERT INTO `account_info` VALUES ('Nieves', 'Gotter', '4940 Pulaski Park Dr', NULL, 'Portland', 'OR', '97202', '1952-12-06', '652-19-4829', 'nieves_gotter@gmail.com', '7737754522', '13986');
INSERT INTO `account_info` VALUES ('Dorthy', 'Hidvegi', '9635 S Main St', NULL, 'Boise', 'ID', '83704', '1949-09-25', '375-84-4942', 'dhidvegi@yahoo.com', '9165913277', '14215');
INSERT INTO `account_info` VALUES ('Willard', 'Kolmetz', '618 W Yakima Ave', NULL, 'Irving', 'TX', '75062', '1987-12-28', '295-78-6006', 'willard@hotmail.com', '4085401785', '14281');
INSERT INTO `account_info` VALUES ('Estrella', 'Samu', '64 Lakeview Ave', NULL, 'Beloit', 'WI', '53511', '1992-07-28', '836-97-8566', 'estrella@aol.com', '5039393153', '14328');
INSERT INTO `account_info` VALUES ('Lezlie', 'Craghead', '749 W 18th St', '#45', 'Smithfield', 'NC', '27577', '1976-08-19', '421-15-6096', 'lezlie.craghead@craghead.org', '5413264074', '14405');
INSERT INTO `account_info` VALUES ('Shawna', 'Palaspas', '5 N Cleveland Massillon Rd', NULL, 'Thousand Oaks', 'CA', '91362', '1961-06-22', '657-28-4128', 'shawna_palaspas@palaspas.org', '4102249462', '14558');
INSERT INTO `account_info` VALUES ('Danica', 'Bruschke', '840 15th Ave', NULL, 'Waco', 'TX', '76708', '1949-09-03', '406-49-9428', 'danica_bruschke@gmail.com', '6265721096', '14739');
INSERT INTO `account_info` VALUES ('Cammy', 'Albares', '56 E Morehead St', NULL, 'Laredo', 'TX', '78045', '1976-03-25', '431-08-6477', 'calbares@gmail.com', '4407808425', '14829');
INSERT INTO `account_info` VALUES ('Angella', 'Cetta', '185 Blackstone Bldge', NULL, 'Honolulu', 'HI', '96817', '1969-05-25', '914-77-5912', 'angella.cetta@hotmail.com', '5108287047', '14889');
INSERT INTO `account_info` VALUES ('Wilda', 'Giguere', '1747 Calle Amanecer', '#2', 'Anchorage', 'AK', '99501', '1993-04-03', '318-78-4058', 'wilda@cox.net', '2547828569', '15041');
INSERT INTO `account_info` VALUES ('Dominque', 'Dickerson', '69 Marquette Ave', NULL, 'Hayward', 'CA', '94545', '1943-12-16', '541-64-9094', 'dominque.dickerson@dickerson.org', '9047754480', '15451');
INSERT INTO `account_info` VALUES ('Chanel', 'Caudy', '86 Nw 66th St', '#8673', 'Shawnee', 'KS', '66218', '1972-06-18', '892-15-4289', 'chanel.caudy@caudy.org', '7156626764', '15482');
INSERT INTO `account_info` VALUES ('Jesusa', 'Shin', '2239 Shawnee Mission Pky', NULL, 'Tullahoma', 'TN', '37388', '1989-12-15', '494-16-3129', 'jshin@shin.com', '9726663413', '15883');
INSERT INTO `account_info` VALUES ('Marjory', 'Mastella', '71 San Mateo Ave', NULL, 'Wayne', 'PA', '19087', '1969-09-02', '232-44-8676', 'mmastella@mastella.com', '8039255213', '15971');
INSERT INTO `account_info` VALUES ('Gregoria', 'Pawlowicz', '455 N Main Ave', NULL, 'Garden City', 'NY', '11530', '1966-06-27', '637-26-5571', 'gpawlowicz@yahoo.com', '8564875412', '16068');
INSERT INTO `account_info` VALUES ('Merilyn', 'Bayless', '195 13n N', NULL, 'Santa Clara', 'CA', '95054', '1943-04-26', '919-99-7195', 'merilyn_bayless@cox.net', '3522422570', '16090');
INSERT INTO `account_info` VALUES ('Valentin', 'Klimek', '137 Pioneer Way', NULL, 'Chicago', 'IL', '60604', '1964-07-02', '624-48-5014', 'vklimek@klimek.org', '2143391809', '16392');
INSERT INTO `account_info` VALUES ('Ezekiel', 'Chui', '2 Cedar Ave', '#84', 'Easton', 'MD', '21601', '1950-07-13', '792-14-1333', 'ezekiel@chui.com', '9133882079', '16456');
INSERT INTO `account_info` VALUES ('Ozell', 'Shealy', '8 Industry Ln', NULL, 'New York', 'NY', '10002', '1977-10-14', '229-42-9426', 'oshealy@hotmail.com', '9195333762', '16841');
INSERT INTO `account_info` VALUES ('Cyndy', 'Goldammer', '170 Wyoming Ave', NULL, 'Burnsville', 'MN', '55337', '1987-06-18', '484-79-7413', 'cgoldammer@cox.net', '8088927943', '17032');
INSERT INTO `account_info` VALUES ('Albina', 'Glick', '4 Ralph Ct', NULL, 'Dunellen', 'NJ', '8812', '1993-01-31', '798-85-9268', 'albina@glick.com', '2017096245', '17079');
INSERT INTO `account_info` VALUES ('Micaela', 'Rhymes', '20932 Hedley St', NULL, 'Concord', 'CA', '94520', '1978-10-04', '368-34-6459', 'micaela_rhymes@gmail.com', '6505285783', '17178');
INSERT INTO `account_info` VALUES ('Roxane', 'Campain', '1048 Main St', NULL, 'Fairbanks', 'AK', '99708', '1964-04-26', '981-01-6885', 'roxane@hotmail.com', '9134134604', '17447');
INSERT INTO `account_info` VALUES ('Carin', 'Deleo', '1844 Southern Blvd', NULL, 'Little Rock', 'AR', '72202', '1963-08-07', '688-43-5741', 'cdeleo@deleo.com', '5162121915', '17478');
INSERT INTO `account_info` VALUES ('Shenika', 'Seewald', '4 Otis St', NULL, 'Van Nuys', 'CA', '91405', '1971-11-29', '704-75-2483', 'shenika@gmail.com', '2159348655', '17504');
INSERT INTO `account_info` VALUES ('Cory', 'Gibes', '83649 W Belmont Ave', NULL, 'San Gabriel', 'CA', '91776', '1985-03-02', '743-77-5189', 'cory.gibes@gmail.com', '6508031936', '17538');
INSERT INTO `account_info` VALUES ('Fatima', 'Saylors', '2 Lighthouse Ave', NULL, 'Hopkins', 'MN', '55343', '1942-09-14', '669-94-4317', 'fsaylors@saylors.org', '9077411044', '17561');
INSERT INTO `account_info` VALUES ('Marguerita', 'Hiatt', '82 N Highway 67', NULL, 'Oakley', 'CA', '94561', '1950-07-23', '760-82-4747', 'marguerita.hiatt@gmail.com', '2019711638', '17593');
INSERT INTO `account_info` VALUES ('Carma', 'Vanheusen', '68556 Central Hwy', NULL, 'San Leandro', 'CA', '94577', '1950-08-16', '656-99-3419', 'carma@cox.net', '4087038505', '17777');
INSERT INTO `account_info` VALUES ('Sage', 'Wieser', '5 Boston Ave', '#88', 'Sioux Falls', 'SD', '57105', '1975-06-10', '965-59-9766', 'sage_wieser@cox.net', '4087523500', '18054');
INSERT INTO `account_info` VALUES ('Audra', 'Kohnert', '134 Lewis Rd', NULL, 'Nashville', 'TN', '37211', '1976-06-03', '568-58-1173', 'audra@kohnert.com', '2544634368', '18067');
INSERT INTO `account_info` VALUES ('Maurine', 'Yglesias', '59 Shady Ln', '#53', 'Milwaukee', 'WI', '53214', '1956-09-17', '673-41-9947', 'maurine_yglesias@yglesias.com', '3037247371', '18230');
INSERT INTO `account_info` VALUES ('Lenna', 'Paprocki', '639 Main St', NULL, 'Anchorage', 'AK', '99501', '1986-02-11', '581-28-7051', 'lpaprocki@hotmail.com', '8566368749', '18393');
INSERT INTO `account_info` VALUES ('Bok', 'Isaacs', '6 Gilson St', NULL, 'Bronx', 'NY', '10468', '1970-10-01', '335-29-2756', 'bok.isaacs@aol.com', '3217494981', '19444');
INSERT INTO `account_info` VALUES ('Kiley', 'Caldarera', '25 E 75th St', '#69', 'Los Angeles', 'CA', '90034', '1955-09-27', '322-92-7570', 'kiley.caldarera@aol.com', '6313353414', '19485');
INSERT INTO `account_info` VALUES ('Marti', 'Maybury', '4 Warehouse Point Rd', '#7', 'Chicago', 'IL', '60638', '1955-03-22', '990-69-7499', 'marti.maybury@yahoo.com', '5085844279', '19505');
INSERT INTO `account_info` VALUES ('Glory', 'Kulzer', '55892 Jacksonville Rd', NULL, 'Owings Mills', 'MD', '21117', '1977-02-23', '252-73-5298', 'gkulzer@kulzer.org', '3054208970', '19517');
INSERT INTO `account_info` VALUES ('Alease', 'Buemi', '4 Webbs Chapel Rd', NULL, 'Boulder', 'CO', '80303', '1990-06-01', '335-82-1590', 'alease@buemi.com', '5047105840', '19820');
INSERT INTO `account_info` VALUES ('Layla', 'Springe', '229 N Forty Driv', NULL, 'New York', 'NY', '10011', '1950-02-26', '236-12-1563', 'layla.springe@cox.net', '9148552115', '19855');
INSERT INTO `account_info` VALUES ('Lindsey', 'Dilello', '52777 Leaders Heights Rd', NULL, 'Ontario', 'CA', '91761', '1995-03-29', '387-05-9052', 'lindsey.dilello@hotmail.com', '6509335072', '19862');
INSERT INTO `account_info` VALUES ('Tammara', 'Wardrip', '4800 Black Horse Pike', NULL, 'Burlingame', 'CA', '94010', '1948-03-23', '239-44-7066', 'twardrip@cox.net', '2152551641', '19939');
INSERT INTO `account_info` VALUES ('Kallie', 'Blackwood', '701 S Harrison Rd', NULL, 'San Francisco', 'CA', '94104', '1970-04-16', '700-68-2667', 'kallie.blackwood@gmail.com', '2088625339', '19990');
INSERT INTO `account_info` VALUES ('Thurman', 'Manno', '9387 Charcot Ave', NULL, 'Absecon', 'NJ', '8201', '1953-09-01', '777-54-5408', 'thurman.manno@yahoo.com', '9733101634', '20011');
INSERT INTO `account_info` VALUES ('Chantell', 'Maynerich', '2023 Greg St', NULL, 'Saint Paul', 'MN', '55101', '1995-06-29', '261-88-8538', 'chantell@yahoo.com', '5013081040', '20253');
INSERT INTO `account_info` VALUES ('Emerson', 'Bowley', '762 S Main St', NULL, 'Madison', 'WI', '53711', '1981-05-18', '607-56-8700', 'emerson.bowley@bowley.org', '3234532780', '20565');
INSERT INTO `account_info` VALUES ('Rory', 'Papasergi', '83 County Road 437 ', '#8581', 'Clarks Summit', 'PA', '18411', '1950-03-15', '670-88-3233', 'rpapasergi@cox.net', '5184972940', '20598');
INSERT INTO `account_info` VALUES ('Solange', 'Shinko', '426 Wolf St', NULL, 'Metairie', 'LA', '70002', '1986-02-28', '400-86-4353', 'solange@shinko.com', '2128601579', '20669');
INSERT INTO `account_info` VALUES ('Fernanda', 'Jillson', '60480 Old Us Highway 51', NULL, 'Preston', 'MD', '21655', '1990-06-29', '292-17-7679', 'fjillson@aol.com', '4149592540', '20717');
INSERT INTO `account_info` VALUES ('Francine', 'Vocelka', '366 South Dr', NULL, 'Las Cruces', 'NM', '88011', '1962-04-30', '288-18-1881', 'francine_vocelka@vocelka.com', '6148019788', '20759');
INSERT INTO `account_info` VALUES ('Cheryl', 'Haroldson', '92 Main St', NULL, 'Atlantic City', 'NJ', '8401', '1951-01-04', '715-53-3475', 'cheryl@haroldson.org', '5169485768', '20908');
INSERT INTO `account_info` VALUES ('Elza', 'Lipke', '6794 Lake Dr E', NULL, 'Newark', 'NJ', '7104', '1955-07-20', '943-94-1781', 'elza@yahoo.com', '7734465569', '21152');
INSERT INTO `account_info` VALUES ('Moon', 'Parlato', '74989 Brandon St', NULL, 'Wellsville', 'NY', '14895', '1973-02-12', '305-56-6141', 'moon@yahoo.com', '7403438575', '21248');
INSERT INTO `account_info` VALUES ('Kiles', 'Teresa', '54 E 75th St', '#69', 'Los Angeles', 'CA', '90034', '1955-09-27', '322-92-1333', 'tkiles54@aol.com', '6313353414', '21333');
INSERT INTO `account_info` VALUES ('Celeste', 'Korando', '7 W Pinhook Rd', NULL, 'Lynbrook', 'NY', '11563', '1943-10-11', '805-82-1942', 'ckorando@hotmail.com', '3362435659', '21410');
INSERT INTO `account_info` VALUES ('Tyra', 'Shields', '3 Fort Worth Ave', NULL, 'Philadelphia', 'PA', '19106', '1944-10-21', '372-84-7538', 'tshields@gmail.com', '3305375358', '21455');
INSERT INTO `account_info` VALUES ('Penney', 'Weight', '18 Fountain St', NULL, 'Anchorage', 'AK', '99515', '1981-08-26', '338-99-9898', 'penney_weight@aol.com', '2126749610', '21566');
INSERT INTO `account_info` VALUES ('Van', 'Shire', '90131 J St', NULL, 'Pittstown', 'NJ', '8867', '1955-08-10', '974-79-4897', 'van.shire@shire.com', '9732452133', '21777');
INSERT INTO `account_info` VALUES ('Donte', 'Kines', '3 Aspen St', NULL, 'Worcester', 'MA', '1602', '1970-08-04', '686-36-8791', 'dkines@hotmail.com', '6089767199', '21795');
INSERT INTO `account_info` VALUES ('Carmela', 'Cookey', '9 Murfreesboro Rd', NULL, 'Chicago', 'IL', '60623', '1970-08-21', '874-38-6574', 'ccookey@cookey.org', '9256347158', '21994');
INSERT INTO `account_info` VALUES ('Doe', 'John', '1053 Hi Point St', NULL, 'Los Angeles', 'CA', '90035', '1979-03-03', '122-62-2229', 'jdoe222@gmail.com', '7134912222', '22222');
INSERT INTO `account_info` VALUES ('Talia', 'Riopelle', '1 N Harlem Ave', '#9', 'Orange', 'NJ', '7050', '1968-08-13', '861-01-3917', 'talia_riopelle@aol.com', '5708677489', '22239');
INSERT INTO `account_info` VALUES ('Lai', 'Gato', '37 Alabama Ave', NULL, 'Evanston', 'IL', '60201', '1939-04-05', '719-07-5341', 'lai.gato@gato.org', '3107747643', '22367');
INSERT INTO `account_info` VALUES ('Beatriz', 'Corrington', '481 W Lemon St', NULL, 'Middleboro', 'MA', '2346', '1952-08-30', '869-73-1483', 'beatriz@yahoo.com', '9088778409', '22782');
INSERT INTO `account_info` VALUES ('Mattie', 'Poquette', '73 State Road 434 E', NULL, 'Phoenix', 'AZ', '85013', '1941-02-22', '709-90-6312', 'mattie@aol.com', '9565376195', '22824');
INSERT INTO `account_info` VALUES ('Jose', 'Stockham', '128 Bransten Rd', NULL, 'New York', 'NY', '10011', '1988-08-04', '517-23-7218', 'jose@yahoo.com', '5049799175', '22965');
INSERT INTO `account_info` VALUES ('Johnetta', 'Abdallah', '1088 Pinehurst St', NULL, 'Chapel Hill', 'NC', '27514', '1982-06-06', '445-46-4905', 'johnetta_abdallah@aol.com', '4153152761', '22969');
INSERT INTO `account_info` VALUES ('Evangelina', 'Radde', '992 Civic Center Dr', NULL, 'Philadelphia', 'PA', '19123', '1996-10-06', '323-93-9629', 'evangelina@aol.com', '5125875746', '23202');
INSERT INTO `account_info` VALUES ('Claribel', 'Varriano', '6 Harry L Dr', '#6327', 'Perrysburg', 'OH', '43551', '1958-11-24', '337-41-6133', 'claribel_varriano@cox.net', '9739433423', '23312');
INSERT INTO `account_info` VALUES ('Daren', 'Weirather', '9 N College Ave', '#3', 'Milwaukee', 'WI', '53216', '1965-04-03', '704-56-9185', 'dweirather@aol.com', '6154067854', '23427');
INSERT INTO `account_info` VALUES ('Elvera', 'Benimadho', '99385 Charity St', '#840', 'San Jose', 'CA', '95110', '1975-12-31', '841-49-4823', 'elvera.benimadho@cox.net', '9078705536', '23697');
INSERT INTO `account_info` VALUES ('Kanisha', 'Waycott', '5 Tomahawk Dr', NULL, 'Los Angeles', 'CA', '90006', '1948-06-30', '559-78-9126', 'kanisha_waycott@yahoo.com', '6173995124', '23777');
INSERT INTO `account_info` VALUES ('Ilene', 'Eroman', '2853 S Central Expy', NULL, 'Glen Burnie', 'MD', '21061', '1974-01-24', '409-19-2830', 'ilene.eroman@hotmail.com', '8143935571', '23800');
INSERT INTO `account_info` VALUES ('Bobbye', 'Rhym', '30 W 80th St', '#1995', 'San Carlos', 'CA', '94070', '1989-06-04', '802-79-3430', 'brhym@rhym.com', '9192259345', '23991');
INSERT INTO `account_info` VALUES ('Rozella', 'Ostrosky', '17 Morena Blvd', NULL, 'Camarillo', 'CA', '93012', '1973-12-27', '942-80-9716', 'rozella.ostrosky@ostrosky.com', '2126758570', '24029');
INSERT INTO `account_info` VALUES ('Natalie', 'Fern', '7140 University Ave', NULL, 'Rock Springs', 'WY', '82901', '1955-06-09', '785-44-6111', 'natalie.fern@hotmail.com', '3177225066', '24124');
INSERT INTO `account_info` VALUES ('Tiffiny', 'Steffensmeier', '32860 Sierra Rd', NULL, 'Miami', 'FL', '33133', '1995-04-07', '379-33-2544', 'tiffiny_steffensmeier@cox.net', '5084298576', '24379');
INSERT INTO `account_info` VALUES ('Laurel', 'Reitler', '6 Kains Ave', NULL, 'Baltimore', 'MD', '21215', '1994-08-23', '484-89-6813', 'laurel_reitler@reitler.com', '5858668313', '24493');
INSERT INTO `account_info` VALUES ('Howard', 'Paulas', '866 34th Ave', NULL, 'Denver', 'CO', '80231', '1940-01-10', '625-39-3954', 'hpaulas@gmail.com', '8083153077', '24616');
INSERT INTO `account_info` VALUES ('Lisha', 'Centini', '64 5th Ave', '#1153', 'Mc Lean', 'VA', '22102', '1948-04-12', '538-75-7288', 'lisha@centini.org', '3077048713', '24732');
INSERT INTO `account_info` VALUES ('Dierdre', 'Yum', '63381 Jenks Ave', NULL, 'Philadelphia', 'PA', '19134', '1989-06-02', '952-49-6267', 'dyum@yahoo.com', '6515912583', '25087');
INSERT INTO `account_info` VALUES ('Pamella', 'Schmierer', '5161 Dorsett Rd', NULL, 'Homestead', 'FL', '33030', '1971-05-30', '443-44-9995', 'pamella.schmierer@schmierer.org', '9736492922', '25368');
INSERT INTO `account_info` VALUES ('Tonette', 'Wenner', '4545 Courthouse Rd', NULL, 'Westbury', 'NY', '11590', '1968-12-23', '419-94-8007', 'twenner@aol.com', '9088776135', '25423');
INSERT INTO `account_info` VALUES ('Gearldine', 'Gellinger', '4 Bloomfield Ave', NULL, 'Irving', 'TX', '75061', '1939-10-17', '997-55-7393', 'gearldine_gellinger@gellinger.com', '4103875260', '25471');
INSERT INTO `account_info` VALUES ('Stephaine', 'Vinning', '3717 Hamann Industrial Pky', NULL, 'San Francisco', 'CA', '94104', '1972-04-20', '451-69-7394', 'stephaine@cox.net', '9786976263', '25634');
INSERT INTO `account_info` VALUES ('Mitsue', 'Tollner', '7 Eads St', NULL, 'Chicago', 'IL', '60632', '1985-03-31', '726-64-8750', 'mitsue_tollner@yahoo.com', '4195032484', '25643');
INSERT INTO `account_info` VALUES ('Karl', 'Klonowski', '76 Brooks St', '#9', 'Flemington', 'NJ', '8822', '1955-12-30', '879-61-5480', 'karl_klonowski@yahoo.com', '6108145533', '25770');
INSERT INTO `account_info` VALUES ('Novella', 'Degroot', '303 N Radcliffe St', NULL, 'Hilo', 'HI', '96720', '1989-09-25', '726-07-8083', 'novella_degroot@degroot.org', '2159643284', '26045');
INSERT INTO `account_info` VALUES ('Carissa', 'Batman', '12270 Caton Center Dr', NULL, 'Eugene', 'OR', '97401', '1977-02-16', '276-90-6166', 'carissa.batman@yahoo.com', '5135087371', '26208');
INSERT INTO `account_info` VALUES ('Sylvia', 'Cousey', '287 Youngstown Warren Rd', NULL, 'Hampstead', 'MD', '21074', '1945-11-23', '384-25-9142', 'sylvia_cousey@cousey.org', '8642563620', '26238');
INSERT INTO `account_info` VALUES ('Scarlet', 'Cartan', '9390 S Howell Ave', NULL, 'Albany', 'GA', '31701', '1963-01-22', '813-24-3598', 'scarlet.cartan@yahoo.com', '8082156832', '26263');
INSERT INTO `account_info` VALUES ('James', 'Butt', '6649 N Blue Gum St', NULL, 'New Orleans', 'LA', '70116', '1965-07-29', '508-60-8859', 'jbutt@gmail.com', '7134926037', '26522');
INSERT INTO `account_info` VALUES ('Alishia', 'Sergi', '2742 Distribution Way', NULL, 'New York', 'NY', '10025', '1942-01-22', '981-71-5987', 'asergi@gmail.com', '7329247882', '26603');
INSERT INTO `account_info` VALUES ('Yuki', 'Whobrey', '1 State Route 27', NULL, 'Taylor', 'MI', '48180', '1978-05-06', '324-80-4342', 'yuki_whobrey@aol.com', '4146619598', '26607');
INSERT INTO `account_info` VALUES ('Laticia', 'Merced', '72 Mannix Dr', NULL, 'Cincinnati', 'OH', '45203', '1954-07-15', '643-93-7552', 'lmerced@gmail.com', '6095187697', '26669');
INSERT INTO `account_info` VALUES ('Ammie', 'Corrio', '74874 Atlantic Ave', NULL, 'Columbus', 'OH', '43215', '1975-01-10', '865-62-8550', 'ammie@corrio.com', '9363363951', '26777');
INSERT INTO `account_info` VALUES ('Gladys', 'Rim', '322 New Horizon Blvd', NULL, 'Milwaukee', 'WI', '53207', '1951-12-21', '249-34-8665', 'gladys.rim@rim.org', '9313139635', '26856');
INSERT INTO `account_info` VALUES ('Lucina', 'Lary', '8597 W National Ave', NULL, 'Cocoa', 'FL', '32922', '1970-03-25', '295-44-4351', 'lucina_lary@cox.net', '9084092890', '26955');
INSERT INTO `account_info` VALUES ('Yolando', 'Luczki', '422 E 21st St', NULL, 'Syracuse', 'NY', '13214', '1993-01-22', '521-52-1366', 'yolando@cox.net', '3172341135', '26995');
INSERT INTO `account_info` VALUES ('Willow', 'Kusko', '90991 Thorburn Ave', NULL, 'New York', 'NY', '10011', '1955-05-18', '719-41-7284', 'wkusko@yahoo.com', '4106691642', '27014');
INSERT INTO `account_info` VALUES ('Vallie', 'Mondella', '74 W College St', NULL, 'Boise', 'ID', '83707', '1948-05-09', '620-25-4907', 'vmondella@mondella.com', '4109149018', '27143');
INSERT INTO `account_info` VALUES ('Devorah', 'Chickering', '31 Douglas Blvd', '#950', 'Clovis', 'NM', '88101', '1963-06-03', '668-83-1637', 'devorah@hotmail.com', '9739273447', '27348');
INSERT INTO `account_info` VALUES ('Twana', 'Felger', '1 Commerce Way', NULL, 'Portland', 'OR', '97224', '1954-04-21', '435-23-6883', 'twana.felger@felger.org', '5165092347', '27486');
INSERT INTO `account_info` VALUES ('Cecily', 'Hollack', '59 N Groesbeck Hwy', NULL, 'Austin', 'TX', '78731', '1944-11-07', '506-77-1828', 'cecily@hollack.org', '7322341546', '27694');
INSERT INTO `account_info` VALUES ('Stephen', 'Emigh', '3777 E Richmond St', '#900', 'Akron', 'OH', '44302', '1949-10-11', '665-64-6569', 'stephen_emigh@hotmail.com', '8477287286', '28042');
INSERT INTO `account_info` VALUES ('Nelida', 'Sawchuk', '3 State Route 35 S', NULL, 'Paramus', 'NJ', '7652', '1950-01-03', '878-30-4646', 'nelida@gmail.com', '4157676596', '28064');
INSERT INTO `account_info` VALUES ('Delisa', 'Crupi', '47565 W Grand Ave', NULL, 'Newark', 'NJ', '7105', '1954-04-17', '810-62-3331', 'delisa.crupi@crupi.com', '4105204832', '28078');
INSERT INTO `account_info` VALUES ('Minna', 'Amigon', '2371 Jerrold Ave', NULL, 'Kulpsville', 'PA', '19443', '1947-01-22', '836-42-6534', 'minna_amigon@yahoo.com', '4106558723', '28226');
INSERT INTO `account_info` VALUES ('Arminda', 'Parvis', '1 Huntwood Ave', NULL, 'Phoenix', 'AZ', '85017', '1975-11-17', '568-45-7893', 'arminda@parvis.com', '2123328435', '28382');
INSERT INTO `account_info` VALUES ('Elly', 'Morocco', '7 W 32nd St', NULL, 'Erie', 'PA', '16502', '1958-09-04', '839-94-7882', 'elly_morocco@gmail.com', '9077979628', '28388');
INSERT INTO `account_info` VALUES ('Viva', 'Toelkes', '4284 Dorigo Ln', NULL, 'Chicago', 'IL', '60647', '1973-02-15', '202-60-6544', 'viva.toelkes@gmail.com', '9733542040', '28440');
INSERT INTO `account_info` VALUES ('Maryann', 'Royster', '74 S Westgate St', NULL, 'Albany', 'NY', '12204', '1963-02-27', '959-99-6560', 'mroyster@royster.com', '9723039197', '28658');
INSERT INTO `account_info` VALUES ('Youlanda', 'Schemmer', '2881 Lewis Rd', NULL, 'Prineville', 'OR', '97754', '1985-03-27', '391-95-5844', 'youlanda@aol.com', '7854637829', '29042');
INSERT INTO `account_info` VALUES ('Larae', 'Gudroe', '6651 Municipal Rd', NULL, 'Houma', 'LA', '70360', '1961-10-01', '878-15-1123', 'larae_gudroe@gmail.com', '2153253042', '29075');
INSERT INTO `account_info` VALUES ('Hillary', 'Skulski', '9 Wales Rd Ne', '#914', 'Homosassa', 'FL', '34448', '1984-12-04', '418-85-4593', 'hillary.skulski@aol.com', '3105792907', '29162');
INSERT INTO `account_info` VALUES ('Teri', 'Ennaco', '99 Tank Farm Rd', NULL, 'Hazleton', 'PA', '18201', '1990-10-11', '391-34-8484', 'tennaco@gmail.com', '4087585015', '29402');
INSERT INTO `account_info` VALUES ('Malinda', 'Hochard', '55 Riverside Ave', NULL, 'Indianapolis', 'IN', '46202', '1947-08-29', '899-90-9751', 'malinda.hochard@yahoo.com', '5105037169', '29437');
INSERT INTO `account_info` VALUES ('Edna', 'Miceli', '555 Main St', NULL, 'Erie', 'PA', '16502', '1945-01-17', '201-67-5659', 'emiceli@miceli.org', '3053859695', '29455');
INSERT INTO `account_info` VALUES ('Tawna', 'Buvens', '3305 Nabell Ave', '#679', 'New York', 'NY', '10009', '1947-09-13', '236-64-4160', 'tawna@gmail.com', '4147481374', '29833');
INSERT INTO `account_info` VALUES ('Lavera', 'Perin', '678 3rd Ave', NULL, 'Miami', 'FL', '33196', '1948-10-13', '573-59-1846', 'lperin@perin.org', '9072314722', '30100');
INSERT INTO `account_info` VALUES ('Rolande', 'Spickerman', '65 W Maple Ave', NULL, 'Pearl City', 'HI', '96782', '1965-09-08', '974-06-4560', 'rolande.spickerman@spickerman.com', '7188093762', '30340');
INSERT INTO `account_info` VALUES ('Sabra', 'Uyetake', '98839 Hawthorne Blvd', '#6101', 'Columbia', 'SC', '29201', '1961-05-18', '577-26-5158', 'sabra@uyetake.org', '9318756644', '30483');
INSERT INTO `account_info` VALUES ('Kimbery', 'Madarang', '798 Lund Farm Way', NULL, 'Rockaway', 'NJ', '7866', '1976-06-09', '468-40-1341', 'kimbery_madarang@cox.net', '3036234241', '30772');
INSERT INTO `account_info` VALUES ('Junita', 'Brideau', '6 S Broadway St', NULL, 'Cedar Grove', 'NJ', '7009', '1942-02-27', '658-23-9212', 'jbrideau@aol.com', '7734944195', '30796');
INSERT INTO `account_info` VALUES ('Blondell', 'Pugh', '201 Hawk Ct', NULL, 'Providence', 'RI', '2904', '1958-12-27', '820-76-3572', 'bpugh@aol.com', '2152119589', '30808');
INSERT INTO `account_info` VALUES ('Alisha', 'Slusarski', '3273 State St', NULL, 'Middlesex', 'NJ', '8846', '1949-08-29', '537-64-6119', 'alisha@slusarski.com', '5189667987', '30881');
INSERT INTO `account_info` VALUES ('Louisa', 'Cronauer', '524 Louisiana Ave Nw', NULL, 'San Leandro', 'CA', '94577', '1951-04-19', '396-91-3422', 'louisa@cronauer.com', '3033014946', '30885');
INSERT INTO `account_info` VALUES ('Bulah', 'Padilla', '8927 Vandever Ave', NULL, 'Waco', 'TX', '76707', '1952-06-05', '863-85-5959', 'bulah_padilla@hotmail.com', '9516453605', '30942');
INSERT INTO `account_info` VALUES ('Latrice', 'Tolfree', '81 Norris Ave', '#525', 'Ronkonkoma', 'NY', '11779', '1994-02-18', '637-05-7034', 'latrice.tolfree@hotmail.com', '9858907262', '31010');
INSERT INTO `account_info` VALUES ('Jennifer', 'Fallick', '44 58th St', NULL, 'Wheeling', 'IL', '60090', '1967-03-23', '560-94-2916', 'jfallick@yahoo.com', '7755018109', '31092');
INSERT INTO `account_info` VALUES ('Art', 'Venere', '8 W Cerritos Ave ', '#54', 'Bridgeport', 'NJ', '8014', '1947-11-10', '793-96-7688', 'art@venere.org', '8102929388', '31094');
INSERT INTO `account_info` VALUES ('Meaghan', 'Garufi', '69734 E Carrillo St', NULL, 'Mc Minnville', 'TN', '37110', '1946-12-13', '432-24-8074', 'meaghan@hotmail.com', '6022774385', '31452');
INSERT INTO `account_info` VALUES ('Lettie', 'Isenhower', '70 W Main St', NULL, 'Beachwood', 'OH', '44122', '1980-05-03', '475-16-9431', 'lettie_isenhower@yahoo.com', '5109933758', '31481');
INSERT INTO `account_info` VALUES ('Valentine', 'Gillian', '775 W 17th St', NULL, 'San Antonio', 'TX', '78204', '1945-09-30', '730-09-4476', 'valentine_gillian@gmail.com', '8058326163', '31488');
INSERT INTO `account_info` VALUES ('Kati', 'Rulapaugh', '6980 Dorsett Rd', NULL, 'Abilene', 'KS', '67410', '1954-08-05', '445-65-4320', 'kati.rulapaugh@hotmail.com', '2108129597', '31593');
INSERT INTO `account_info` VALUES ('Rosio', 'Cork', '4 10th St W', NULL, 'High Point', 'NC', '27263', '1968-09-27', '799-36-8050', 'rosio.cork@gmail.com', '9523349408', '31815');
INSERT INTO `account_info` VALUES ('Sue', 'Kownacki', '2 Se 3rd Ave', NULL, 'Mesquite', 'TX', '75149', '1992-05-20', '918-28-4777', 'sue@aol.com', '8144602655', '31844');
INSERT INTO `account_info` VALUES ('Josephine', 'Darakjy', '4 B Blue Ridge Blvd', NULL, 'Brighton', 'MI', '48116', '1975-03-01', '205-81-3006', 'josephine_darakjy@darakjy.org', '5046218927', '31938');
INSERT INTO `account_info` VALUES ('Brandon', 'Callaro', '7 Benton Dr', NULL, 'Honolulu', 'HI', '96819', '1965-05-01', '750-37-1076', 'brandon_callaro@hotmail.com', '8052753566', '31957');
INSERT INTO `account_info` VALUES ('Jina', 'Briddick', '38938 Park Blvd', NULL, 'Boston', 'MA', '2128', '1949-01-17', '903-17-8397', 'jina_briddick@briddick.com', '9527682416', '32104');
INSERT INTO `account_info` VALUES ('Stephaine', 'Barfield', '47154 Whipple Ave Nw', NULL, 'Gardena', 'CA', '90247', '1958-06-03', '321-52-1088', 'stephaine@barfield.com', '8179147518', '32130');
INSERT INTO `account_info` VALUES ('Blair', 'Malet', '209 Decker Dr', NULL, 'Philadelphia', 'PA', '19132', '1988-11-21', '952-98-9755', 'bmalet@yahoo.com', '6083367444', '32218');
INSERT INTO `account_info` VALUES ('Rolland', 'Francescon', '2726 Charcot Ave', NULL, 'Paterson', 'NJ', '7501', '1958-09-15', '609-51-4228', 'rolland@cox.net', '9312738709', '32240');
INSERT INTO `account_info` VALUES ('Devora', 'Perez', '72868 Blackington Ave', NULL, 'Oakland', 'CA', '94606', '1992-01-15', '884-06-8032', 'devora_perez@perez.org', '9096399887', '32307');
INSERT INTO `account_info` VALUES ('Carmelina', 'Lindall', '2664 Lewis Rd', NULL, 'Littleton', 'CO', '80126', '1986-07-17', '938-91-5916', 'carmelina_lindall@lindall.com', '5124863817', '32407');
INSERT INTO `account_info` VALUES ('Myra', 'Munns', '461 Prospect Pl', '#316', 'Euless', 'TX', '76040', '1977-01-14', '246-73-6741', 'mmunns@cox.net', '2166577668', '32489');
INSERT INTO `account_info` VALUES ('Leota', 'Dilliard', '7 W Jackson Blvd', NULL, 'San Jose', 'CA', '95111', '1979-02-23', '873-25-6496', 'leota@hotmail.com', '7735736914', '32628');
INSERT INTO `account_info` VALUES ('Arlene', 'Klusman', '3 Secor Rd', NULL, 'New Orleans', 'LA', '70112', '1944-12-15', '726-39-2318', 'arlene_klusman@gmail.com', '7032353937', '32764');
INSERT INTO `account_info` VALUES ('Nana', 'Wrinkles', '6 Van Buren St', NULL, 'Mount Vernon', 'NY', '10553', '1995-09-17', '669-72-7713', 'nana@aol.com', '4102099545', '32779');
INSERT INTO `account_info` VALUES ('Ernie', 'Stenseth', '45 E Liberty St', NULL, 'Ridgefield Park', 'NJ', '7660', '1976-01-02', '668-59-1234', 'ernie_stenseth@aol.com', '5059773911', '32922');
INSERT INTO `account_info` VALUES ('Lorrie', 'Nestle', '39 S 7th St', NULL, 'Tullahoma', 'TN', '37388', '1980-05-05', '996-30-7551', 'lnestle@hotmail.com', '2124029216', '32946');
INSERT INTO `account_info` VALUES ('Fannie', 'Lungren', '17 Us Highway 111', NULL, 'Round Rock', 'TX', '78664', '1975-05-25', '759-82-7734', 'fannie.lungren@yahoo.com', '2086492373', '32977');
INSERT INTO `account_info` VALUES ('Dyan', 'Oldroyd', '7219 Woodfield Rd', NULL, 'Overland Park', 'KS', '66204', '1982-08-12', '354-61-8954', 'doldroyd@aol.com', '5415488197', '33013');
INSERT INTO `account_info` VALUES ('Allene', 'Iturbide', '1 Central Ave', NULL, 'Stevens Point', 'WI', '54481', '1985-02-24', '771-35-1835', 'allene_iturbide@cox.net', '7326583154', '33152');
INSERT INTO `account_info` VALUES ('Annabelle', 'Boord', '523 Marquette Ave', NULL, 'Concord', 'MA', '1742', '1977-09-19', '245-76-3666', 'annabelle.boord@cox.net', '5106779785', '33168');
INSERT INTO `account_info` VALUES ('Doe', 'Jane', '5905 Broadway St', NULL, 'New York', 'NY', '10463', '1982-01-02', '133-63-3339', 'jdoe333@gmail.com', '7134913333', '33333');
INSERT INTO `account_info` VALUES ('Lizette', 'Stem', '501 N 19th Ave', NULL, 'Cherry Hill', 'NJ', '8002', '1951-10-07', '214-91-5566', 'lizette.stem@aol.com', '3153044759', '33452');
INSERT INTO `account_info` VALUES ('Abel', 'Monica', '13727 St  Rt 17m M', NULL, 'Middle Island', 'NY', '11953', '1965-12-12', '282-99-2555', 'mabel99@gmail.com', '2158741229', '33555');
INSERT INTO `account_info` VALUES ('Delmy', 'Ahle', '65895 S 16th St', NULL, 'Providence', 'RI', '2909', '1987-02-01', '694-83-9579', 'delmy.ahle@hotmail.com', '8184234007', '33653');
INSERT INTO `account_info` VALUES ('Veronika', 'Inouye', '6 Greenleaf Ave', NULL, 'San Jose', 'CA', '95111', '1996-12-23', '357-08-2396', 'vinouye@aol.com', '6105453615', '33717');
INSERT INTO `account_info` VALUES ('Timothy', 'Mulqueen', '44 W 4th St', NULL, 'Staten Island', 'NY', '10309', '1942-10-07', '895-27-9722', 'timothy_mulqueen@mulqueen.org', '5059758559', '33788');
INSERT INTO `account_info` VALUES ('Graciela', 'Ruta', '98 Connecticut Ave Nw', NULL, 'Chagrin Falls', 'OH', '44023', '1956-05-03', '369-95-8546', 'gruta@cox.net', '3104985651', '33945');
INSERT INTO `account_info` VALUES ('Bernardo', 'Figeroa', '386 9th Ave N', NULL, 'Conroe', 'TX', '77301', '1955-04-13', '858-14-2437', 'bfigeroa@aol.com', '2125824976', '34454');
INSERT INTO `account_info` VALUES ('Oretha', 'Menter', '8 County Center Dr', '#647', 'Boston', 'MA', '2210', '1948-11-02', '966-27-9200', 'oretha_menter@yahoo.com', '2297353378', '34729');
INSERT INTO `account_info` VALUES ('Joesph', 'Degonia', '2887 Knowlton St', '#5435', 'Berkeley', 'CA', '94710', '1991-01-05', '824-68-1427', 'joesph_degonia@degonia.org', '2122603151', '34882');
INSERT INTO `account_info` VALUES ('Benton', 'Skursky', '47939 Porter Ave', NULL, 'Gardena', 'CA', '90248', '1975-06-26', '289-76-4017', 'benton.skursky@aol.com', '4195444900', '35903');
INSERT INTO `account_info` VALUES ('Clay', 'Hoa', '73 Saint Ann St', '#86', 'Reno', 'NV', '89502', '1977-04-13', '948-54-3033', 'choa@hoa.org', '8084774775', '35934');
INSERT INTO `account_info` VALUES ('Theola', 'Frey', '54169 N Main St', NULL, 'Massapequa', 'NY', '11758', '1967-06-07', '277-80-2793', 'theola_frey@frey.com', '3105608022', '36086');
INSERT INTO `account_info` VALUES ('Tamar', 'Hoogland', '2737 Pistorio Rd ', '#9230', 'London', 'OH', '43140', '1969-08-18', '771-92-2761', 'tamar@hotmail.com', '9256473298', '36403');
INSERT INTO `account_info` VALUES ('Amber', 'Monarrez', '14288 Foster Ave', '#4121', 'Jenkintown', 'PA', '19046', '1954-10-18', '544-01-9522', 'amber_monarrez@monarrez.org', '5169686051', '36453');
INSERT INTO `account_info` VALUES ('Brock', 'Bolognia', '4486 W O St', '#1', 'New York', 'NY', '10003', '1963-10-21', '619-36-4722', 'bbolognia@yahoo.com', '2159079111', '36620');
INSERT INTO `account_info` VALUES ('Fletcher', 'Flosi', '394 Manchester Blvd', NULL, 'Rockford', 'IL', '61109', '1968-04-18', '733-27-4800', 'fletcher.flosi@yahoo.com', '3132887937', '36717');
INSERT INTO `account_info` VALUES ('Leatha', 'Hagele', '627 Walford Ave', NULL, 'Dallas', 'TX', '75227', '1939-04-28', '622-16-2635', 'lhagele@cox.net', '5035275274', '36827');
INSERT INTO `account_info` VALUES ('Herman', 'Demesa', '9 Norristown Rd', NULL, 'Troy', 'NY', '12180', '1960-07-31', '833-83-4886', 'hdemesa@cox.net', '5109553016', '36836');
INSERT INTO `account_info` VALUES ('Jamal', 'Vanausdal', '53075 Sw 152nd Ter', '#615', 'Monroe Township', 'NJ', '8831', '1946-11-11', '861-03-8266', 'jamal@vanausdal.org', '4019608259', '37096');
INSERT INTO `account_info` VALUES ('Green', 'Ruth', '128 Connecticut Ave Nw', NULL, 'Columbus', 'OH', '44023', '1956-05-03', '369-95-7222', 'ruth759@cox.net', '3104985651', '37222');
INSERT INTO `account_info` VALUES ('Abel', 'Maclead', '37275 St  Rt 17m M', NULL, 'Middle Island', 'NY', '11953', '1965-12-12', '282-99-7138', 'amaclead@gmail.com', '2158741229', '37226');
INSERT INTO `account_info` VALUES ('Bette', 'Nicka', '6 S 33rd St', NULL, 'Aston', 'PA', '19014', '1959-03-17', '550-22-5793', 'bette_nicka@cox.net', '8158282147', '37385');
INSERT INTO `account_info` VALUES ('Donette', 'Foller', '34 Center St', NULL, 'Hamilton', 'OH', '45011', '1939-06-11', '375-46-8304', 'donette.foller@cox.net', '9073854412', '37466');
INSERT INTO `account_info` VALUES ('Deeanna', 'Juhas', '14302 Pennsylvania Ave', NULL, 'Huntingdon Valley', 'PA', '19006', '1992-06-07', '879-39-2882', 'deeanna_juhas@gmail.com', '4014582547', '37500');
INSERT INTO `account_info` VALUES ('Sheridan', 'Zane', '2409 Alabama Rd', NULL, 'Riverside', 'CA', '92501', '1955-12-24', '217-14-7775', 'sheridan.zane@zane.com', '4199393613', '37616');
INSERT INTO `account_info` VALUES ('Kris', 'Marrier', '228 Runamuck Pl', '#2808', 'Baltimore', 'MD', '21224', '1973-03-25', '557-49-4226', 'kris@gmail.com', '6054142147', '37632');
INSERT INTO `account_info` VALUES ('Ty', 'Smith', '4646 Kaahumanu St', NULL, 'Hackensack', 'NJ', '7601', '1974-02-03', '748-18-6394', 'tsmith@aol.com', '6174185043', '37639');
INSERT INTO `account_info` VALUES ('Erick', 'Ferencz', '20 S Babcock St', NULL, 'Fairbanks', 'AK', '99712', '1978-08-12', '751-83-6541', 'erick.ferencz@aol.com', '3056067291', '38206');
INSERT INTO `account_info` VALUES ('Melissa', 'Wiklund', '61 13 Stoneridge', '#835', 'Findlay', 'OH', '45840', '1940-11-02', '859-36-7982', 'melissa@cox.net', '3123035453', '38256');
INSERT INTO `account_info` VALUES ('Eun', 'Coody', '84 Bloomfield Ave', NULL, 'Spartanburg', 'SC', '29301', '1989-11-14', '412-52-2233', 'eun@yahoo.com', '9735457355', '38303');
INSERT INTO `account_info` VALUES ('Simona', 'Morasca', '3 Mcauley Dr', NULL, 'Ashland', 'OH', '44805', '1968-01-12', '760-78-8845', 'simona@morasca.com', '5135701893', '38829');
INSERT INTO `account_info` VALUES ('Kerry', 'Theodorov', '6916 W Main St', NULL, 'Sacramento', 'CA', '95827', '1979-09-21', '613-88-4366', 'kerry.theodorov@gmail.com', '6319577624', '38915');
INSERT INTO `account_info` VALUES ('Chau', 'Kitzman', '429 Tiger Ln', NULL, 'Beverly Hills', 'CA', '90212', '1989-07-26', '492-15-1843', 'chau@gmail.com', '9729346914', '39184');
INSERT INTO `account_info` VALUES ('Arlette', 'Honeywell', '11279 Loytan St', NULL, 'Jacksonville', 'FL', '32254', '1986-12-17', '349-88-8033', 'ahoneywell@honeywell.com', '7183326527', '39236');
INSERT INTO `account_info` VALUES ('Xuan', 'Rochin', '2 Monroe St', NULL, 'San Mateo', 'CA', '94403', '1987-02-14', '704-48-4700', 'xuan@gmail.com', '2016721553', '39330');
INSERT INTO `account_info` VALUES ('Dark', 'Joseph', '7 B Blue Ridge Blvd', NULL, 'Brighton', 'MI', '48116', '1975-03-01', '205-81-3991', 'jdarky@darakjy.org', '5046218927', '43991');
INSERT INTO `account_info` VALUES ('Venn', 'Artie', '81 W Cerritos Ave ', '#54', 'Bridgeport', 'NJ', '8014', '1947-11-10', '793-96-4891', 'art@venere.org', '8102929388', '44891');
INSERT INTO `account_info` VALUES ('Paps', 'Lenord', '6391 Main St', NULL, 'Anchorage', 'AK', '99501', '1986-02-11', '581-28-6762', 'lenpaps@hotmail.com', '8566368749', '46762');
INSERT INTO `account_info` VALUES ('Fuller', 'Don', '345 Center St', NULL, 'Hamilton', 'OH', '45011', '1939-06-11', '375-46-3111', 'donniefuller.foller@cox.net', '9073854412', '53111');
INSERT INTO `account_info` VALUES ('Sam', 'Mirasca', '321 Mcauley Dr', NULL, 'Ashland', 'OH', '44805', '1968-01-12', '760-78-3222', 'smirasca@hotmail.com', '5135701893', '53222');
INSERT INTO `account_info` VALUES ('Mitchel', 'Tanner', '17 Eads St', NULL, 'Chicago', 'IL', '60632', '1985-03-31', '726-64-4566', 'mtanner@yahoo.com', '4195032484', '54566');
INSERT INTO `account_info` VALUES ('Smith', 'Dilliard', '3 W Jackson Blvd', NULL, 'San Jose', 'CA', '95111', '1979-02-23', '873-25-4722', 'sdillard@hotmail.com', '7735736914', '54722');
INSERT INTO `account_info` VALUES ('West', 'Anthony', '2152 Boston Ave', '#88', 'Sioux Falls', 'SD', '57105', '1975-06-10', '965-59-4891', 'west_anthony@cox.net', '4087523500', '54891');
INSERT INTO `account_info` VALUES ('Cris', 'Davis', '132 Runamuck Pl', '#2808', 'Baltimore', 'MD', '21224', '1973-03-25', '557-49-4992', 'chris@gmail.com', '6054142147', '54992');
INSERT INTO `account_info` VALUES ('Wilson', 'May', '7132 Jerrold Ave', NULL, 'Kulpsville', 'PA', '19443', '1947-01-22', '836-42-4999', 'may_wilson@yahoo.com', '4106558723', '54999');

SET FOREIGN_KEY_CHECKS = 1;
